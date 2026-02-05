package jcifs.ntlmssp;

import java.io.IOException;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.Arrays;
import jcifs.Config;
import jcifs.netbios.NbtAddress;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbConstants;
import jcifs.util.HMACT64;
import jcifs.util.Hexdump;
import jcifs.util.MD4;
import jcifs.util.RC4;

/* loaded from: classes.dex */
public class Type3Message extends NtlmMessage {
    private static final String DEFAULT_DOMAIN;
    private static final int DEFAULT_FLAGS;
    private static final String DEFAULT_PASSWORD;
    private static final String DEFAULT_USER;
    private static final String DEFAULT_WORKSTATION;
    private static final int LM_COMPATIBILITY;
    static final long MILLISECONDS_BETWEEN_1970_AND_1601 = 11644473600000L;
    private static final SecureRandom RANDOM = new SecureRandom();
    private String domain;
    private byte[] lmResponse;
    private byte[] masterKey;
    private byte[] ntResponse;
    private byte[] sessionKey;
    private String user;
    private String workstation;

    static {
        String str;
        DEFAULT_FLAGS = (Config.getBoolean("jcifs.smb.client.useUnicode", true) ? 1 : 2) | 512;
        DEFAULT_DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
        DEFAULT_USER = Config.getProperty("jcifs.smb.client.username", null);
        DEFAULT_PASSWORD = Config.getProperty("jcifs.smb.client.password", null);
        try {
            str = NbtAddress.getLocalHost().getHostName();
        } catch (UnknownHostException e) {
            str = null;
        }
        DEFAULT_WORKSTATION = str;
        LM_COMPATIBILITY = Config.getInt("jcifs.smb.lmCompatibility", 3);
    }

    public Type3Message() {
        this.masterKey = null;
        this.sessionKey = null;
        setFlags(getDefaultFlags());
        setDomain(getDefaultDomain());
        setUser(getDefaultUser());
        setWorkstation(getDefaultWorkstation());
    }

    public Type3Message(int i, byte[] bArr, byte[] bArr2, String str, String str2, String str3) {
        this.masterKey = null;
        this.sessionKey = null;
        setFlags(i);
        setLMResponse(bArr);
        setNTResponse(bArr2);
        setDomain(str);
        setUser(str2);
        setWorkstation(str3);
    }

    public Type3Message(Type2Message type2Message) {
        this.masterKey = null;
        this.sessionKey = null;
        setFlags(getDefaultFlags(type2Message));
        setWorkstation(getDefaultWorkstation());
        String defaultDomain = getDefaultDomain();
        setDomain(defaultDomain);
        String defaultUser = getDefaultUser();
        setUser(defaultUser);
        String defaultPassword = getDefaultPassword();
        switch (LM_COMPATIBILITY) {
            case 0:
            case 1:
                setLMResponse(getLMResponse(type2Message, defaultPassword));
                setNTResponse(getNTResponse(type2Message, defaultPassword));
                return;
            case 2:
                byte[] nTResponse = getNTResponse(type2Message, defaultPassword);
                setLMResponse(nTResponse);
                setNTResponse(nTResponse);
                return;
            case 3:
            case 4:
            case 5:
                byte[] bArr = new byte[8];
                RANDOM.nextBytes(bArr);
                setLMResponse(getLMv2Response(type2Message, defaultDomain, defaultUser, defaultPassword, bArr));
                return;
            default:
                setLMResponse(getLMResponse(type2Message, defaultPassword));
                setNTResponse(getNTResponse(type2Message, defaultPassword));
                return;
        }
    }

    public Type3Message(Type2Message type2Message, String str, String str2, String str3, String str4, int i) {
        this.masterKey = null;
        this.sessionKey = null;
        setFlags(getDefaultFlags(type2Message) | i);
        setWorkstation(str4 == null ? getDefaultWorkstation() : str4);
        setDomain(str2);
        setUser(str3);
        switch (LM_COMPATIBILITY) {
            case 0:
            case 1:
                if ((getFlags() & 524288) == 0) {
                    setLMResponse(getLMResponse(type2Message, str));
                    setNTResponse(getNTResponse(type2Message, str));
                    return;
                }
                byte[] bArr = new byte[24];
                RANDOM.nextBytes(bArr);
                Arrays.fill(bArr, 8, 24, (byte) 0);
                byte[] nTOWFv1 = NtlmPasswordAuthentication.nTOWFv1(str);
                byte[] nTLM2Response = NtlmPasswordAuthentication.getNTLM2Response(nTOWFv1, type2Message.getChallenge(), bArr);
                setLMResponse(bArr);
                setNTResponse(nTLM2Response);
                if ((getFlags() & 16) == 16) {
                    byte[] bArr2 = new byte[16];
                    System.arraycopy(type2Message.getChallenge(), 0, bArr2, 0, 8);
                    System.arraycopy(bArr, 0, bArr2, 8, 8);
                    MD4 md4 = new MD4();
                    md4.update(nTOWFv1);
                    HMACT64 hmact64 = new HMACT64(md4.digest());
                    hmact64.update(bArr2);
                    byte[] digest = hmact64.digest();
                    if ((getFlags() & 1073741824) == 0) {
                        this.masterKey = digest;
                        setSessionKey(this.masterKey);
                        return;
                    }
                    this.masterKey = new byte[16];
                    RANDOM.nextBytes(this.masterKey);
                    byte[] bArr3 = new byte[16];
                    new RC4(digest).update(this.masterKey, 0, 16, bArr3, 0);
                    setSessionKey(bArr3);
                    return;
                }
                return;
            case 2:
                byte[] nTResponse = getNTResponse(type2Message, str);
                setLMResponse(nTResponse);
                setNTResponse(nTResponse);
                return;
            case 3:
            case 4:
            case 5:
                byte[] nTOWFv2 = NtlmPasswordAuthentication.nTOWFv2(str2, str3, str);
                byte[] bArr4 = new byte[8];
                RANDOM.nextBytes(bArr4);
                setLMResponse(getLMv2Response(type2Message, str2, str3, str, bArr4));
                byte[] bArr5 = new byte[8];
                RANDOM.nextBytes(bArr5);
                setNTResponse(getNTLMv2Response(type2Message, nTOWFv2, bArr5));
                if ((getFlags() & 16) == 16) {
                    HMACT64 hmact642 = new HMACT64(nTOWFv2);
                    hmact642.update(this.ntResponse, 0, 16);
                    byte[] digest2 = hmact642.digest();
                    if ((getFlags() & 1073741824) == 0) {
                        this.masterKey = digest2;
                        setSessionKey(this.masterKey);
                        return;
                    }
                    this.masterKey = new byte[16];
                    RANDOM.nextBytes(this.masterKey);
                    byte[] bArr6 = new byte[16];
                    new RC4(digest2).update(this.masterKey, 0, 16, bArr6, 0);
                    setSessionKey(bArr6);
                    return;
                }
                return;
            default:
                setLMResponse(getLMResponse(type2Message, str));
                setNTResponse(getNTResponse(type2Message, str));
                return;
        }
    }

    public Type3Message(byte[] bArr) {
        this.masterKey = null;
        this.sessionKey = null;
        parse(bArr);
    }

    public static String getDefaultDomain() {
        return DEFAULT_DOMAIN;
    }

    public static int getDefaultFlags() {
        return DEFAULT_FLAGS;
    }

    public static int getDefaultFlags(Type2Message type2Message) {
        if (type2Message == null) {
            return DEFAULT_FLAGS;
        }
        return ((type2Message.getFlags() & 1) != 0 ? 1 : 2) | 512;
    }

    public static String getDefaultPassword() {
        return DEFAULT_PASSWORD;
    }

    public static String getDefaultUser() {
        return DEFAULT_USER;
    }

    public static String getDefaultWorkstation() {
        return DEFAULT_WORKSTATION;
    }

    public static byte[] getLMResponse(Type2Message type2Message, String str) {
        if (type2Message == null || str == null) {
            return null;
        }
        return NtlmPasswordAuthentication.getPreNTLMResponse(str, type2Message.getChallenge());
    }

    public static byte[] getLMv2Response(Type2Message type2Message, String str, String str2, String str3, byte[] bArr) {
        if (type2Message == null || str == null || str2 == null || str3 == null || bArr == null) {
            return null;
        }
        return NtlmPasswordAuthentication.getLMv2Response(str, str2, str3, type2Message.getChallenge(), bArr);
    }

    public static byte[] getNTLMv2Response(Type2Message type2Message, byte[] bArr, byte[] bArr2) {
        if (type2Message == null || bArr == null || bArr2 == null) {
            return null;
        }
        return NtlmPasswordAuthentication.getNTLMv2Response(bArr, type2Message.getChallenge(), bArr2, (System.currentTimeMillis() + 11644473600000L) * 10000, type2Message.getTargetInformation());
    }

    public static byte[] getNTResponse(Type2Message type2Message, String str) {
        if (type2Message == null || str == null) {
            return null;
        }
        return NtlmPasswordAuthentication.getNTLMResponse(str, type2Message.getChallenge());
    }

    private void parse(byte[] bArr) {
        int i;
        String oEMEncoding;
        for (int i2 = 0; i2 < 8; i2++) {
            if (bArr[i2] != NTLMSSP_SIGNATURE[i2]) {
                throw new IOException("Not an NTLMSSP message.");
            }
        }
        if (readULong(bArr, 8) != 3) {
            throw new IOException("Not a Type 3 message.");
        }
        byte[] readSecurityBuffer = readSecurityBuffer(bArr, 12);
        int readULong = readULong(bArr, 16);
        byte[] readSecurityBuffer2 = readSecurityBuffer(bArr, 20);
        int readULong2 = readULong(bArr, 24);
        byte[] readSecurityBuffer3 = readSecurityBuffer(bArr, 28);
        int readULong3 = readULong(bArr, 32);
        byte[] readSecurityBuffer4 = readSecurityBuffer(bArr, 36);
        int readULong4 = readULong(bArr, 40);
        byte[] readSecurityBuffer5 = readSecurityBuffer(bArr, 44);
        int readULong5 = readULong(bArr, 48);
        byte[] bArr2 = null;
        if (readULong == 52 || readULong2 == 52 || readULong3 == 52 || readULong4 == 52 || readULong5 == 52) {
            i = 514;
            oEMEncoding = getOEMEncoding();
        } else {
            byte[] readSecurityBuffer6 = readSecurityBuffer(bArr, 52);
            i = readULong(bArr, 60);
            oEMEncoding = (i & 1) != 0 ? SmbConstants.UNI_ENCODING : getOEMEncoding();
            bArr2 = readSecurityBuffer6;
        }
        setSessionKey(bArr2);
        setFlags(i);
        setLMResponse(readSecurityBuffer);
        setNTResponse(readSecurityBuffer2);
        setDomain(new String(readSecurityBuffer3, oEMEncoding));
        setUser(new String(readSecurityBuffer4, oEMEncoding));
        setWorkstation(new String(readSecurityBuffer5, oEMEncoding));
    }

    public String getDomain() {
        return this.domain;
    }

    public byte[] getLMResponse() {
        return this.lmResponse;
    }

    public byte[] getMasterKey() {
        return this.masterKey;
    }

    public byte[] getNTResponse() {
        return this.ntResponse;
    }

    public byte[] getSessionKey() {
        return this.sessionKey;
    }

    public String getUser() {
        return this.user;
    }

    public String getWorkstation() {
        return this.workstation;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setLMResponse(byte[] bArr) {
        this.lmResponse = bArr;
    }

    public void setNTResponse(byte[] bArr) {
        this.ntResponse = bArr;
    }

    public void setSessionKey(byte[] bArr) {
        this.sessionKey = bArr;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public void setWorkstation(String str) {
        this.workstation = str;
    }

    @Override // jcifs.ntlmssp.NtlmMessage
    public byte[] toByteArray() {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        try {
            int flags = getFlags();
            boolean z = (flags & 1) != 0;
            String oEMEncoding = z ? null : getOEMEncoding();
            String domain = getDomain();
            if (domain == null || domain.length() == 0) {
                bArr = null;
            } else {
                bArr = z ? domain.getBytes(SmbConstants.UNI_ENCODING) : domain.getBytes(oEMEncoding);
            }
            int length = bArr != null ? bArr.length : 0;
            String user = getUser();
            if (user == null || user.length() == 0) {
                bArr2 = null;
            } else {
                bArr2 = z ? user.getBytes(SmbConstants.UNI_ENCODING) : user.toUpperCase().getBytes(oEMEncoding);
            }
            int length2 = bArr2 != null ? bArr2.length : 0;
            String workstation = getWorkstation();
            if (workstation == null || workstation.length() == 0) {
                bArr3 = null;
            } else {
                bArr3 = z ? workstation.getBytes(SmbConstants.UNI_ENCODING) : workstation.toUpperCase().getBytes(oEMEncoding);
            }
            int length3 = bArr3 != null ? bArr3.length : 0;
            byte[] lMResponse = getLMResponse();
            int length4 = lMResponse != null ? lMResponse.length : 0;
            byte[] nTResponse = getNTResponse();
            int length5 = nTResponse != null ? nTResponse.length : 0;
            byte[] sessionKey = getSessionKey();
            byte[] bArr4 = new byte[(sessionKey != null ? sessionKey.length : 0) + length + 64 + length2 + length3 + length4 + length5];
            System.arraycopy(NTLMSSP_SIGNATURE, 0, bArr4, 0, 8);
            writeULong(bArr4, 8, 3);
            writeSecurityBuffer(bArr4, 12, 64, lMResponse);
            int i = length4 + 64;
            writeSecurityBuffer(bArr4, 20, i, nTResponse);
            int i2 = length5 + i;
            writeSecurityBuffer(bArr4, 28, i2, bArr);
            int i3 = i2 + length;
            writeSecurityBuffer(bArr4, 36, i3, bArr2);
            int i4 = i3 + length2;
            writeSecurityBuffer(bArr4, 44, i4, bArr3);
            writeSecurityBuffer(bArr4, 52, i4 + length3, sessionKey);
            writeULong(bArr4, 60, flags);
            return bArr4;
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public String toString() {
        String user = getUser();
        String domain = getDomain();
        String workstation = getWorkstation();
        byte[] lMResponse = getLMResponse();
        byte[] nTResponse = getNTResponse();
        byte[] sessionKey = getSessionKey();
        return "Type3Message[domain=" + domain + ",user=" + user + ",workstation=" + workstation + ",lmResponse=" + (lMResponse == null ? "null" : "<" + lMResponse.length + " bytes>") + ",ntResponse=" + (nTResponse == null ? "null" : "<" + nTResponse.length + " bytes>") + ",sessionKey=" + (sessionKey == null ? "null" : "<" + sessionKey.length + " bytes>") + ",flags=0x" + Hexdump.toHexString(getFlags(), 8) + "]";
    }
}
