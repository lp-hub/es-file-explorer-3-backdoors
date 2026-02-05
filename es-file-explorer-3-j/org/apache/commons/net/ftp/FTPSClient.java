package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Socket;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import org.apache.commons.net.util.Base64;
import org.apache.commons.net.util.SSLContextUtils;
import org.apache.commons.net.util.TrustManagerUtils;

/* loaded from: classes.dex */
public class FTPSClient extends FTPClient {
    private static final String CMD_ADAT = "ADAT";
    private static final String CMD_AUTH = "AUTH";
    private static final String CMD_CCC = "CCC";
    private static final String CMD_CONF = "CONF";
    private static final String CMD_ENC = "ENC";
    private static final String CMD_MIC = "MIC";
    private static final String CMD_PBSZ = "PBSZ";
    private static final String CMD_PROT = "PROT";
    public static final int DEFAULT_FTPS_DATA_PORT = 989;
    public static final int DEFAULT_FTPS_PORT = 990;
    private static final String DEFAULT_PROTOCOL = "TLS";

    @Deprecated
    public static String KEYSTORE_ALGORITHM;

    @Deprecated
    public static String PROVIDER;

    @Deprecated
    public static String STORE_TYPE;

    @Deprecated
    public static String TRUSTSTORE_ALGORITHM;
    private String auth;
    private SSLContext context;
    private boolean isClientMode;
    private boolean isCreation;
    private final boolean isImplicit;
    private boolean isNeedClientAuth;
    private boolean isWantClientAuth;
    private KeyManager keyManager;
    private Socket plainSocket;
    private final String protocol;
    private String[] protocols;
    private String[] suites;
    private TrustManager trustManager;
    private static final String DEFAULT_PROT = "C";
    private static final String[] PROT_COMMAND_VALUE = {DEFAULT_PROT, "E", "S", "P"};

    public FTPSClient() {
        this(DEFAULT_PROTOCOL, false);
    }

    public FTPSClient(String str) {
        this(str, false);
    }

    public FTPSClient(String str, boolean z) {
        this.auth = DEFAULT_PROTOCOL;
        this.isCreation = true;
        this.isClientMode = true;
        this.isNeedClientAuth = false;
        this.isWantClientAuth = false;
        this.suites = null;
        this.protocols = null;
        this.trustManager = TrustManagerUtils.getValidateServerCertificateTrustManager();
        this.keyManager = null;
        this.protocol = str;
        this.isImplicit = z;
        if (z) {
            setDefaultPort(DEFAULT_FTPS_PORT);
        }
    }

    public FTPSClient(SSLContext sSLContext) {
        this(false, sSLContext);
    }

    public FTPSClient(boolean z) {
        this(DEFAULT_PROTOCOL, z);
    }

    public FTPSClient(boolean z, SSLContext sSLContext) {
        this(DEFAULT_PROTOCOL, z);
        this.context = sSLContext;
    }

    private boolean checkPROTValue(String str) {
        for (int i = 0; i < PROT_COMMAND_VALUE.length; i++) {
            if (PROT_COMMAND_VALUE[i].equals(str)) {
                return true;
            }
        }
        return false;
    }

    private String extractPrefixedData(String str, String str2) {
        int indexOf = str2.indexOf(str);
        if (indexOf == -1) {
            return null;
        }
        return str2.substring(indexOf + str.length()).trim();
    }

    private KeyManager getKeyManager() {
        return this.keyManager;
    }

    private void initSslContext() {
        if (this.context == null) {
            this.context = SSLContextUtils.createSSLContext(this.protocol, getKeyManager(), getTrustManager());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.net.ftp.FTPClient, org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void _connectAction_() {
        if (this.isImplicit) {
            sslNegotiation();
        }
        super._connectAction_();
        if (this.isImplicit) {
            return;
        }
        execAUTH();
        sslNegotiation();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.net.ftp.FTPClient
    public Socket _openDataConnection_(int i, String str) {
        Socket _openDataConnection_ = super._openDataConnection_(i, str);
        if (_openDataConnection_ instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) _openDataConnection_;
            sSLSocket.setUseClientMode(this.isClientMode);
            sSLSocket.setEnableSessionCreation(this.isCreation);
            if (!this.isClientMode) {
                sSLSocket.setNeedClientAuth(this.isNeedClientAuth);
                sSLSocket.setWantClientAuth(this.isWantClientAuth);
            }
            if (this.suites != null) {
                sSLSocket.setEnabledCipherSuites(this.suites);
            }
            if (this.protocols != null) {
                sSLSocket.setEnabledProtocols(this.protocols);
            }
            sSLSocket.startHandshake();
        }
        return _openDataConnection_;
    }

    @Override // org.apache.commons.net.ftp.FTPClient, org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        setSocketFactory(null);
        setServerSocketFactory(null);
    }

    public int execADAT(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_ADAT, new String(Base64.encodeBase64(bArr))) : sendCommand(CMD_ADAT);
    }

    public int execAUTH(String str) {
        return sendCommand(CMD_AUTH, str);
    }

    protected void execAUTH() {
        int sendCommand = sendCommand(CMD_AUTH, this.auth);
        if (334 != sendCommand && 234 != sendCommand) {
            throw new SSLException(getReplyString());
        }
    }

    public int execCCC() {
        return sendCommand(CMD_CCC);
    }

    public int execCONF(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_CONF, new String(Base64.encodeBase64(bArr))) : sendCommand(CMD_CONF, "");
    }

    public int execENC(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_ENC, new String(Base64.encodeBase64(bArr))) : sendCommand(CMD_ENC, "");
    }

    public int execMIC(byte[] bArr) {
        return bArr != null ? sendCommand(CMD_MIC, new String(Base64.encodeBase64(bArr))) : sendCommand(CMD_MIC, "");
    }

    public void execPBSZ(long j) {
        if (j < 0 || 4294967295L < j) {
            throw new IllegalArgumentException();
        }
        if (200 != sendCommand(CMD_PBSZ, String.valueOf(j))) {
            throw new SSLException(getReplyString());
        }
    }

    public void execPROT(String str) {
        if (str == null) {
            str = DEFAULT_PROT;
        }
        if (!checkPROTValue(str)) {
            throw new IllegalArgumentException();
        }
        if (200 != sendCommand(CMD_PROT, str)) {
            throw new SSLException(getReplyString());
        }
        if (DEFAULT_PROT.equals(str)) {
            setSocketFactory(null);
            setServerSocketFactory(null);
        } else {
            setSocketFactory(new FTPSSocketFactory(this.context));
            setServerSocketFactory(new FTPSServerSocketFactory(this.context));
            initSslContext();
        }
    }

    public String getAuthValue() {
        return this.auth;
    }

    public boolean getEnableSessionCreation() {
        if (this._socket_ instanceof SSLSocket) {
            return ((SSLSocket) this._socket_).getEnableSessionCreation();
        }
        return false;
    }

    public String[] getEnabledCipherSuites() {
        if (this._socket_ instanceof SSLSocket) {
            return ((SSLSocket) this._socket_).getEnabledCipherSuites();
        }
        return null;
    }

    public String[] getEnabledProtocols() {
        if (this._socket_ instanceof SSLSocket) {
            return ((SSLSocket) this._socket_).getEnabledProtocols();
        }
        return null;
    }

    public boolean getNeedClientAuth() {
        if (this._socket_ instanceof SSLSocket) {
            return ((SSLSocket) this._socket_).getNeedClientAuth();
        }
        return false;
    }

    public TrustManager getTrustManager() {
        return this.trustManager;
    }

    public boolean getUseClientMode() {
        if (this._socket_ instanceof SSLSocket) {
            return ((SSLSocket) this._socket_).getUseClientMode();
        }
        return false;
    }

    public boolean getWantClientAuth() {
        if (this._socket_ instanceof SSLSocket) {
            return ((SSLSocket) this._socket_).getWantClientAuth();
        }
        return false;
    }

    public byte[] parseADATReply(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decodeBase64(extractPrefixedData("ADAT=", str));
    }

    public long parsePBSZ(long j) {
        execPBSZ(j);
        String extractPrefixedData = extractPrefixedData("PBSZ=", getReplyString());
        if (extractPrefixedData == null) {
            return j;
        }
        long parseLong = Long.parseLong(extractPrefixedData);
        return parseLong < j ? parseLong : j;
    }

    @Override // org.apache.commons.net.ftp.FTP
    public int sendCommand(String str, String str2) {
        int sendCommand = super.sendCommand(str, str2);
        if (CMD_CCC.equals(str)) {
            if (200 != sendCommand) {
                throw new SSLException(getReplyString());
            }
            this._socket_.close();
            this._socket_ = this.plainSocket;
            this._controlInput_ = new BufferedReader(new InputStreamReader(this._socket_.getInputStream(), getControlEncoding()));
            this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(this._socket_.getOutputStream(), getControlEncoding()));
        }
        return sendCommand;
    }

    public void setAuthValue(String str) {
        this.auth = str;
    }

    public void setEnabledCipherSuites(String[] strArr) {
        this.suites = new String[strArr.length];
        System.arraycopy(strArr, 0, this.suites, 0, strArr.length);
    }

    public void setEnabledProtocols(String[] strArr) {
        this.protocols = new String[strArr.length];
        System.arraycopy(strArr, 0, this.protocols, 0, strArr.length);
    }

    public void setEnabledSessionCreation(boolean z) {
        this.isCreation = z;
    }

    public void setKeyManager(KeyManager keyManager) {
        this.keyManager = keyManager;
    }

    public void setNeedClientAuth(boolean z) {
        this.isNeedClientAuth = z;
    }

    public void setTrustManager(TrustManager trustManager) {
        this.trustManager = trustManager;
    }

    public void setUseClientMode(boolean z) {
        this.isClientMode = z;
    }

    public void setWantClientAuth(boolean z) {
        this.isWantClientAuth = z;
    }

    protected void sslNegotiation() {
        this.plainSocket = this._socket_;
        initSslContext();
        SSLSocket sSLSocket = (SSLSocket) this.context.getSocketFactory().createSocket(this._socket_, this._socket_.getInetAddress().getHostAddress(), this._socket_.getPort(), false);
        sSLSocket.setEnableSessionCreation(this.isCreation);
        sSLSocket.setUseClientMode(this.isClientMode);
        if (!this.isClientMode) {
            sSLSocket.setNeedClientAuth(this.isNeedClientAuth);
            sSLSocket.setWantClientAuth(this.isWantClientAuth);
        }
        if (this.protocols != null) {
            sSLSocket.setEnabledProtocols(this.protocols);
        }
        if (this.suites != null) {
            sSLSocket.setEnabledCipherSuites(this.suites);
        }
        sSLSocket.startHandshake();
        this._socket_ = sSLSocket;
        this._controlInput_ = new BufferedReader(new InputStreamReader(sSLSocket.getInputStream(), getControlEncoding()));
        this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(sSLSocket.getOutputStream(), getControlEncoding()));
    }
}
