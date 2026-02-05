package jcifs.smb;

import java.io.IOException;
import java.util.HashMap;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public class Dfs {
    protected CacheEntry _domains = null;
    protected CacheEntry referrals = null;
    static LogStream log = LogStream.getInstance();
    static final boolean strictView = Config.getBoolean("jcifs.smb.client.dfs.strictView", false);
    static final long TTL = Config.getLong("jcifs.smb.client.dfs.ttl", 300);
    static final boolean DISABLED = Config.getBoolean("jcifs.smb.client.dfs.disabled", false);
    protected static CacheEntry FALSE_ENTRY = new CacheEntry(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class CacheEntry {
        long expiration;
        HashMap map;

        CacheEntry(long j) {
            this.expiration = System.currentTimeMillis() + (1000 * (j == 0 ? Dfs.TTL : j));
            this.map = new HashMap();
        }
    }

    public SmbTransport getDc(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        if (DISABLED) {
            return null;
        }
        try {
            DfsReferral dfsReferrals = SmbTransport.getSmbTransport(UniAddress.getByName(str, true), 0).getDfsReferrals(ntlmPasswordAuthentication, "\\" + str, 1);
            if (dfsReferrals != null) {
                DfsReferral dfsReferral = dfsReferrals;
                do {
                    try {
                        return SmbTransport.getSmbTransport(UniAddress.getByName(dfsReferral.server), 0);
                    } catch (IOException e) {
                        dfsReferral = dfsReferral.next;
                    }
                } while (dfsReferral != dfsReferrals);
                throw e;
            }
        } catch (IOException e2) {
            LogStream logStream = log;
            if (LogStream.level >= 3) {
                e2.printStackTrace(log);
            }
            if (strictView && (e2 instanceof SmbAuthException)) {
                throw ((SmbAuthException) e2);
            }
        }
        return null;
    }

    public DfsReferral getReferral(SmbTransport smbTransport, String str, String str2, String str3, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        if (DISABLED) {
            return null;
        }
        try {
            String str4 = "\\" + str + "\\" + str2;
            if (str3 != null) {
                str4 = str4 + str3;
            }
            DfsReferral dfsReferrals = smbTransport.getDfsReferrals(ntlmPasswordAuthentication, str4, 0);
            if (dfsReferrals != null) {
                return dfsReferrals;
            }
        } catch (IOException e) {
            LogStream logStream = log;
            if (LogStream.level >= 4) {
                e.printStackTrace(log);
            }
            if (strictView && (e instanceof SmbAuthException)) {
                throw ((SmbAuthException) e);
            }
        }
        return null;
    }

    public HashMap getTrustedDomains(NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        if (DISABLED || ntlmPasswordAuthentication.domain == "?") {
            return null;
        }
        if (this._domains != null && System.currentTimeMillis() > this._domains.expiration) {
            this._domains = null;
        }
        if (this._domains != null) {
            return this._domains.map;
        }
        try {
            SmbTransport smbTransport = SmbTransport.getSmbTransport(UniAddress.getByName(ntlmPasswordAuthentication.domain, true), 0);
            CacheEntry cacheEntry = new CacheEntry(TTL * 10);
            DfsReferral dfsReferrals = smbTransport.getDfsReferrals(ntlmPasswordAuthentication, "", 0);
            if (dfsReferrals != null) {
                DfsReferral dfsReferral = dfsReferrals;
                do {
                    cacheEntry.map.put(dfsReferral.server.toLowerCase(), new HashMap());
                    dfsReferral = dfsReferral.next;
                } while (dfsReferral != dfsReferrals);
                this._domains = cacheEntry;
                return this._domains.map;
            }
        } catch (IOException e) {
            LogStream logStream = log;
            if (LogStream.level >= 3) {
                e.printStackTrace(log);
            }
            if (strictView && (e instanceof SmbAuthException)) {
                throw ((SmbAuthException) e);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void insert(String str, DfsReferral dfsReferral) {
        if (!DISABLED) {
            int indexOf = str.indexOf(92, 1);
            int indexOf2 = str.indexOf(92, indexOf + 1);
            String substring = str.substring(1, indexOf);
            String substring2 = str.substring(indexOf + 1, indexOf2);
            String lowerCase = str.substring(0, dfsReferral.pathConsumed).toLowerCase();
            int length = lowerCase.length();
            while (length > 1 && lowerCase.charAt(length - 1) == '\\') {
                length--;
            }
            if (length < lowerCase.length()) {
                lowerCase = lowerCase.substring(0, length);
            }
            dfsReferral.pathConsumed -= ((substring.length() + 1) + 1) + substring2.length();
            if (this.referrals != null && System.currentTimeMillis() + 10000 > this.referrals.expiration) {
                this.referrals = null;
            }
            if (this.referrals == null) {
                this.referrals = new CacheEntry(0L);
            }
            this.referrals.map.put(lowerCase, dfsReferral);
        }
    }

    public boolean isTrustedDomain(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        HashMap trustedDomains = getTrustedDomains(ntlmPasswordAuthentication);
        return (trustedDomains == null || trustedDomains.get(str.toLowerCase()) == null) ? false : true;
    }

    public synchronized DfsReferral resolve(String str, String str2, String str3, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        DfsReferral dfsReferral;
        String str4;
        CacheEntry cacheEntry;
        CacheEntry cacheEntry2;
        DfsReferral dfsReferral2;
        SmbTransport smbTransport;
        long currentTimeMillis = System.currentTimeMillis();
        if (DISABLED || str2.equals("IPC$")) {
            dfsReferral = null;
        } else {
            HashMap trustedDomains = getTrustedDomains(ntlmPasswordAuthentication);
            if (trustedDomains != null) {
                String lowerCase = str.toLowerCase();
                HashMap hashMap = (HashMap) trustedDomains.get(lowerCase);
                if (hashMap != null) {
                    str4 = str2.toLowerCase();
                    CacheEntry cacheEntry3 = (CacheEntry) hashMap.get(str4);
                    if (cacheEntry3 == null || currentTimeMillis <= cacheEntry3.expiration) {
                        cacheEntry = cacheEntry3;
                    } else {
                        hashMap.remove(str4);
                        cacheEntry = null;
                    }
                    if (cacheEntry == null) {
                        smbTransport = getDc(lowerCase, ntlmPasswordAuthentication);
                        if (smbTransport == null) {
                            dfsReferral = null;
                        } else {
                            DfsReferral referral = getReferral(smbTransport, lowerCase, str4, str3, ntlmPasswordAuthentication);
                            if (referral != null) {
                                int length = lowerCase.length() + 1 + 1 + str4.length();
                                CacheEntry cacheEntry4 = new CacheEntry(0L);
                                DfsReferral dfsReferral3 = referral;
                                do {
                                    if (str3 == null) {
                                        dfsReferral3.map = cacheEntry4.map;
                                        dfsReferral3.key = "\\";
                                    }
                                    dfsReferral3.pathConsumed -= length;
                                    dfsReferral3 = dfsReferral3.next;
                                } while (dfsReferral3 != referral);
                                if (referral.key != null) {
                                    cacheEntry4.map.put(referral.key, referral);
                                }
                                hashMap.put(str4, cacheEntry4);
                                cacheEntry2 = cacheEntry4;
                                dfsReferral2 = referral;
                            } else if (str3 == null) {
                                hashMap.put(str4, FALSE_ENTRY);
                                cacheEntry2 = cacheEntry;
                                dfsReferral2 = referral;
                            } else {
                                cacheEntry2 = cacheEntry;
                                dfsReferral2 = referral;
                            }
                        }
                    } else if (cacheEntry == FALSE_ENTRY) {
                        cacheEntry2 = null;
                        dfsReferral2 = null;
                        smbTransport = null;
                    } else {
                        cacheEntry2 = cacheEntry;
                        dfsReferral2 = null;
                        smbTransport = null;
                    }
                    if (cacheEntry2 != null) {
                        dfsReferral2 = (DfsReferral) cacheEntry2.map.get("\\");
                        if (dfsReferral2 != null && currentTimeMillis > dfsReferral2.expiration) {
                            cacheEntry2.map.remove("\\");
                            dfsReferral2 = null;
                        }
                        if (dfsReferral2 == null) {
                            if (smbTransport == null && (smbTransport = getDc(lowerCase, ntlmPasswordAuthentication)) == null) {
                                dfsReferral = null;
                            } else {
                                dfsReferral2 = getReferral(smbTransport, lowerCase, str4, str3, ntlmPasswordAuthentication);
                                if (dfsReferral2 != null) {
                                    dfsReferral2.pathConsumed -= ((lowerCase.length() + 1) + 1) + str4.length();
                                    dfsReferral2.link = "\\";
                                    cacheEntry2.map.put("\\", dfsReferral2);
                                }
                            }
                        }
                    }
                    str = lowerCase;
                    dfsReferral = dfsReferral2;
                } else {
                    str4 = str2;
                    str = lowerCase;
                    dfsReferral = null;
                }
            } else {
                dfsReferral = null;
                str4 = str2;
            }
            if (dfsReferral == null && str3 != null) {
                if (this.referrals != null && currentTimeMillis > this.referrals.expiration) {
                    this.referrals = null;
                }
                if (this.referrals == null) {
                    this.referrals = new CacheEntry(0L);
                }
                String str5 = "\\" + str + "\\" + str4;
                if (!str3.equals("\\")) {
                    str5 = str5 + str3;
                }
                String lowerCase2 = str5.toLowerCase();
                for (String str6 : this.referrals.map.keySet()) {
                    int length2 = str6.length();
                    boolean z = false;
                    if (length2 == lowerCase2.length()) {
                        z = str6.equals(lowerCase2);
                    } else if (length2 < lowerCase2.length()) {
                        z = str6.regionMatches(0, lowerCase2, 0, length2) && lowerCase2.charAt(length2) == '\\';
                    }
                    dfsReferral = z ? (DfsReferral) this.referrals.map.get(str6) : dfsReferral;
                }
            }
        }
        return dfsReferral;
    }
}
