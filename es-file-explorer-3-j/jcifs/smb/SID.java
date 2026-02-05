package jcifs.smb;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.UnicodeString;
import jcifs.dcerpc.msrpc.LsaPolicyHandle;
import jcifs.dcerpc.msrpc.MsrpcEnumerateAliasesInDomain;
import jcifs.dcerpc.msrpc.MsrpcGetMembersInAlias;
import jcifs.dcerpc.msrpc.MsrpcLookupSids;
import jcifs.dcerpc.msrpc.MsrpcQueryInformationPolicy;
import jcifs.dcerpc.msrpc.SamrAliasHandle;
import jcifs.dcerpc.msrpc.SamrDomainHandle;
import jcifs.dcerpc.msrpc.SamrPolicyHandle;
import jcifs.dcerpc.msrpc.lsarpc;
import jcifs.dcerpc.msrpc.samr;
import jcifs.dcerpc.rpc;
import jcifs.util.Encdec;
import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public class SID extends rpc.sid_t {
    public static SID CREATOR_OWNER = null;
    public static SID EVERYONE = null;
    public static final int SID_FLAG_RESOLVE_SIDS = 1;
    public static final int SID_TYPE_ALIAS = 4;
    public static final int SID_TYPE_DELETED = 6;
    public static final int SID_TYPE_DOMAIN = 3;
    public static final int SID_TYPE_DOM_GRP = 2;
    public static final int SID_TYPE_INVALID = 7;
    static final String[] SID_TYPE_NAMES = {"0", "User", "Domain group", "Domain", "Local group", "Builtin group", "Deleted", "Invalid", "Unknown"};
    public static final int SID_TYPE_UNKNOWN = 8;
    public static final int SID_TYPE_USER = 1;
    public static final int SID_TYPE_USE_NONE = 0;
    public static final int SID_TYPE_WKN_GRP = 5;
    public static SID SYSTEM;
    static Map sid_cache;
    String acctName;
    String domainName;
    NtlmPasswordAuthentication origin_auth;
    String origin_server;
    int type;

    static {
        EVERYONE = null;
        CREATOR_OWNER = null;
        SYSTEM = null;
        try {
            EVERYONE = new SID("S-1-1-0");
            CREATOR_OWNER = new SID("S-1-3-0");
            SYSTEM = new SID("S-1-5-18");
        } catch (SmbException e) {
        }
        sid_cache = new HashMap();
    }

    public SID(String str) {
        this.domainName = null;
        this.acctName = null;
        this.origin_server = null;
        this.origin_auth = null;
        StringTokenizer stringTokenizer = new StringTokenizer(str, "-");
        if (stringTokenizer.countTokens() < 3 || !stringTokenizer.nextToken().equals("S")) {
            throw new SmbException("Bad textual SID format: " + str);
        }
        this.revision = Byte.parseByte(stringTokenizer.nextToken());
        String nextToken = stringTokenizer.nextToken();
        long parseLong = nextToken.startsWith("0x") ? Long.parseLong(nextToken.substring(2), 16) : Long.parseLong(nextToken);
        this.identifier_authority = new byte[6];
        long j = parseLong;
        int i = 5;
        while (j > 0) {
            this.identifier_authority[i] = (byte) (j % 256);
            j >>= 8;
            i--;
        }
        this.sub_authority_count = (byte) stringTokenizer.countTokens();
        if (this.sub_authority_count > 0) {
            this.sub_authority = new int[this.sub_authority_count];
            for (int i2 = 0; i2 < this.sub_authority_count; i2++) {
                this.sub_authority[i2] = (int) (Long.parseLong(stringTokenizer.nextToken()) & 4294967295L);
            }
        }
    }

    public SID(rpc.sid_t sid_tVar, int i, String str, String str2, boolean z) {
        this.domainName = null;
        this.acctName = null;
        this.origin_server = null;
        this.origin_auth = null;
        this.revision = sid_tVar.revision;
        this.sub_authority_count = sid_tVar.sub_authority_count;
        this.identifier_authority = sid_tVar.identifier_authority;
        this.sub_authority = sid_tVar.sub_authority;
        this.type = i;
        this.domainName = str;
        this.acctName = str2;
        if (z) {
            this.sub_authority_count = (byte) (this.sub_authority_count - 1);
            this.sub_authority = new int[this.sub_authority_count];
            for (int i2 = 0; i2 < this.sub_authority_count; i2++) {
                this.sub_authority[i2] = sid_tVar.sub_authority[i2];
            }
        }
    }

    public SID(SID sid, int i) {
        this.domainName = null;
        this.acctName = null;
        this.origin_server = null;
        this.origin_auth = null;
        this.revision = sid.revision;
        this.identifier_authority = sid.identifier_authority;
        this.sub_authority_count = (byte) (sid.sub_authority_count + 1);
        this.sub_authority = new int[this.sub_authority_count];
        int i2 = 0;
        while (i2 < sid.sub_authority_count) {
            this.sub_authority[i2] = sid.sub_authority[i2];
            i2++;
        }
        this.sub_authority[i2] = i;
    }

    public SID(byte[] bArr, int i) {
        this.domainName = null;
        this.acctName = null;
        this.origin_server = null;
        this.origin_auth = null;
        int i2 = i + 1;
        this.revision = bArr[i];
        int i3 = i2 + 1;
        this.sub_authority_count = bArr[i2];
        this.identifier_authority = new byte[6];
        System.arraycopy(bArr, i3, this.identifier_authority, 0, 6);
        int i4 = i3 + 6;
        if (this.sub_authority_count > 100) {
            throw new RuntimeException("Invalid SID sub_authority_count");
        }
        this.sub_authority = new int[this.sub_authority_count];
        for (int i5 = 0; i5 < this.sub_authority_count; i5++) {
            this.sub_authority[i5] = ServerMessageBlock.readInt4(bArr, i4);
            i4 += 4;
        }
    }

    static SID[] getGroupMemberSids0(DcerpcHandle dcerpcHandle, SamrDomainHandle samrDomainHandle, SID sid, int i, int i2) {
        SamrAliasHandle samrAliasHandle;
        SamrAliasHandle samrAliasHandle2 = null;
        lsarpc.LsarSidArray lsarSidArray = new lsarpc.LsarSidArray();
        try {
            samrAliasHandle = new SamrAliasHandle(dcerpcHandle, samrDomainHandle, 131084, i);
        } catch (Throwable th) {
            th = th;
        }
        try {
            MsrpcGetMembersInAlias msrpcGetMembersInAlias = new MsrpcGetMembersInAlias(samrAliasHandle, lsarSidArray);
            dcerpcHandle.sendrecv(msrpcGetMembersInAlias);
            if (msrpcGetMembersInAlias.retval != 0) {
                throw new SmbException(msrpcGetMembersInAlias.retval, false);
            }
            SID[] sidArr = new SID[msrpcGetMembersInAlias.sids.num_sids];
            String server = dcerpcHandle.getServer();
            NtlmPasswordAuthentication ntlmPasswordAuthentication = (NtlmPasswordAuthentication) dcerpcHandle.getPrincipal();
            for (int i3 = 0; i3 < sidArr.length; i3++) {
                sidArr[i3] = new SID(msrpcGetMembersInAlias.sids.sids[i3].sid, 0, null, null, false);
                sidArr[i3].origin_server = server;
                sidArr[i3].origin_auth = ntlmPasswordAuthentication;
            }
            if (sidArr.length > 0 && (i2 & 1) != 0) {
                resolveSids(server, ntlmPasswordAuthentication, sidArr);
            }
            if (samrAliasHandle != null) {
                samrAliasHandle.close();
            }
            return sidArr;
        } catch (Throwable th2) {
            th = th2;
            samrAliasHandle2 = samrAliasHandle;
            if (samrAliasHandle2 != null) {
                samrAliasHandle2.close();
            }
            throw th;
        }
    }

    static Map getLocalGroupsMap(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication, int i) {
        SamrPolicyHandle samrPolicyHandle;
        SamrDomainHandle samrDomainHandle;
        HashMap hashMap;
        SID serverSid = getServerSid(str, ntlmPasswordAuthentication);
        DcerpcHandle dcerpcHandle = null;
        samr.SamrSamArray samrSamArray = new samr.SamrSamArray();
        synchronized (sid_cache) {
            try {
                DcerpcHandle handle = DcerpcHandle.getHandle("ncacn_np:" + str + "[\\PIPE\\samr]", ntlmPasswordAuthentication);
                try {
                    SamrPolicyHandle samrPolicyHandle2 = new SamrPolicyHandle(handle, str, 33554432);
                    try {
                        samrDomainHandle = new SamrDomainHandle(handle, samrPolicyHandle2, 33554432, serverSid);
                        try {
                            MsrpcEnumerateAliasesInDomain msrpcEnumerateAliasesInDomain = new MsrpcEnumerateAliasesInDomain(samrDomainHandle, 65535, samrSamArray);
                            handle.sendrecv(msrpcEnumerateAliasesInDomain);
                            if (msrpcEnumerateAliasesInDomain.retval != 0) {
                                throw new SmbException(msrpcEnumerateAliasesInDomain.retval, false);
                            }
                            hashMap = new HashMap();
                            int i2 = 0;
                            while (true) {
                                int i3 = i2;
                                if (i3 >= msrpcEnumerateAliasesInDomain.sam.count) {
                                    break;
                                }
                                samr.SamrSamEntry samrSamEntry = msrpcEnumerateAliasesInDomain.sam.entries[i3];
                                SID[] groupMemberSids0 = getGroupMemberSids0(handle, samrDomainHandle, serverSid, samrSamEntry.idx, i);
                                SID sid = new SID(serverSid, samrSamEntry.idx);
                                sid.type = 4;
                                sid.domainName = serverSid.getDomainName();
                                sid.acctName = new UnicodeString(samrSamEntry.name, false).toString();
                                int i4 = 0;
                                while (true) {
                                    int i5 = i4;
                                    if (i5 < groupMemberSids0.length) {
                                        ArrayList arrayList = (ArrayList) hashMap.get(groupMemberSids0[i5]);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                            hashMap.put(groupMemberSids0[i5], arrayList);
                                        }
                                        if (!arrayList.contains(sid)) {
                                            arrayList.add(sid);
                                        }
                                        i4 = i5 + 1;
                                    }
                                }
                                i2 = i3 + 1;
                            }
                            if (handle != null) {
                                if (samrPolicyHandle2 != null) {
                                    if (samrDomainHandle != null) {
                                        samrDomainHandle.close();
                                    }
                                    samrPolicyHandle2.close();
                                }
                                handle.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            samrPolicyHandle = samrPolicyHandle2;
                            dcerpcHandle = handle;
                            if (dcerpcHandle != null) {
                                if (samrPolicyHandle != null) {
                                    if (samrDomainHandle != null) {
                                        samrDomainHandle.close();
                                    }
                                    samrPolicyHandle.close();
                                }
                                dcerpcHandle.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        samrDomainHandle = null;
                        samrPolicyHandle = samrPolicyHandle2;
                        dcerpcHandle = handle;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    dcerpcHandle = handle;
                    samrDomainHandle = null;
                    samrPolicyHandle = null;
                }
            } catch (Throwable th4) {
                th = th4;
                samrPolicyHandle = null;
                samrDomainHandle = null;
            }
        }
        return hashMap;
    }

    public static SID getServerSid(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        DcerpcHandle dcerpcHandle;
        SID sid;
        LsaPolicyHandle lsaPolicyHandle = null;
        lsarpc.LsarDomainInfo lsarDomainInfo = new lsarpc.LsarDomainInfo();
        synchronized (sid_cache) {
            try {
                DcerpcHandle handle = DcerpcHandle.getHandle("ncacn_np:" + str + "[\\PIPE\\lsarpc]", ntlmPasswordAuthentication);
                try {
                    LsaPolicyHandle lsaPolicyHandle2 = new LsaPolicyHandle(handle, null, 1);
                    try {
                        MsrpcQueryInformationPolicy msrpcQueryInformationPolicy = new MsrpcQueryInformationPolicy(lsaPolicyHandle2, (short) 5, lsarDomainInfo);
                        handle.sendrecv(msrpcQueryInformationPolicy);
                        if (msrpcQueryInformationPolicy.retval != 0) {
                            throw new SmbException(msrpcQueryInformationPolicy.retval, false);
                        }
                        sid = new SID(lsarDomainInfo.sid, 3, new UnicodeString(lsarDomainInfo.name, false).toString(), null, false);
                        if (handle != null) {
                            if (lsaPolicyHandle2 != null) {
                                lsaPolicyHandle2.close();
                            }
                            handle.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        lsaPolicyHandle = lsaPolicyHandle2;
                        dcerpcHandle = handle;
                        if (dcerpcHandle != null) {
                            if (lsaPolicyHandle != null) {
                                lsaPolicyHandle.close();
                            }
                            dcerpcHandle.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    dcerpcHandle = handle;
                }
            } catch (Throwable th3) {
                th = th3;
                dcerpcHandle = null;
            }
        }
        return sid;
    }

    public static void resolveSids(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication, SID[] sidArr) {
        ArrayList arrayList = new ArrayList(sidArr.length);
        synchronized (sid_cache) {
            for (int i = 0; i < sidArr.length; i++) {
                SID sid = (SID) sid_cache.get(sidArr[i]);
                if (sid != null) {
                    sidArr[i].type = sid.type;
                    sidArr[i].domainName = sid.domainName;
                    sidArr[i].acctName = sid.acctName;
                } else {
                    arrayList.add(sidArr[i]);
                }
            }
            if (arrayList.size() > 0) {
                SID[] sidArr2 = (SID[]) arrayList.toArray(new SID[0]);
                resolveSids0(str, ntlmPasswordAuthentication, sidArr2);
                for (int i2 = 0; i2 < sidArr2.length; i2++) {
                    sid_cache.put(sidArr2[i2], sidArr2[i2]);
                }
            }
        }
    }

    public static void resolveSids(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication, SID[] sidArr, int i, int i2) {
        ArrayList arrayList = new ArrayList(sidArr.length);
        synchronized (sid_cache) {
            for (int i3 = 0; i3 < i2; i3++) {
                SID sid = (SID) sid_cache.get(sidArr[i + i3]);
                if (sid != null) {
                    sidArr[i + i3].type = sid.type;
                    sidArr[i + i3].domainName = sid.domainName;
                    sidArr[i + i3].acctName = sid.acctName;
                } else {
                    arrayList.add(sidArr[i + i3]);
                }
            }
            if (arrayList.size() > 0) {
                SID[] sidArr2 = (SID[]) arrayList.toArray(new SID[0]);
                resolveSids0(str, ntlmPasswordAuthentication, sidArr2);
                for (int i4 = 0; i4 < sidArr2.length; i4++) {
                    sid_cache.put(sidArr2[i4], sidArr2[i4]);
                }
            }
        }
    }

    static void resolveSids(DcerpcHandle dcerpcHandle, LsaPolicyHandle lsaPolicyHandle, SID[] sidArr) {
        MsrpcLookupSids msrpcLookupSids = new MsrpcLookupSids(lsaPolicyHandle, sidArr);
        dcerpcHandle.sendrecv(msrpcLookupSids);
        switch (msrpcLookupSids.retval) {
            case NtStatus.NT_STATUS_NONE_MAPPED /* -1073741709 */:
            case 0:
            case 263:
                for (int i = 0; i < sidArr.length; i++) {
                    sidArr[i].type = msrpcLookupSids.names.names[i].sid_type;
                    sidArr[i].domainName = null;
                    switch (sidArr[i].type) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                            sidArr[i].domainName = new UnicodeString(msrpcLookupSids.domains.domains[msrpcLookupSids.names.names[i].sid_index].name, false).toString();
                            break;
                    }
                    sidArr[i].acctName = new UnicodeString(msrpcLookupSids.names.names[i].name, false).toString();
                    sidArr[i].origin_server = null;
                    sidArr[i].origin_auth = null;
                }
                return;
            default:
                throw new SmbException(msrpcLookupSids.retval, false);
        }
    }

    static void resolveSids0(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication, SID[] sidArr) {
        DcerpcHandle dcerpcHandle;
        DcerpcHandle handle;
        LsaPolicyHandle lsaPolicyHandle;
        LsaPolicyHandle lsaPolicyHandle2 = null;
        synchronized (sid_cache) {
            try {
                handle = DcerpcHandle.getHandle("ncacn_np:" + str + "[\\PIPE\\lsarpc]", ntlmPasswordAuthentication);
                try {
                    int indexOf = str.indexOf(46);
                    if (indexOf > 0 && !Character.isDigit(str.charAt(0))) {
                        str = str.substring(0, indexOf);
                    }
                    lsaPolicyHandle = new LsaPolicyHandle(handle, "\\\\" + str, 2048);
                } catch (Throwable th) {
                    th = th;
                    dcerpcHandle = handle;
                }
            } catch (Throwable th2) {
                th = th2;
                dcerpcHandle = null;
            }
            try {
                resolveSids(handle, lsaPolicyHandle, sidArr);
                if (handle != null) {
                    if (lsaPolicyHandle != null) {
                        lsaPolicyHandle.close();
                    }
                    handle.close();
                }
            } catch (Throwable th3) {
                th = th3;
                lsaPolicyHandle2 = lsaPolicyHandle;
                dcerpcHandle = handle;
                if (dcerpcHandle != null) {
                    if (lsaPolicyHandle2 != null) {
                        lsaPolicyHandle2.close();
                    }
                    dcerpcHandle.close();
                }
                throw th;
            }
        }
    }

    public static byte[] toByteArray(rpc.sid_t sid_tVar) {
        byte[] bArr = new byte[(sid_tVar.sub_authority_count * 4) + 8];
        bArr[0] = sid_tVar.revision;
        bArr[1] = sid_tVar.sub_authority_count;
        System.arraycopy(sid_tVar.identifier_authority, 0, bArr, 2, 6);
        int i = 8;
        for (int i2 = 0; i2 < sid_tVar.sub_authority_count; i2++) {
            Encdec.enc_uint32le(sid_tVar.sub_authority[i2], bArr, i);
            i += 4;
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SID)) {
            return false;
        }
        SID sid = (SID) obj;
        if (sid == this) {
            return true;
        }
        if (sid.sub_authority_count != this.sub_authority_count) {
            return false;
        }
        int i = this.sub_authority_count;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                for (int i3 = 0; i3 < 6; i3++) {
                    if (sid.identifier_authority[i3] != this.identifier_authority[i3]) {
                        return false;
                    }
                }
                return sid.revision == this.revision;
            }
            if (sid.sub_authority[i2] != this.sub_authority[i2]) {
                return false;
            }
            i = i2;
        }
    }

    public String getAccountName() {
        if (this.origin_server != null) {
            resolveWeak();
        }
        return this.type == 8 ? "" + this.sub_authority[this.sub_authority_count - 1] : this.type == 3 ? "" : this.acctName;
    }

    public String getDomainName() {
        if (this.origin_server != null) {
            resolveWeak();
        }
        if (this.type != 8) {
            return this.domainName;
        }
        return toString().substring(0, (r0.length() - getAccountName().length()) - 1);
    }

    public SID getDomainSid() {
        return new SID(this, 3, this.domainName, null, getType() != 3);
    }

    public SID[] getGroupMemberSids(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication, int i) {
        SamrDomainHandle samrDomainHandle;
        DcerpcHandle dcerpcHandle;
        SamrPolicyHandle samrPolicyHandle;
        SID[] groupMemberSids0;
        SamrPolicyHandle samrPolicyHandle2 = null;
        if (this.type != 2 && this.type != 4) {
            return new SID[0];
        }
        SID domainSid = getDomainSid();
        synchronized (sid_cache) {
            try {
                DcerpcHandle handle = DcerpcHandle.getHandle("ncacn_np:" + str + "[\\PIPE\\samr]", ntlmPasswordAuthentication);
                try {
                    samrPolicyHandle = new SamrPolicyHandle(handle, str, 48);
                    try {
                        samrDomainHandle = new SamrDomainHandle(handle, samrPolicyHandle, 512, domainSid);
                    } catch (Throwable th) {
                        th = th;
                        samrDomainHandle = null;
                        samrPolicyHandle2 = samrPolicyHandle;
                        dcerpcHandle = handle;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    samrDomainHandle = null;
                    dcerpcHandle = handle;
                }
                try {
                    groupMemberSids0 = getGroupMemberSids0(handle, samrDomainHandle, domainSid, getRid(), i);
                    if (handle != null) {
                        if (samrPolicyHandle != null) {
                            if (samrDomainHandle != null) {
                                samrDomainHandle.close();
                            }
                            samrPolicyHandle.close();
                        }
                        handle.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    samrPolicyHandle2 = samrPolicyHandle;
                    dcerpcHandle = handle;
                    if (dcerpcHandle != null) {
                        if (samrPolicyHandle2 != null) {
                            if (samrDomainHandle != null) {
                                samrDomainHandle.close();
                            }
                            samrPolicyHandle2.close();
                        }
                        dcerpcHandle.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                samrDomainHandle = null;
                dcerpcHandle = null;
            }
        }
        return groupMemberSids0;
    }

    public int getRid() {
        if (getType() == 3) {
            throw new IllegalArgumentException("This SID is a domain sid");
        }
        return this.sub_authority[this.sub_authority_count - 1];
    }

    public int getType() {
        if (this.origin_server != null) {
            resolveWeak();
        }
        return this.type;
    }

    public String getTypeText() {
        if (this.origin_server != null) {
            resolveWeak();
        }
        return SID_TYPE_NAMES[this.type];
    }

    public int hashCode() {
        int i = this.identifier_authority[5];
        for (int i2 = 0; i2 < this.sub_authority_count; i2++) {
            i += 65599 * this.sub_authority[i2];
        }
        return i;
    }

    public void resolve(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        resolveSids(str, ntlmPasswordAuthentication, new SID[]{this});
    }

    /* JADX WARN: Multi-variable type inference failed */
    void resolveWeak() {
        if (this.origin_server != null) {
            try {
                resolve(this.origin_server, this.origin_auth);
            } catch (IOException e) {
            } finally {
                this.origin_server = null;
                this.origin_auth = null;
            }
        }
    }

    public String toDisplayString() {
        if (this.origin_server != null) {
            resolveWeak();
        }
        return this.domainName != null ? this.type == 3 ? this.domainName : (this.type == 5 || this.domainName.equals("BUILTIN")) ? this.type == 8 ? toString() : this.acctName : this.domainName + "\\" + this.acctName : toString();
    }

    public String toString() {
        String str;
        long j = 0;
        String str2 = "S-" + (this.revision & 255) + "-";
        if (this.identifier_authority[0] == 0 && this.identifier_authority[1] == 0) {
            long j2 = 0;
            for (int i = 5; i > 1; i--) {
                j += (this.identifier_authority[i] & 255) << ((int) j2);
                j2 += 8;
            }
            str = str2 + j;
        } else {
            str = (str2 + "0x") + Hexdump.toHexString(this.identifier_authority, 0, 6);
        }
        String str3 = str;
        for (int i2 = 0; i2 < this.sub_authority_count; i2++) {
            str3 = str3 + "-" + (this.sub_authority[i2] & 4294967295L);
        }
        return str3;
    }
}
