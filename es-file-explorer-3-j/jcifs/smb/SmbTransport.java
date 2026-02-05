package jcifs.smb;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;
import jcifs.UniAddress;
import jcifs.netbios.Name;
import jcifs.netbios.NbtAddress;
import jcifs.netbios.NbtException;
import jcifs.netbios.SessionRequestPacket;
import jcifs.util.Encdec;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;
import jcifs.util.transport.Request;
import jcifs.util.transport.Response;
import jcifs.util.transport.Transport;
import jcifs.util.transport.TransportException;

/* loaded from: classes.dex */
public class SmbTransport extends Transport implements SmbConstants {
    UniAddress address;
    InputStream in;
    InetAddress localAddr;
    int localPort;
    int mid;
    OutputStream out;
    int port;
    Socket socket;
    static final byte[] BUF = new byte[65535];
    static final SmbComNegotiate NEGOTIATE_REQUEST = new SmbComNegotiate();
    static LogStream log = LogStream.getInstance();
    static HashMap dfsRoots = null;
    byte[] sbuf = new byte[512];
    SmbComBlankResponse key = new SmbComBlankResponse();
    long sessionExpiration = System.currentTimeMillis() + SO_TIMEOUT;
    LinkedList referrals = new LinkedList();
    SigningDigest digest = null;
    LinkedList sessions = new LinkedList();
    ServerData server = new ServerData();
    int flags2 = FLAGS2;
    int maxMpxCount = MAX_MPX_COUNT;
    int snd_buf_size = SND_BUF_SIZE;
    int rcv_buf_size = RCV_BUF_SIZE;
    int capabilities = CAPABILITIES;
    int sessionKey = 0;
    boolean useUnicode = USE_UNICODE;
    String tconHostName = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ServerData {
        int capabilities;
        boolean encryptedPasswords;
        byte[] encryptionKey;
        int encryptionKeyLength;
        byte flags;
        int flags2;
        byte[] guid;
        int maxBufferSize;
        int maxMpxCount;
        int maxNumberVcs;
        int maxRawSize;
        String oemDomainName;
        int security;
        int securityMode;
        long serverTime;
        int serverTimeZone;
        int sessionKey;
        boolean signaturesEnabled;
        boolean signaturesRequired;

        ServerData() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbTransport(UniAddress uniAddress, int i, InetAddress inetAddress, int i2) {
        this.address = uniAddress;
        this.port = i;
        this.localAddr = inetAddress;
        this.localPort = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized SmbTransport getSmbTransport(UniAddress uniAddress, int i) {
        SmbTransport smbTransport;
        synchronized (SmbTransport.class) {
            smbTransport = getSmbTransport(uniAddress, i, LADDR, LPORT, null);
        }
        return smbTransport;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized SmbTransport getSmbTransport(UniAddress uniAddress, int i, InetAddress inetAddress, int i2, String str) {
        SmbTransport smbTransport;
        synchronized (SmbTransport.class) {
            synchronized (CONNECTIONS) {
                if (SSN_LIMIT != 1) {
                    ListIterator listIterator = CONNECTIONS.listIterator();
                    while (listIterator.hasNext()) {
                        smbTransport = (SmbTransport) listIterator.next();
                        if (smbTransport.matches(uniAddress, i, inetAddress, i2, str) && (SSN_LIMIT == 0 || smbTransport.sessions.size() < SSN_LIMIT)) {
                            break;
                        }
                    }
                }
                smbTransport = new SmbTransport(uniAddress, i, inetAddress, i2);
                CONNECTIONS.add(0, smbTransport);
            }
        }
        return smbTransport;
    }

    private void negotiate(int i, ServerMessageBlock serverMessageBlock) {
        synchronized (this.sbuf) {
            if (i == 139) {
                ssn139();
            } else {
                if (i == 0) {
                    i = SmbConstants.DEFAULT_PORT;
                }
                this.socket = new Socket();
                if (this.localAddr != null) {
                    this.socket.bind(new InetSocketAddress(this.localAddr, this.localPort));
                }
                this.socket.connect(new InetSocketAddress(this.address.getHostAddress(), i), SO_TIMEOUT);
                this.out = this.socket.getOutputStream();
                this.in = this.socket.getInputStream();
            }
            int i2 = this.mid + 1;
            this.mid = i2;
            if (i2 == 32000) {
                this.mid = 1;
            }
            NEGOTIATE_REQUEST.mid = this.mid;
            int encode = NEGOTIATE_REQUEST.encode(this.sbuf, 4);
            Encdec.enc_uint32be(encode & 65535, this.sbuf, 0);
            LogStream logStream = log;
            if (LogStream.level >= 4) {
                log.println(NEGOTIATE_REQUEST);
                LogStream logStream2 = log;
                if (LogStream.level >= 6) {
                    Hexdump.hexdump(log, this.sbuf, 4, encode);
                }
            }
            this.out.write(this.sbuf, 0, encode + 4);
            this.out.flush();
            if (peekKey() == null) {
                throw new IOException("transport closed in negotiate");
            }
            int dec_uint16be = Encdec.dec_uint16be(this.sbuf, 2) & 65535;
            if (dec_uint16be < 33 || dec_uint16be + 4 > this.sbuf.length) {
                throw new IOException("Invalid payload size: " + dec_uint16be);
            }
            readn(this.in, this.sbuf, 36, dec_uint16be - 32);
            serverMessageBlock.decode(this.sbuf, 4);
            LogStream logStream3 = log;
            if (LogStream.level >= 4) {
                log.println(serverMessageBlock);
                LogStream logStream4 = log;
                if (LogStream.level >= 6) {
                    Hexdump.hexdump(log, this.sbuf, 4, encode);
                }
            }
        }
    }

    DfsReferral[] __getDfsReferrals(NtlmPasswordAuthentication ntlmPasswordAuthentication, String str, int i) {
        SmbTree smbTree = getSmbSession(ntlmPasswordAuthentication).getSmbTree("IPC$", null);
        Trans2GetDfsReferralResponse trans2GetDfsReferralResponse = new Trans2GetDfsReferralResponse();
        smbTree.send(new Trans2GetDfsReferral(str), trans2GetDfsReferralResponse);
        if (i == 0 || trans2GetDfsReferralResponse.numReferrals < i) {
            i = trans2GetDfsReferralResponse.numReferrals;
        }
        DfsReferral[] dfsReferralArr = new DfsReferral[i];
        String[] strArr = new String[4];
        long currentTimeMillis = System.currentTimeMillis() + (Dfs.TTL * 1000);
        for (int i2 = 0; i2 < dfsReferralArr.length; i2++) {
            DfsReferral dfsReferral = new DfsReferral();
            dfsReferral.resolveHashes = ntlmPasswordAuthentication.hashesExternal;
            dfsReferral.ttl = trans2GetDfsReferralResponse.referrals[i2].ttl;
            dfsReferral.expiration = currentTimeMillis;
            if (str.equals("")) {
                dfsReferral.server = trans2GetDfsReferralResponse.referrals[i2].path.substring(1).toLowerCase();
            } else {
                dfsPathSplit(trans2GetDfsReferralResponse.referrals[i2].node, strArr);
                dfsReferral.server = strArr[1];
                dfsReferral.share = strArr[2];
                dfsReferral.path = strArr[3];
            }
            dfsReferral.pathConsumed = trans2GetDfsReferralResponse.pathConsumed;
            dfsReferralArr[i2] = dfsReferral;
        }
        return dfsReferralArr;
    }

    void checkStatus(ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        serverMessageBlock2.errorCode = SmbException.getStatusByCode(serverMessageBlock2.errorCode);
        switch (serverMessageBlock2.errorCode) {
            case -2147483643:
            case NtStatus.NT_STATUS_MORE_PROCESSING_REQUIRED /* -1073741802 */:
            case 0:
                if (serverMessageBlock2.verifyFailed) {
                    throw new SmbException("Signature verification failed.");
                }
                return;
            case NtStatus.NT_STATUS_ACCESS_DENIED /* -1073741790 */:
            case NtStatus.NT_STATUS_WRONG_PASSWORD /* -1073741718 */:
            case NtStatus.NT_STATUS_LOGON_FAILURE /* -1073741715 */:
            case NtStatus.NT_STATUS_ACCOUNT_RESTRICTION /* -1073741714 */:
            case NtStatus.NT_STATUS_INVALID_LOGON_HOURS /* -1073741713 */:
            case NtStatus.NT_STATUS_INVALID_WORKSTATION /* -1073741712 */:
            case NtStatus.NT_STATUS_PASSWORD_EXPIRED /* -1073741711 */:
            case NtStatus.NT_STATUS_ACCOUNT_DISABLED /* -1073741710 */:
            case NtStatus.NT_STATUS_TRUSTED_DOMAIN_FAILURE /* -1073741428 */:
            case NtStatus.NT_STATUS_ACCOUNT_LOCKED_OUT /* -1073741260 */:
                throw new SmbAuthException(serverMessageBlock2.errorCode);
            case NtStatus.NT_STATUS_PATH_NOT_COVERED /* -1073741225 */:
                if (serverMessageBlock.auth == null) {
                    throw new SmbException(serverMessageBlock2.errorCode, (Throwable) null);
                }
                DfsReferral dfsReferrals = getDfsReferrals(serverMessageBlock.auth, serverMessageBlock.path, 1);
                if (dfsReferrals == null) {
                    throw new SmbException(serverMessageBlock2.errorCode, (Throwable) null);
                }
                SmbFile.dfs.insert(serverMessageBlock.path, dfsReferrals);
                throw dfsReferrals;
            default:
                throw new SmbException(serverMessageBlock2.errorCode, (Throwable) null);
        }
    }

    public void connect() {
        try {
            super.connect(RESPONSE_TIMEOUT);
        } catch (TransportException e) {
            throw new SmbException("Failed to connect: " + this.address, e);
        }
    }

    void dfsPathSplit(String str, String[] strArr) {
        int i;
        int i2;
        int i3 = 0;
        int length = strArr.length - 1;
        int length2 = str.length();
        int i4 = 0;
        int i5 = 0;
        while (i5 != length) {
            if (i4 == length2 || str.charAt(i4) == '\\') {
                int i6 = i5 + 1;
                strArr[i5] = str.substring(i3, i4);
                i = i4 + 1;
                i2 = i6;
            } else {
                int i7 = i3;
                i2 = i5;
                i = i7;
            }
            int i8 = i4 + 1;
            if (i4 >= length2) {
                while (i2 < strArr.length) {
                    strArr[i2] = "";
                    i2++;
                }
                return;
            } else {
                i4 = i8;
                int i9 = i;
                i5 = i2;
                i3 = i9;
            }
        }
        strArr[length] = str.substring(i3);
    }

    @Override // jcifs.util.transport.Transport
    protected void doConnect() {
        int i = SmbConstants.DEFAULT_PORT;
        SmbComNegotiateResponse smbComNegotiateResponse = new SmbComNegotiateResponse(this.server);
        try {
            negotiate(this.port, smbComNegotiateResponse);
        } catch (ConnectException e) {
            if (this.port == 0 || this.port == 445) {
                i = 139;
            }
            this.port = i;
            negotiate(this.port, smbComNegotiateResponse);
        } catch (NoRouteToHostException e2) {
            if (this.port == 0 || this.port == 445) {
                i = 139;
            }
            this.port = i;
            negotiate(this.port, smbComNegotiateResponse);
        }
        if (smbComNegotiateResponse.dialectIndex > 10) {
            throw new SmbException("This client does not support the negotiated dialect.");
        }
        if ((this.server.capabilities & Integer.MIN_VALUE) != Integer.MIN_VALUE && this.server.encryptionKeyLength != 8 && LM_COMPATIBILITY == 0) {
            throw new SmbException("Unexpected encryption key length: " + this.server.encryptionKeyLength);
        }
        this.tconHostName = this.address.getHostName();
        if (this.server.signaturesRequired || (this.server.signaturesEnabled && SIGNPREF)) {
            this.flags2 |= 4;
        } else {
            this.flags2 &= 65531;
        }
        this.maxMpxCount = Math.min(this.maxMpxCount, this.server.maxMpxCount);
        if (this.maxMpxCount < 1) {
            this.maxMpxCount = 1;
        }
        this.snd_buf_size = Math.min(this.snd_buf_size, this.server.maxBufferSize);
        this.capabilities &= this.server.capabilities;
        if ((this.server.capabilities & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.capabilities |= Integer.MIN_VALUE;
        }
        if ((this.capabilities & 4) == 0) {
            if (FORCE_UNICODE) {
                this.capabilities |= 4;
            } else {
                this.useUnicode = false;
                this.flags2 &= 32767;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // jcifs.util.transport.Transport
    protected void doDisconnect(boolean z) {
        ListIterator listIterator = this.sessions.listIterator();
        while (listIterator.hasNext()) {
            try {
                ((SmbSession) listIterator.next()).logoff(z);
            } finally {
                this.digest = null;
                this.socket = null;
                this.tconHostName = null;
            }
        }
        try {
            this.socket.shutdownOutput();
        } catch (Exception e) {
        }
        this.out.close();
        this.in.close();
        this.socket.close();
    }

    @Override // jcifs.util.transport.Transport
    protected void doRecv(Response response) {
        ServerMessageBlock serverMessageBlock = (ServerMessageBlock) response;
        serverMessageBlock.useUnicode = this.useUnicode;
        serverMessageBlock.extendedSecurity = (this.capabilities & Integer.MIN_VALUE) == Integer.MIN_VALUE;
        synchronized (BUF) {
            System.arraycopy(this.sbuf, 0, BUF, 0, 36);
            int dec_uint16be = 65535 & Encdec.dec_uint16be(BUF, 2);
            if (dec_uint16be < 33 || dec_uint16be + 4 > this.rcv_buf_size) {
                throw new IOException("Invalid payload size: " + dec_uint16be);
            }
            int dec_uint32le = Encdec.dec_uint32le(BUF, 9) & (-1);
            if (serverMessageBlock.command == 46 && (dec_uint32le == 0 || dec_uint32le == -2147483643)) {
                SmbComReadAndXResponse smbComReadAndXResponse = (SmbComReadAndXResponse) serverMessageBlock;
                readn(this.in, BUF, 36, 27);
                serverMessageBlock.decode(BUF, 4);
                int i = smbComReadAndXResponse.dataOffset - 59;
                if (smbComReadAndXResponse.byteCount > 0 && i > 0 && i < 4) {
                    readn(this.in, BUF, 63, i);
                }
                if (smbComReadAndXResponse.dataLength > 0) {
                    readn(this.in, smbComReadAndXResponse.f3449b, smbComReadAndXResponse.off, smbComReadAndXResponse.dataLength);
                }
            } else {
                readn(this.in, BUF, 36, dec_uint16be - 32);
                serverMessageBlock.decode(BUF, 4);
                if (serverMessageBlock instanceof SmbComTransactionResponse) {
                    ((SmbComTransactionResponse) serverMessageBlock).nextElement();
                }
            }
            if (this.digest != null && serverMessageBlock.errorCode == 0) {
                this.digest.verify(BUF, 4, serverMessageBlock);
            }
            LogStream logStream = log;
            if (LogStream.level >= 4) {
                log.println(response);
                LogStream logStream2 = log;
                if (LogStream.level >= 6) {
                    Hexdump.hexdump(log, BUF, 4, dec_uint16be);
                }
            }
        }
    }

    @Override // jcifs.util.transport.Transport
    protected void doSend(Request request) {
        synchronized (BUF) {
            ServerMessageBlock serverMessageBlock = (ServerMessageBlock) request;
            int encode = serverMessageBlock.encode(BUF, 4);
            Encdec.enc_uint32be(65535 & encode, BUF, 0);
            LogStream logStream = log;
            if (LogStream.level >= 4) {
                ServerMessageBlock serverMessageBlock2 = serverMessageBlock;
                do {
                    log.println(serverMessageBlock2);
                    if (!(serverMessageBlock2 instanceof AndXServerMessageBlock)) {
                        break;
                    } else {
                        serverMessageBlock2 = ((AndXServerMessageBlock) serverMessageBlock2).andx;
                    }
                } while (serverMessageBlock2 != null);
                LogStream logStream2 = log;
                if (LogStream.level >= 6) {
                    Hexdump.hexdump(log, BUF, 4, encode);
                }
            }
            this.out.write(BUF, 0, encode + 4);
        }
    }

    protected void doSend0(Request request) {
        try {
            doSend(request);
        } catch (IOException e) {
            LogStream logStream = log;
            if (LogStream.level > 2) {
                e.printStackTrace(log);
            }
            try {
                disconnect(true);
            } catch (IOException e2) {
                e2.printStackTrace(log);
            }
            throw e;
        }
    }

    @Override // jcifs.util.transport.Transport
    protected void doSkip() {
        int dec_uint16be = Encdec.dec_uint16be(this.sbuf, 2) & 65535;
        if (dec_uint16be < 33 || dec_uint16be + 4 > this.rcv_buf_size) {
            this.in.skip(this.in.available());
        } else {
            this.in.skip(dec_uint16be - 32);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DfsReferral getDfsReferrals(NtlmPasswordAuthentication ntlmPasswordAuthentication, String str, int i) {
        SmbTree smbTree = getSmbSession(ntlmPasswordAuthentication).getSmbTree("IPC$", null);
        Trans2GetDfsReferralResponse trans2GetDfsReferralResponse = new Trans2GetDfsReferralResponse();
        smbTree.send(new Trans2GetDfsReferral(str), trans2GetDfsReferralResponse);
        if (trans2GetDfsReferralResponse.numReferrals == 0) {
            return null;
        }
        if (i == 0 || trans2GetDfsReferralResponse.numReferrals < i) {
            i = trans2GetDfsReferralResponse.numReferrals;
        }
        DfsReferral dfsReferral = new DfsReferral();
        String[] strArr = new String[4];
        long currentTimeMillis = System.currentTimeMillis() + (Dfs.TTL * 1000);
        int i2 = 0;
        while (true) {
            dfsReferral.resolveHashes = ntlmPasswordAuthentication.hashesExternal;
            dfsReferral.ttl = trans2GetDfsReferralResponse.referrals[i2].ttl;
            dfsReferral.expiration = currentTimeMillis;
            if (str.equals("")) {
                dfsReferral.server = trans2GetDfsReferralResponse.referrals[i2].path.substring(1).toLowerCase();
            } else {
                dfsPathSplit(trans2GetDfsReferralResponse.referrals[i2].node, strArr);
                dfsReferral.server = strArr[1];
                dfsReferral.share = strArr[2];
                dfsReferral.path = strArr[3];
            }
            dfsReferral.pathConsumed = trans2GetDfsReferralResponse.pathConsumed;
            i2++;
            if (i2 == i) {
                return dfsReferral.next;
            }
            dfsReferral.append(new DfsReferral());
            dfsReferral = dfsReferral.next;
        }
    }

    synchronized SmbSession getSmbSession() {
        return getSmbSession(new NtlmPasswordAuthentication(null, null, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized SmbSession getSmbSession(NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        SmbSession smbSession;
        ListIterator listIterator = this.sessions.listIterator();
        while (true) {
            if (listIterator.hasNext()) {
                smbSession = (SmbSession) listIterator.next();
                if (smbSession.matches(ntlmPasswordAuthentication)) {
                    smbSession.auth = ntlmPasswordAuthentication;
                    break;
                }
            } else {
                if (SO_TIMEOUT > 0) {
                    long j = this.sessionExpiration;
                    long currentTimeMillis = System.currentTimeMillis();
                    if (j < currentTimeMillis) {
                        this.sessionExpiration = SO_TIMEOUT + currentTimeMillis;
                        ListIterator listIterator2 = this.sessions.listIterator();
                        while (listIterator2.hasNext()) {
                            SmbSession smbSession2 = (SmbSession) listIterator2.next();
                            if (smbSession2.expiration < currentTimeMillis) {
                                smbSession2.logoff(false);
                            }
                        }
                    }
                }
                smbSession = new SmbSession(this.address, this.port, this.localAddr, this.localPort, ntlmPasswordAuthentication);
                smbSession.transport = this;
                this.sessions.add(smbSession);
            }
        }
        return smbSession;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasCapability(int i) {
        try {
            connect(RESPONSE_TIMEOUT);
            return (this.capabilities & i) == i;
        } catch (IOException e) {
            throw new SmbException(e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSignatureSetupRequired(NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        return ((this.flags2 & 4) == 0 || this.digest != null || ntlmPasswordAuthentication == NtlmPasswordAuthentication.NULL || NtlmPasswordAuthentication.NULL.equals(ntlmPasswordAuthentication)) ? false : true;
    }

    @Override // jcifs.util.transport.Transport
    protected void makeKey(Request request) {
        int i = this.mid + 1;
        this.mid = i;
        if (i == 32000) {
            this.mid = 1;
        }
        ((ServerMessageBlock) request).mid = this.mid;
    }

    boolean matches(UniAddress uniAddress, int i, InetAddress inetAddress, int i2, String str) {
        if (str == null) {
            str = uniAddress.getHostName();
        }
        return (this.tconHostName == null || str.equalsIgnoreCase(this.tconHostName)) && uniAddress.equals(this.address) && (i == 0 || i == this.port || (i == 445 && this.port == 139)) && ((inetAddress == this.localAddr || (inetAddress != null && inetAddress.equals(this.localAddr))) && i2 == this.localPort);
    }

    @Override // jcifs.util.transport.Transport
    protected Request peekKey() {
        while (readn(this.in, this.sbuf, 0, 4) >= 4) {
            if (this.sbuf[0] != -123) {
                if (readn(this.in, this.sbuf, 4, 32) < 32) {
                    return null;
                }
                LogStream logStream = log;
                if (LogStream.level >= 4) {
                    log.println("New data read: " + this);
                    Hexdump.hexdump(log, this.sbuf, 4, 32);
                }
                while (true) {
                    if (this.sbuf[0] == 0 && this.sbuf[1] == 0 && this.sbuf[4] == -1 && this.sbuf[5] == 83 && this.sbuf[6] == 77 && this.sbuf[7] == 66) {
                        this.key.mid = Encdec.dec_uint16le(this.sbuf, 34) & 65535;
                        return this.key;
                    }
                    for (int i = 0; i < 35; i++) {
                        this.sbuf[i] = this.sbuf[i + 1];
                    }
                    int read = this.in.read();
                    if (read == -1) {
                        return null;
                    }
                    this.sbuf[35] = (byte) read;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void send(ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        connect();
        serverMessageBlock.flags2 |= this.flags2;
        serverMessageBlock.useUnicode = this.useUnicode;
        serverMessageBlock.response = serverMessageBlock2;
        if (serverMessageBlock.digest == null) {
            serverMessageBlock.digest = this.digest;
        }
        try {
            if (serverMessageBlock2 == null) {
                doSend0(serverMessageBlock);
                return;
            }
            if (serverMessageBlock instanceof SmbComTransaction) {
                serverMessageBlock2.command = serverMessageBlock.command;
                SmbComTransaction smbComTransaction = (SmbComTransaction) serverMessageBlock;
                SmbComTransactionResponse smbComTransactionResponse = (SmbComTransactionResponse) serverMessageBlock2;
                smbComTransaction.maxBufferSize = this.snd_buf_size;
                smbComTransactionResponse.reset();
                try {
                    BufferCache.getBuffers(smbComTransaction, smbComTransactionResponse);
                    smbComTransaction.nextElement();
                    if (smbComTransaction.hasMoreElements()) {
                        SmbComBlankResponse smbComBlankResponse = new SmbComBlankResponse();
                        super.sendrecv(smbComTransaction, smbComBlankResponse, RESPONSE_TIMEOUT);
                        if (smbComBlankResponse.errorCode != 0) {
                            checkStatus(smbComTransaction, smbComBlankResponse);
                        }
                        smbComTransaction.nextElement();
                    } else {
                        makeKey(smbComTransaction);
                    }
                    synchronized (this) {
                        serverMessageBlock2.received = false;
                        smbComTransactionResponse.isReceived = false;
                        try {
                            try {
                                this.response_map.put(smbComTransaction, smbComTransactionResponse);
                                do {
                                    doSend0(smbComTransaction);
                                    if (!smbComTransaction.hasMoreElements()) {
                                        break;
                                    }
                                } while (smbComTransaction.nextElement() != null);
                                long j = RESPONSE_TIMEOUT;
                                smbComTransactionResponse.expiration = System.currentTimeMillis() + j;
                                while (smbComTransactionResponse.hasMoreElements()) {
                                    wait(j);
                                    j = smbComTransactionResponse.expiration - System.currentTimeMillis();
                                    if (j <= 0) {
                                        throw new TransportException(this + " timedout waiting for response to " + smbComTransaction);
                                    }
                                }
                                if (serverMessageBlock2.errorCode != 0) {
                                    checkStatus(smbComTransaction, smbComTransactionResponse);
                                }
                            } catch (InterruptedException e) {
                                throw new TransportException(e);
                            }
                        } finally {
                            this.response_map.remove(smbComTransaction);
                        }
                    }
                } finally {
                    BufferCache.releaseBuffer(smbComTransaction.txn_buf);
                    BufferCache.releaseBuffer(smbComTransactionResponse.txn_buf);
                }
            } else {
                serverMessageBlock2.command = serverMessageBlock.command;
                super.sendrecv(serverMessageBlock, serverMessageBlock2, RESPONSE_TIMEOUT);
            }
            checkStatus(serverMessageBlock, serverMessageBlock2);
        } catch (SmbException e2) {
            throw e2;
        } catch (IOException e3) {
            throw new SmbException(e3.getMessage(), e3);
        }
    }

    void ssn139() {
        String nextCalledName;
        Name name = new Name(this.address.firstCalledName(), 32, null);
        do {
            this.socket = new Socket();
            if (this.localAddr != null) {
                this.socket.bind(new InetSocketAddress(this.localAddr, this.localPort));
            }
            this.socket.connect(new InetSocketAddress(this.address.getHostAddress(), 139), SO_TIMEOUT);
            this.out = this.socket.getOutputStream();
            this.in = this.socket.getInputStream();
            this.out.write(this.sbuf, 0, new SessionRequestPacket(name, NbtAddress.getLocalName()).writeWireFormat(this.sbuf, 0));
            if (readn(this.in, this.sbuf, 0, 4) < 4) {
                try {
                    this.socket.close();
                } catch (IOException e) {
                }
                throw new SmbException("EOF during NetBIOS session request");
            }
            switch (this.sbuf[0] & 255) {
                case -1:
                    disconnect(true);
                    throw new NbtException(2, -1);
                case 130:
                    LogStream logStream = log;
                    if (LogStream.level >= 4) {
                        log.println("session established ok with " + this.address);
                        return;
                    }
                    return;
                case 131:
                    int read = this.in.read() & 255;
                    switch (read) {
                        case 128:
                        case 130:
                            this.socket.close();
                            nextCalledName = this.address.nextCalledName();
                            name.name = nextCalledName;
                            break;
                        case NbtException.NOT_LISTENING_CALLING /* 129 */:
                        default:
                            disconnect(true);
                            throw new NbtException(2, read);
                    }
                default:
                    disconnect(true);
                    throw new NbtException(2, 0);
            }
        } while (nextCalledName != null);
        throw new IOException("Failed to establish session with " + this.address);
    }

    @Override // jcifs.util.transport.Transport
    public String toString() {
        return super.toString() + "[" + this.address + ":" + this.port + "]";
    }
}
