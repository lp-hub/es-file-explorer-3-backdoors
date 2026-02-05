package jcifs.smb;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.Vector;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.netbios.NbtAddress;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public final class SmbSession {
    static int dc_list_counter;
    static long dc_list_expiration;
    private UniAddress address;
    NtlmPasswordAuthentication auth;
    long expiration;
    private InetAddress localAddr;
    private int localPort;
    private int port;
    int uid;
    private static final String LOGON_SHARE = Config.getProperty("jcifs.smb.client.logonShare", null);
    private static final int LOOKUP_RESP_LIMIT = Config.getInt("jcifs.netbios.lookupRespLimit", 3);
    private static final String DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
    private static final String USERNAME = Config.getProperty("jcifs.smb.client.username", null);
    private static final int CACHE_POLICY = Config.getInt("jcifs.netbios.cachePolicy", 600) * 60;
    static NbtAddress[] dc_list = null;
    SmbTransport transport = null;
    String netbiosName = null;
    Vector trees = new Vector();
    int connectionState = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbSession(UniAddress uniAddress, int i, InetAddress inetAddress, int i2, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        this.address = uniAddress;
        this.port = i;
        this.localAddr = inetAddress;
        this.localPort = i2;
        this.auth = ntlmPasswordAuthentication;
    }

    public static byte[] getChallenge(UniAddress uniAddress) {
        return getChallenge(uniAddress, 0);
    }

    public static byte[] getChallenge(UniAddress uniAddress, int i) {
        SmbTransport smbTransport = SmbTransport.getSmbTransport(uniAddress, i);
        smbTransport.connect();
        return smbTransport.server.encryptionKey;
    }

    public static NtlmChallenge getChallengeForDomain() {
        int i;
        if (DOMAIN == null) {
            throw new SmbException("A domain was not specified");
        }
        synchronized (DOMAIN) {
            long currentTimeMillis = System.currentTimeMillis();
            int i2 = 1;
            do {
                i = i2;
                if (dc_list_expiration < currentTimeMillis) {
                    NbtAddress[] allByName = NbtAddress.getAllByName(DOMAIN, 28, null, null);
                    dc_list_expiration = (CACHE_POLICY * 1000) + currentTimeMillis;
                    if (allByName == null || allByName.length <= 0) {
                        dc_list_expiration = currentTimeMillis + 900000;
                        LogStream logStream = SmbTransport.log;
                        if (LogStream.level >= 2) {
                            SmbTransport.log.println("Failed to retrieve DC list from WINS");
                        }
                    } else {
                        dc_list = allByName;
                    }
                }
                int min = Math.min(dc_list.length, LOOKUP_RESP_LIMIT);
                for (int i3 = 0; i3 < min; i3++) {
                    int i4 = dc_list_counter;
                    dc_list_counter = i4 + 1;
                    int i5 = i4 % min;
                    if (dc_list[i5] != null) {
                        try {
                            return interrogate(dc_list[i5]);
                        } catch (SmbException e) {
                            LogStream logStream2 = SmbTransport.log;
                            if (LogStream.level >= 2) {
                                SmbTransport.log.println("Failed validate DC: " + dc_list[i5]);
                                LogStream logStream3 = SmbTransport.log;
                                if (LogStream.level > 2) {
                                    e.printStackTrace(SmbTransport.log);
                                }
                            }
                            dc_list[i5] = null;
                        }
                    }
                }
                dc_list_expiration = 0L;
                i2 = i - 1;
            } while (i > 0);
            dc_list_expiration = currentTimeMillis + 900000;
            throw new UnknownHostException("Failed to negotiate with a suitable domain controller for " + DOMAIN);
        }
    }

    private static NtlmChallenge interrogate(NbtAddress nbtAddress) {
        UniAddress uniAddress = new UniAddress(nbtAddress);
        SmbTransport smbTransport = SmbTransport.getSmbTransport(uniAddress, 0);
        if (USERNAME == null) {
            smbTransport.connect();
            LogStream logStream = SmbTransport.log;
            if (LogStream.level >= 3) {
                SmbTransport.log.println("Default credentials (jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation.");
            }
        } else {
            smbTransport.getSmbSession(NtlmPasswordAuthentication.DEFAULT).getSmbTree(LOGON_SHARE, null).treeConnect(null, null);
        }
        return new NtlmChallenge(smbTransport.server.encryptionKey, uniAddress);
    }

    public static void logon(UniAddress uniAddress, int i, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        SmbTree smbTree = SmbTransport.getSmbTransport(uniAddress, i).getSmbSession(ntlmPasswordAuthentication).getSmbTree(LOGON_SHARE, null);
        if (LOGON_SHARE == null) {
            smbTree.treeConnect(null, null);
        } else {
            smbTree.send(new Trans2FindFirst2("\\", "*", 16), new Trans2FindFirst2Response());
        }
    }

    public static void logon(UniAddress uniAddress, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        logon(uniAddress, 0, ntlmPasswordAuthentication);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001f, code lost:
    
        r0 = new jcifs.smb.SmbTree(r3, r4, r5);
        r3.trees.addElement(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized SmbTree getSmbTree(String str, String str2) {
        SmbTree smbTree;
        if (str == null) {
            str = "IPC$";
        }
        Enumeration elements = this.trees.elements();
        while (true) {
            if (!elements.hasMoreElements()) {
                break;
            }
            smbTree = (SmbTree) elements.nextElement();
            if (smbTree.matches(str, str2)) {
                break;
            }
        }
        return smbTree;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void logoff(boolean z) {
        synchronized (transport()) {
            if (this.connectionState != 2) {
                return;
            }
            this.connectionState = 3;
            this.netbiosName = null;
            Enumeration elements = this.trees.elements();
            while (elements.hasMoreElements()) {
                ((SmbTree) elements.nextElement()).treeDisconnect(z);
            }
            if (!z && this.transport.server.security != 0) {
                SmbComLogoffAndX smbComLogoffAndX = new SmbComLogoffAndX(null);
                smbComLogoffAndX.uid = this.uid;
                try {
                    this.transport.send(smbComLogoffAndX, null);
                } catch (SmbException e) {
                }
                this.uid = 0;
            }
            this.connectionState = 0;
            this.transport.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matches(NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        return this.auth == ntlmPasswordAuthentication || this.auth.equals(ntlmPasswordAuthentication);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void send(ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        synchronized (transport()) {
            if (serverMessageBlock2 != null) {
                serverMessageBlock2.received = false;
            }
            this.expiration = System.currentTimeMillis() + SmbTransport.SO_TIMEOUT;
            sessionSetup(serverMessageBlock, serverMessageBlock2);
            if (serverMessageBlock2 == null || !serverMessageBlock2.received) {
                if (serverMessageBlock instanceof SmbComTreeConnectAndX) {
                    SmbComTreeConnectAndX smbComTreeConnectAndX = (SmbComTreeConnectAndX) serverMessageBlock;
                    if (this.netbiosName != null && smbComTreeConnectAndX.path.endsWith("\\IPC$")) {
                        smbComTreeConnectAndX.path = "\\\\" + this.netbiosName + "\\IPC$";
                    }
                }
                serverMessageBlock.uid = this.uid;
                serverMessageBlock.auth = this.auth;
                try {
                    this.transport.send(serverMessageBlock, serverMessageBlock2);
                } catch (SmbException e) {
                    if (serverMessageBlock instanceof SmbComTreeConnectAndX) {
                        logoff(true);
                    }
                    serverMessageBlock.digest = null;
                    throw e;
                }
            }
        }
    }

    void sessionSetup(ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        int i;
        NtlmContext ntlmContext;
        byte[] bArr;
        byte[] signingKey;
        SmbException smbException = null;
        synchronized (transport()) {
            byte[] bArr2 = new byte[0];
            while (this.connectionState != 0) {
                if (this.connectionState == 2 || this.connectionState == 3) {
                    return;
                }
                try {
                    this.transport.wait();
                } catch (InterruptedException e) {
                    throw new SmbException(e.getMessage(), e);
                }
            }
            try {
                this.connectionState = 1;
                try {
                    this.transport.connect();
                    SmbTransport smbTransport = this.transport;
                    LogStream logStream = SmbTransport.log;
                    if (LogStream.level >= 4) {
                        SmbTransport smbTransport2 = this.transport;
                        SmbTransport.log.println("sessionSetup: accountName=" + this.auth.username + ",primaryDomain=" + this.auth.domain);
                    }
                    this.uid = 0;
                    int i2 = 10;
                    byte[] bArr3 = bArr2;
                    NtlmContext ntlmContext2 = null;
                    while (true) {
                        switch (i2) {
                            case 10:
                                if (this.auth != NtlmPasswordAuthentication.ANONYMOUS && this.transport.hasCapability(Integer.MIN_VALUE)) {
                                    i = 20;
                                    ntlmContext = ntlmContext2;
                                    bArr = bArr3;
                                    break;
                                } else {
                                    SmbComSessionSetupAndX smbComSessionSetupAndX = new SmbComSessionSetupAndX(this, serverMessageBlock, this.auth);
                                    SmbComSessionSetupAndXResponse smbComSessionSetupAndXResponse = new SmbComSessionSetupAndXResponse(serverMessageBlock2);
                                    if (this.transport.isSignatureSetupRequired(this.auth)) {
                                        if (!this.auth.hashesExternal || NtlmPasswordAuthentication.DEFAULT_PASSWORD == "") {
                                            smbComSessionSetupAndX.digest = new SigningDigest(this.auth.getSigningKey(this.transport.server.encryptionKey), false);
                                        } else {
                                            this.transport.getSmbSession(NtlmPasswordAuthentication.DEFAULT).getSmbTree(LOGON_SHARE, null).treeConnect(null, null);
                                        }
                                    }
                                    smbComSessionSetupAndX.auth = this.auth;
                                    try {
                                        this.transport.send(smbComSessionSetupAndX, smbComSessionSetupAndXResponse);
                                        e = smbException;
                                    } catch (SmbAuthException e2) {
                                        throw e2;
                                    } catch (SmbException e3) {
                                        e = e3;
                                    }
                                    if (smbComSessionSetupAndXResponse.isLoggedInAsGuest && !"GUEST".equalsIgnoreCase(this.auth.username) && this.transport.server.security != 0 && this.auth != NtlmPasswordAuthentication.ANONYMOUS) {
                                        throw new SmbAuthException(NtStatus.NT_STATUS_LOGON_FAILURE);
                                    }
                                    if (e == null) {
                                        this.uid = smbComSessionSetupAndXResponse.uid;
                                        if (smbComSessionSetupAndX.digest != null) {
                                            this.transport.digest = smbComSessionSetupAndX.digest;
                                        }
                                        this.connectionState = 2;
                                        smbException = e;
                                        ntlmContext = ntlmContext2;
                                        i = 0;
                                        bArr = bArr3;
                                        break;
                                    } else {
                                        throw e;
                                    }
                                }
                                break;
                            case 20:
                                if (ntlmContext2 == null) {
                                    ntlmContext2 = new NtlmContext(this.auth, (this.transport.flags2 & 4) != 0);
                                }
                                LogStream logStream2 = SmbTransport.log;
                                if (LogStream.level >= 4) {
                                    SmbTransport.log.println(ntlmContext2);
                                }
                                if (ntlmContext2.isEstablished()) {
                                    this.netbiosName = ntlmContext2.getNetbiosName();
                                    this.connectionState = 2;
                                    i = 0;
                                    ntlmContext = ntlmContext2;
                                    bArr = bArr3;
                                    break;
                                } else {
                                    try {
                                        byte[] initSecContext = ntlmContext2.initSecContext(bArr3, 0, bArr3.length);
                                        if (initSecContext == null) {
                                            i = i2;
                                            ntlmContext = ntlmContext2;
                                            bArr = initSecContext;
                                            break;
                                        } else {
                                            SmbComSessionSetupAndX smbComSessionSetupAndX2 = new SmbComSessionSetupAndX(this, null, initSecContext);
                                            SmbComSessionSetupAndXResponse smbComSessionSetupAndXResponse2 = new SmbComSessionSetupAndXResponse(null);
                                            if (this.transport.isSignatureSetupRequired(this.auth) && (signingKey = ntlmContext2.getSigningKey()) != null) {
                                                smbComSessionSetupAndX2.digest = new SigningDigest(signingKey, true);
                                            }
                                            smbComSessionSetupAndX2.uid = this.uid;
                                            this.uid = 0;
                                            try {
                                                this.transport.send(smbComSessionSetupAndX2, smbComSessionSetupAndXResponse2);
                                            } catch (SmbAuthException e4) {
                                                throw e4;
                                            } catch (SmbException e5) {
                                                try {
                                                    this.transport.disconnect(true);
                                                    smbException = e5;
                                                } catch (Exception e6) {
                                                    smbException = e5;
                                                }
                                            }
                                            if (smbComSessionSetupAndXResponse2.isLoggedInAsGuest && !"GUEST".equalsIgnoreCase(this.auth.username)) {
                                                throw new SmbAuthException(NtStatus.NT_STATUS_LOGON_FAILURE);
                                            }
                                            if (smbException == null) {
                                                this.uid = smbComSessionSetupAndXResponse2.uid;
                                                if (smbComSessionSetupAndX2.digest != null) {
                                                    this.transport.digest = smbComSessionSetupAndX2.digest;
                                                }
                                                i = i2;
                                                ntlmContext = ntlmContext2;
                                                bArr = smbComSessionSetupAndXResponse2.blob;
                                                break;
                                            } else {
                                                throw smbException;
                                            }
                                        }
                                    } catch (SmbException e7) {
                                        try {
                                            this.transport.disconnect(true);
                                        } catch (IOException e8) {
                                        }
                                        this.uid = 0;
                                        throw e7;
                                    }
                                }
                            default:
                                throw new SmbException("Unexpected session setup state: " + i2);
                        }
                        if (i == 0) {
                            return;
                        }
                        bArr3 = bArr;
                        ntlmContext2 = ntlmContext;
                        i2 = i;
                    }
                } catch (SmbException e9) {
                    logoff(true);
                    this.connectionState = 0;
                    throw e9;
                }
            } finally {
                this.transport.notifyAll();
            }
        }
    }

    public String toString() {
        return "SmbSession[accountName=" + this.auth.username + ",primaryDomain=" + this.auth.domain + ",uid=" + this.uid + ",connectionState=" + this.connectionState + "]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized SmbTransport transport() {
        if (this.transport == null) {
            this.transport = SmbTransport.getSmbTransport(this.address, this.port, this.localAddr, this.localPort, null);
        }
        return this.transport;
    }
}
