package org.apache.commons.net.ftp;

import com.baidu.sapi2.callback.LoginCallBack;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.ftp.parser.DefaultFTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory;
import org.apache.commons.net.ftp.parser.MLSxEntryParser;
import org.apache.commons.net.io.CRLFLineReader;
import org.apache.commons.net.io.CopyStreamAdapter;
import org.apache.commons.net.io.CopyStreamEvent;
import org.apache.commons.net.io.CopyStreamListener;
import org.apache.commons.net.io.FromNetASCIIInputStream;
import org.apache.commons.net.io.SocketInputStream;
import org.apache.commons.net.io.SocketOutputStream;
import org.apache.commons.net.io.ToNetASCIIOutputStream;
import org.apache.commons.net.io.Util;

/* loaded from: classes.dex */
public class FTPClient extends FTP implements Configurable {
    public static final int ACTIVE_LOCAL_DATA_CONNECTION_MODE = 0;
    public static final int ACTIVE_REMOTE_DATA_CONNECTION_MODE = 1;
    public static final String FTP_SYSTEM_TYPE = "org.apache.commons.net.ftp.systemType";
    public static final int PASSIVE_LOCAL_DATA_CONNECTION_MODE = 2;
    public static final int PASSIVE_REMOTE_DATA_CONNECTION_MODE = 3;
    public static final String SYSTEM_TYPE_PROPERTIES = "/systemType.properties";
    private static final Pattern __PARMS_PAT = Pattern.compile("(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})");
    private InetAddress __activeExternalHost;
    private int __activeMaxPort;
    private int __activeMinPort;
    private int __bufferSize;
    private FTPClientConfig __configuration;
    private long __controlKeepAliveTimeout;
    private CopyStreamListener __copyStreamListener;
    private int __dataConnectionMode;
    private int __dataTimeout;
    private FTPFileEntryParser __entryParser;
    private String __entryParserKey;
    private HashMap<String, Set<String>> __featuresMap;
    private int __fileFormat;
    private int __fileStructure;
    private int __fileTransferMode;
    private int __fileType;
    private boolean __listHiddenFiles;
    private FTPFileEntryParserFactory __parserFactory;
    private String __passiveHost;
    private int __passivePort;
    private final Random __random;
    private boolean __remoteVerificationEnabled;
    private long __restartOffset;
    private String __systemName;
    private boolean __useEPSVwithIPv4;
    private int __controlKeepAliveReplyTimeout = LoginCallBack.REQUEST_LOGINPROTECT;
    private boolean __autodetectEncoding = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class CSL implements CopyStreamListener {
        private final int currentSoTimeout;
        private final long idle;
        private int notAcked;
        private final FTPClient parent;
        private long time = System.currentTimeMillis();

        CSL(FTPClient fTPClient, long j, int i) {
            this.idle = j;
            this.parent = fTPClient;
            this.currentSoTimeout = fTPClient.getSoTimeout();
            fTPClient.setSoTimeout(i);
        }

        @Override // org.apache.commons.net.io.CopyStreamListener
        public void bytesTransferred(long j, int i, long j2) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.time > this.idle) {
                try {
                    this.parent.__noop();
                } catch (SocketTimeoutException e) {
                    this.notAcked++;
                } catch (IOException e2) {
                }
                this.time = currentTimeMillis;
            }
        }

        @Override // org.apache.commons.net.io.CopyStreamListener
        public void bytesTransferred(CopyStreamEvent copyStreamEvent) {
            bytesTransferred(copyStreamEvent.getTotalBytesTransferred(), copyStreamEvent.getBytesTransferred(), copyStreamEvent.getStreamSize());
        }

        void cleanUp() {
            while (true) {
                int i = this.notAcked;
                this.notAcked = i - 1;
                if (i <= 0) {
                    this.parent.setSoTimeout(this.currentSoTimeout);
                    return;
                }
                this.parent.__getReplyNoReport();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PropertiesSingleton {
        static final Properties PROPERTIES;

        static {
            InputStream resourceAsStream = FTPClient.class.getResourceAsStream(FTPClient.SYSTEM_TYPE_PROPERTIES);
            Properties properties = null;
            if (resourceAsStream != null) {
                properties = new Properties();
                try {
                    properties.load(resourceAsStream);
                    try {
                        resourceAsStream.close();
                    } catch (IOException e) {
                    }
                } catch (IOException e2) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException e3) {
                    }
                } catch (Throwable th) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException e4) {
                    }
                    throw th;
                }
            }
            PROPERTIES = properties;
        }

        private PropertiesSingleton() {
        }
    }

    public FTPClient() {
        __initDefaults();
        this.__dataTimeout = -1;
        this.__remoteVerificationEnabled = true;
        this.__parserFactory = new DefaultFTPFileEntryParserFactory();
        this.__configuration = null;
        this.__listHiddenFiles = false;
        this.__useEPSVwithIPv4 = false;
        this.__random = new Random();
    }

    private void __initDefaults() {
        this.__dataConnectionMode = 0;
        this.__passiveHost = null;
        this.__passivePort = -1;
        this.__activeExternalHost = null;
        this.__activeMinPort = 0;
        this.__activeMaxPort = 0;
        this.__fileType = 0;
        this.__fileStructure = 7;
        this.__fileFormat = 4;
        this.__fileTransferMode = 10;
        this.__restartOffset = 0L;
        this.__systemName = null;
        this.__entryParser = null;
        this.__entryParserKey = "";
        this.__bufferSize = 1024;
        this.__featuresMap = null;
    }

    private CopyStreamListener __mergeListeners(CopyStreamListener copyStreamListener) {
        if (copyStreamListener == null) {
            return this.__copyStreamListener;
        }
        if (this.__copyStreamListener == null) {
            return copyStreamListener;
        }
        CopyStreamAdapter copyStreamAdapter = new CopyStreamAdapter();
        copyStreamAdapter.addCopyStreamListener(copyStreamListener);
        copyStreamAdapter.addCopyStreamListener(this.__copyStreamListener);
        return copyStreamAdapter;
    }

    private void __parseExtendedPassiveModeReply(String str) {
        String trim = str.substring(str.indexOf(40) + 1, str.indexOf(41)).trim();
        char charAt = trim.charAt(0);
        char charAt2 = trim.charAt(1);
        char charAt3 = trim.charAt(2);
        char charAt4 = trim.charAt(trim.length() - 1);
        if (charAt != charAt2 || charAt2 != charAt3 || charAt3 != charAt4) {
            throw new MalformedServerReplyException("Could not parse extended passive host information.\nServer Reply: " + trim);
        }
        try {
            int parseInt = Integer.parseInt(trim.substring(3, trim.length() - 1));
            this.__passiveHost = getRemoteAddress().getHostAddress();
            this.__passivePort = parseInt;
        } catch (NumberFormatException e) {
            throw new MalformedServerReplyException("Could not parse extended passive host information.\nServer Reply: " + trim);
        }
    }

    private void __parsePassiveModeReply(String str) {
        Matcher matcher = __PARMS_PAT.matcher(str);
        if (!matcher.find()) {
            throw new MalformedServerReplyException("Could not parse passive host information.\nServer Reply: " + str);
        }
        this.__passiveHost = matcher.group(1).replace(',', '.');
        try {
            this.__passivePort = Integer.parseInt(matcher.group(3)) | (Integer.parseInt(matcher.group(2)) << 8);
            try {
                if (!InetAddress.getByName(this.__passiveHost).isSiteLocalAddress() || getRemoteAddress().isSiteLocalAddress()) {
                    return;
                }
                String hostAddress = getRemoteAddress().getHostAddress();
                fireReplyReceived(0, "[Replacing site local address " + this.__passiveHost + " with " + hostAddress + "]\n");
                this.__passiveHost = hostAddress;
            } catch (UnknownHostException e) {
                throw new MalformedServerReplyException("Could not parse passive host information.\nServer Reply: " + str);
            }
        } catch (NumberFormatException e2) {
            throw new MalformedServerReplyException("Could not parse passive port information.\nServer Reply: " + str);
        }
    }

    private String __parsePathname(String str) {
        int indexOf = str.indexOf(34) + 1;
        return str.substring(indexOf, str.indexOf(34, indexOf));
    }

    private boolean __storeFile(int i, String str, InputStream inputStream) {
        boolean z = false;
        Socket _openDataConnection_ = _openDataConnection_(i, str);
        if (_openDataConnection_ != null) {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(_openDataConnection_.getOutputStream(), getBufferSize());
            OutputStream toNetASCIIOutputStream = this.__fileType == 0 ? new ToNetASCIIOutputStream(bufferedOutputStream) : bufferedOutputStream;
            CSL csl = this.__controlKeepAliveTimeout > 0 ? new CSL(this, this.__controlKeepAliveTimeout, this.__controlKeepAliveReplyTimeout) : null;
            try {
                Util.copyStream(inputStream, toNetASCIIOutputStream, getBufferSize(), -1L, __mergeListeners(csl), false);
                toNetASCIIOutputStream.close();
                _openDataConnection_.close();
                z = completePendingCommand();
                if (csl != null) {
                    csl.cleanUp();
                }
            } catch (IOException e) {
                Util.closeQuietly(_openDataConnection_);
                throw e;
            }
        }
        return z;
    }

    private OutputStream __storeFileStream(int i, String str) {
        Socket _openDataConnection_ = _openDataConnection_(i, str);
        if (_openDataConnection_ == null) {
            return null;
        }
        OutputStream outputStream = _openDataConnection_.getOutputStream();
        if (this.__fileType == 0) {
            outputStream = new ToNetASCIIOutputStream(new BufferedOutputStream(outputStream, getBufferSize()));
        }
        return new SocketOutputStream(_openDataConnection_, outputStream);
    }

    private int getActivePort() {
        if (this.__activeMinPort <= 0 || this.__activeMaxPort < this.__activeMinPort) {
            return 0;
        }
        return this.__activeMaxPort == this.__activeMinPort ? this.__activeMaxPort : this.__random.nextInt((this.__activeMaxPort - this.__activeMinPort) + 1) + this.__activeMinPort;
    }

    private InetAddress getHostAddress() {
        return this.__activeExternalHost != null ? this.__activeExternalHost : getLocalAddress();
    }

    private static Properties getOverrideProperties() {
        return PropertiesSingleton.PROPERTIES;
    }

    private boolean initFeatureMap() {
        String substring;
        String str;
        if (this.__featuresMap == null) {
            boolean isPositiveCompletion = FTPReply.isPositiveCompletion(feat());
            this.__featuresMap = new HashMap<>();
            if (!isPositiveCompletion) {
                return false;
            }
            for (String str2 : getReplyStrings()) {
                if (str2.startsWith(" ")) {
                    int indexOf = str2.indexOf(32, 1);
                    if (indexOf > 0) {
                        substring = str2.substring(1, indexOf);
                        str = str2.substring(indexOf + 1);
                    } else {
                        substring = str2.substring(1);
                        str = "";
                    }
                    String upperCase = substring.toUpperCase(Locale.ENGLISH);
                    Set<String> set = this.__featuresMap.get(upperCase);
                    if (set == null) {
                        set = new HashSet<>();
                        this.__featuresMap.put(upperCase, set);
                    }
                    set.add(str);
                }
            }
        }
        return true;
    }

    private FTPListParseEngine initiateListParsing(FTPFileEntryParser fTPFileEntryParser, String str) {
        FTPListParseEngine fTPListParseEngine = new FTPListParseEngine(fTPFileEntryParser, this);
        Socket _openDataConnection_ = _openDataConnection_(26, getListArguments(str));
        if (_openDataConnection_ != null) {
            try {
                fTPListParseEngine.readServerList(_openDataConnection_.getInputStream(), getControlEncoding());
                Util.closeQuietly(_openDataConnection_);
                completePendingCommand();
            } catch (Throwable th) {
                Util.closeQuietly(_openDataConnection_);
                throw th;
            }
        }
        return fTPListParseEngine;
    }

    private FTPListParseEngine initiateMListParsing(String str) {
        FTPListParseEngine fTPListParseEngine = new FTPListParseEngine(MLSxEntryParser.getInstance());
        Socket _openDataConnection_ = _openDataConnection_(38, str);
        if (_openDataConnection_ != null) {
            try {
                fTPListParseEngine.readServerList(_openDataConnection_.getInputStream(), getControlEncoding());
            } finally {
                Util.closeQuietly(_openDataConnection_);
                completePendingCommand();
            }
        }
        return fTPListParseEngine;
    }

    private boolean restart(long j) {
        this.__restartOffset = 0L;
        return FTPReply.isPositiveIntermediate(rest(Long.toString(j)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void _connectAction_() {
        super._connectAction_();
        __initDefaults();
        if (this.__autodetectEncoding) {
            ArrayList arrayList = new ArrayList(this._replyLines);
            int i = this._replyCode;
            if (hasFeature("UTF8") || hasFeature("UTF-8")) {
                setControlEncoding("UTF-8");
                this._controlInput_ = new CRLFLineReader(new InputStreamReader(this._input_, getControlEncoding()));
                this._controlOutput_ = new BufferedWriter(new OutputStreamWriter(this._output_, getControlEncoding()));
            }
            this._replyLines.clear();
            this._replyLines.addAll(arrayList);
            this._replyCode = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Socket _openDataConnection_(int i, String str) {
        Socket createSocket;
        boolean z = true;
        if (this.__dataConnectionMode != 0 && this.__dataConnectionMode != 2) {
            return null;
        }
        boolean z2 = getRemoteAddress() instanceof Inet6Address;
        if (this.__dataConnectionMode == 0) {
            ServerSocket createServerSocket = this._serverSocketFactory_.createServerSocket(getActivePort(), 1, getHostAddress());
            if (z2) {
                if (!FTPReply.isPositiveCompletion(eprt(getHostAddress(), createServerSocket.getLocalPort()))) {
                    return null;
                }
            } else if (!FTPReply.isPositiveCompletion(port(getHostAddress(), createServerSocket.getLocalPort()))) {
                return null;
            }
            if (this.__restartOffset > 0 && !restart(this.__restartOffset)) {
                return null;
            }
            if (!FTPReply.isPositivePreliminary(sendCommand(i, str))) {
                return null;
            }
            if (this.__dataTimeout >= 0) {
                createServerSocket.setSoTimeout(this.__dataTimeout);
            }
            try {
                createSocket = createServerSocket.accept();
            } finally {
                createServerSocket.close();
            }
        } else {
            if (!isUseEPSVwithIPv4() && !z2) {
                z = false;
            }
            if (!z || epsv() != 229) {
                if (!z2 && pasv() == 227) {
                    __parsePassiveModeReply(this._replyLines.get(0));
                }
                return null;
            }
            __parseExtendedPassiveModeReply(this._replyLines.get(0));
            createSocket = this._socketFactory_.createSocket();
            createSocket.connect(new InetSocketAddress(this.__passiveHost, this.__passivePort), this.connectTimeout);
            if (this.__restartOffset > 0 && !restart(this.__restartOffset)) {
                createSocket.close();
                return null;
            }
            if (!FTPReply.isPositivePreliminary(sendCommand(i, str))) {
                createSocket.close();
                return null;
            }
        }
        if (!this.__remoteVerificationEnabled || verifyRemote(createSocket)) {
            if (this.__dataTimeout < 0) {
                return createSocket;
            }
            createSocket.setSoTimeout(this.__dataTimeout);
            return createSocket;
        }
        InetAddress inetAddress = createSocket.getInetAddress();
        InetAddress remoteAddress = getRemoteAddress();
        createSocket.close();
        throw new IOException("Host attempting data connection " + inetAddress.getHostAddress() + " is not same as server " + remoteAddress.getHostAddress());
    }

    public boolean abort() {
        return FTPReply.isPositiveCompletion(abor());
    }

    public boolean allocate(int i) {
        return FTPReply.isPositiveCompletion(allo(i));
    }

    public boolean allocate(int i, int i2) {
        return FTPReply.isPositiveCompletion(allo(i, i2));
    }

    public boolean appendFile(String str, InputStream inputStream) {
        return __storeFile(16, str, inputStream);
    }

    public OutputStream appendFileStream(String str) {
        return __storeFileStream(16, str);
    }

    public boolean changeToParentDirectory() {
        return FTPReply.isPositiveCompletion(cdup());
    }

    public boolean changeWorkingDirectory(String str) {
        return FTPReply.isPositiveCompletion(cwd(str));
    }

    public boolean completePendingCommand() {
        return FTPReply.isPositiveCompletion(getReply());
    }

    @Override // org.apache.commons.net.ftp.Configurable
    public void configure(FTPClientConfig fTPClientConfig) {
        this.__configuration = fTPClientConfig;
    }

    public boolean deleteFile(String str) {
        return FTPReply.isPositiveCompletion(dele(str));
    }

    @Override // org.apache.commons.net.ftp.FTP, org.apache.commons.net.SocketClient
    public void disconnect() {
        super.disconnect();
        __initDefaults();
    }

    public boolean doCommand(String str, String str2) {
        return FTPReply.isPositiveCompletion(sendCommand(str, str2));
    }

    public String[] doCommandAsStrings(String str, String str2) {
        if (FTPReply.isPositiveCompletion(sendCommand(str, str2))) {
            return getReplyStrings();
        }
        return null;
    }

    public void enterLocalActiveMode() {
        this.__dataConnectionMode = 0;
        this.__passiveHost = null;
        this.__passivePort = -1;
    }

    public void enterLocalPassiveMode() {
        this.__dataConnectionMode = 2;
        this.__passiveHost = null;
        this.__passivePort = -1;
    }

    public boolean enterRemoteActiveMode(InetAddress inetAddress, int i) {
        if (!FTPReply.isPositiveCompletion(port(inetAddress, i))) {
            return false;
        }
        this.__dataConnectionMode = 1;
        this.__passiveHost = null;
        this.__passivePort = -1;
        return true;
    }

    public boolean enterRemotePassiveMode() {
        if (pasv() != 227) {
            return false;
        }
        this.__dataConnectionMode = 3;
        __parsePassiveModeReply(this._replyLines.get(0));
        return true;
    }

    public String featureValue(String str) {
        String[] featureValues = featureValues(str);
        if (featureValues != null) {
            return featureValues[0];
        }
        return null;
    }

    public String[] featureValues(String str) {
        Set<String> set;
        if (initFeatureMap() && (set = this.__featuresMap.get(str.toUpperCase(Locale.ENGLISH))) != null) {
            return (String[]) set.toArray(new String[set.size()]);
        }
        return null;
    }

    public boolean features() {
        return FTPReply.isPositiveCompletion(feat());
    }

    public boolean getAutodetectUTF8() {
        return this.__autodetectEncoding;
    }

    public int getBufferSize() {
        return this.__bufferSize;
    }

    public int getControlKeepAliveReplyTimeout() {
        return this.__controlKeepAliveReplyTimeout;
    }

    public long getControlKeepAliveTimeout() {
        return this.__controlKeepAliveTimeout / 1000;
    }

    public CopyStreamListener getCopyStreamListener() {
        return this.__copyStreamListener;
    }

    public int getDataConnectionMode() {
        return this.__dataConnectionMode;
    }

    protected String getListArguments(String str) {
        if (!getListHiddenFiles()) {
            return str;
        }
        if (str == null) {
            return "-a";
        }
        StringBuilder sb = new StringBuilder(str.length() + 3);
        sb.append("-a ");
        sb.append(str);
        return sb.toString();
    }

    public boolean getListHiddenFiles() {
        return this.__listHiddenFiles;
    }

    public String getModificationTime(String str) {
        if (FTPReply.isPositiveCompletion(mdtm(str))) {
            return getReplyString();
        }
        return null;
    }

    public String getPassiveHost() {
        return this.__passiveHost;
    }

    public int getPassivePort() {
        return this.__passivePort;
    }

    public long getRestartOffset() {
        return this.__restartOffset;
    }

    public String getStatus() {
        if (FTPReply.isPositiveCompletion(stat())) {
            return getReplyString();
        }
        return null;
    }

    public String getStatus(String str) {
        if (FTPReply.isPositiveCompletion(stat(str))) {
            return getReplyString();
        }
        return null;
    }

    @Deprecated
    public String getSystemName() {
        if (this.__systemName == null && FTPReply.isPositiveCompletion(syst())) {
            this.__systemName = this._replyLines.get(this._replyLines.size() - 1).substring(4);
        }
        return this.__systemName;
    }

    public String getSystemType() {
        if (this.__systemName == null) {
            if (!FTPReply.isPositiveCompletion(syst())) {
                throw new IOException("Unable to determine system type - response: " + getReplyString());
            }
            this.__systemName = this._replyLines.get(this._replyLines.size() - 1).substring(4);
        }
        return this.__systemName;
    }

    public boolean hasFeature(String str) {
        if (initFeatureMap()) {
            return this.__featuresMap.containsKey(str.toUpperCase(Locale.ENGLISH));
        }
        return false;
    }

    public boolean hasFeature(String str, String str2) {
        Set<String> set;
        if (initFeatureMap() && (set = this.__featuresMap.get(str.toUpperCase(Locale.ENGLISH))) != null) {
            return set.contains(str2);
        }
        return false;
    }

    public FTPListParseEngine initiateListParsing() {
        return initiateListParsing(null);
    }

    public FTPListParseEngine initiateListParsing(String str) {
        return initiateListParsing((String) null, str);
    }

    public FTPListParseEngine initiateListParsing(String str, String str2) {
        if (this.__entryParser == null || !this.__entryParserKey.equals(str)) {
            if (str != null) {
                this.__entryParser = this.__parserFactory.createFileEntryParser(str);
                this.__entryParserKey = str;
            } else if (this.__configuration != null) {
                this.__entryParser = this.__parserFactory.createFileEntryParser(this.__configuration);
                this.__entryParserKey = this.__configuration.getServerSystemKey();
            } else {
                String property = System.getProperty(FTP_SYSTEM_TYPE);
                if (property == null) {
                    String systemType = getSystemType();
                    Properties overrideProperties = getOverrideProperties();
                    if (overrideProperties == null || (property = overrideProperties.getProperty(systemType)) == null) {
                        property = systemType;
                    }
                }
                this.__entryParser = this.__parserFactory.createFileEntryParser(property);
                this.__entryParserKey = property;
            }
        }
        return initiateListParsing(this.__entryParser, str2);
    }

    public boolean isRemoteVerificationEnabled() {
        return this.__remoteVerificationEnabled;
    }

    public boolean isUseEPSVwithIPv4() {
        return this.__useEPSVwithIPv4;
    }

    public FTPFile[] listDirectories() {
        return listDirectories(null);
    }

    public FTPFile[] listDirectories(String str) {
        return listFiles(str, FTPFileFilters.DIRECTORIES);
    }

    public FTPFile[] listFiles() {
        return listFiles(null);
    }

    public FTPFile[] listFiles(String str) {
        return initiateListParsing((String) null, str).getFiles();
    }

    public FTPFile[] listFiles(String str, FTPFileFilter fTPFileFilter) {
        return initiateListParsing((String) null, str).getFiles(fTPFileFilter);
    }

    public String listHelp() {
        if (FTPReply.isPositiveCompletion(help())) {
            return getReplyString();
        }
        return null;
    }

    public String listHelp(String str) {
        if (FTPReply.isPositiveCompletion(help(str))) {
            return getReplyString();
        }
        return null;
    }

    public String[] listNames() {
        return listNames(null);
    }

    public String[] listNames(String str) {
        Socket _openDataConnection_ = _openDataConnection_(27, getListArguments(str));
        if (_openDataConnection_ == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(_openDataConnection_.getInputStream(), getControlEncoding()));
        ArrayList arrayList = new ArrayList();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            arrayList.add(readLine);
        }
        bufferedReader.close();
        _openDataConnection_.close();
        if (completePendingCommand()) {
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return null;
    }

    public boolean login(String str, String str2) {
        user(str);
        if (FTPReply.isPositiveCompletion(this._replyCode)) {
            return true;
        }
        if (FTPReply.isPositiveIntermediate(this._replyCode)) {
            return FTPReply.isPositiveCompletion(pass(str2));
        }
        return false;
    }

    public boolean login(String str, String str2, String str3) {
        user(str);
        if (FTPReply.isPositiveCompletion(this._replyCode)) {
            return true;
        }
        if (!FTPReply.isPositiveIntermediate(this._replyCode)) {
            return false;
        }
        pass(str2);
        if (FTPReply.isPositiveCompletion(this._replyCode)) {
            return true;
        }
        if (FTPReply.isPositiveIntermediate(this._replyCode)) {
            return FTPReply.isPositiveCompletion(acct(str3));
        }
        return false;
    }

    public boolean logout() {
        return FTPReply.isPositiveCompletion(quit());
    }

    public boolean makeDirectory(String str) {
        return FTPReply.isPositiveCompletion(mkd(str));
    }

    public FTPFile[] mlistDir() {
        return mlistDir(null);
    }

    public FTPFile[] mlistDir(String str) {
        return initiateMListParsing(str).getFiles();
    }

    public FTPFile[] mlistDir(String str, FTPFileFilter fTPFileFilter) {
        return initiateMListParsing(str).getFiles(fTPFileFilter);
    }

    public FTPFile mlistFile(String str) {
        if (FTPReply.isPositiveCompletion(sendCommand(39, str))) {
            return MLSxEntryParser.parseEntry(getReplyStrings()[1].substring(1));
        }
        return null;
    }

    public String printWorkingDirectory() {
        if (pwd() != 257) {
            return null;
        }
        return __parsePathname(this._replyLines.get(this._replyLines.size() - 1));
    }

    boolean reinitialize() {
        rein();
        if (!FTPReply.isPositiveCompletion(this._replyCode) && (!FTPReply.isPositivePreliminary(this._replyCode) || !FTPReply.isPositiveCompletion(getReply()))) {
            return false;
        }
        __initDefaults();
        return true;
    }

    public boolean remoteAppend(String str) {
        if (this.__dataConnectionMode == 1 || this.__dataConnectionMode == 3) {
            return FTPReply.isPositivePreliminary(appe(str));
        }
        return false;
    }

    public boolean remoteRetrieve(String str) {
        if (this.__dataConnectionMode == 1 || this.__dataConnectionMode == 3) {
            return FTPReply.isPositivePreliminary(retr(str));
        }
        return false;
    }

    public boolean remoteStore(String str) {
        if (this.__dataConnectionMode == 1 || this.__dataConnectionMode == 3) {
            return FTPReply.isPositivePreliminary(stor(str));
        }
        return false;
    }

    public boolean remoteStoreUnique() {
        if (this.__dataConnectionMode == 1 || this.__dataConnectionMode == 3) {
            return FTPReply.isPositivePreliminary(stou());
        }
        return false;
    }

    public boolean remoteStoreUnique(String str) {
        if (this.__dataConnectionMode == 1 || this.__dataConnectionMode == 3) {
            return FTPReply.isPositivePreliminary(stou(str));
        }
        return false;
    }

    public boolean removeDirectory(String str) {
        return FTPReply.isPositiveCompletion(rmd(str));
    }

    public boolean rename(String str, String str2) {
        if (FTPReply.isPositiveIntermediate(rnfr(str))) {
            return FTPReply.isPositiveCompletion(rnto(str2));
        }
        return false;
    }

    public boolean retrieveFile(String str, OutputStream outputStream) {
        boolean z = false;
        Socket _openDataConnection_ = _openDataConnection_(13, str);
        if (_openDataConnection_ != null) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(_openDataConnection_.getInputStream(), getBufferSize());
            InputStream fromNetASCIIInputStream = this.__fileType == 0 ? new FromNetASCIIInputStream(bufferedInputStream) : bufferedInputStream;
            CSL csl = this.__controlKeepAliveTimeout > 0 ? new CSL(this, this.__controlKeepAliveTimeout, this.__controlKeepAliveReplyTimeout) : null;
            try {
                Util.copyStream(fromNetASCIIInputStream, outputStream, getBufferSize(), -1L, __mergeListeners(csl), false);
                Util.closeQuietly(_openDataConnection_);
                z = completePendingCommand();
                if (csl != null) {
                    csl.cleanUp();
                }
            } catch (Throwable th) {
                Util.closeQuietly(_openDataConnection_);
                throw th;
            }
        }
        return z;
    }

    public InputStream retrieveFileStream(String str) {
        Socket _openDataConnection_ = _openDataConnection_(13, str);
        if (_openDataConnection_ == null) {
            return null;
        }
        InputStream inputStream = _openDataConnection_.getInputStream();
        if (this.__fileType == 0) {
            inputStream = new FromNetASCIIInputStream(new BufferedInputStream(inputStream, getBufferSize()));
        }
        return new SocketInputStream(_openDataConnection_, inputStream);
    }

    public boolean sendNoOp() {
        return FTPReply.isPositiveCompletion(noop());
    }

    public boolean sendSiteCommand(String str) {
        return FTPReply.isPositiveCompletion(site(str));
    }

    public void setActiveExternalIPAddress(String str) {
        this.__activeExternalHost = InetAddress.getByName(str);
    }

    public void setActivePortRange(int i, int i2) {
        this.__activeMinPort = i;
        this.__activeMaxPort = i2;
    }

    public void setAutodetectUTF8(boolean z) {
        this.__autodetectEncoding = z;
    }

    public void setBufferSize(int i) {
        this.__bufferSize = i;
    }

    public void setControlKeepAliveReplyTimeout(int i) {
        this.__controlKeepAliveReplyTimeout = i;
    }

    public void setControlKeepAliveTimeout(long j) {
        this.__controlKeepAliveTimeout = 1000 * j;
    }

    public void setCopyStreamListener(CopyStreamListener copyStreamListener) {
        this.__copyStreamListener = copyStreamListener;
    }

    public void setDataTimeout(int i) {
        this.__dataTimeout = i;
    }

    public boolean setFileStructure(int i) {
        if (!FTPReply.isPositiveCompletion(stru(i))) {
            return false;
        }
        this.__fileStructure = i;
        return true;
    }

    public boolean setFileTransferMode(int i) {
        if (!FTPReply.isPositiveCompletion(mode(i))) {
            return false;
        }
        this.__fileTransferMode = i;
        return true;
    }

    public boolean setFileType(int i) {
        if (!FTPReply.isPositiveCompletion(type(i))) {
            return false;
        }
        this.__fileType = i;
        this.__fileFormat = 4;
        return true;
    }

    public boolean setFileType(int i, int i2) {
        if (!FTPReply.isPositiveCompletion(type(i, i2))) {
            return false;
        }
        this.__fileType = i;
        this.__fileFormat = i2;
        return true;
    }

    public void setListHiddenFiles(boolean z) {
        this.__listHiddenFiles = z;
    }

    public boolean setModificationTime(String str, String str2) {
        return FTPReply.isPositiveCompletion(mfmt(str, str2));
    }

    public void setParserFactory(FTPFileEntryParserFactory fTPFileEntryParserFactory) {
        this.__parserFactory = fTPFileEntryParserFactory;
    }

    public void setRemoteVerificationEnabled(boolean z) {
        this.__remoteVerificationEnabled = z;
    }

    public void setRestartOffset(long j) {
        if (j >= 0) {
            this.__restartOffset = j;
        }
    }

    public void setUseEPSVwithIPv4(boolean z) {
        this.__useEPSVwithIPv4 = z;
    }

    public boolean storeFile(String str, InputStream inputStream) {
        return __storeFile(14, str, inputStream);
    }

    public OutputStream storeFileStream(String str) {
        return __storeFileStream(14, str);
    }

    public boolean storeUniqueFile(InputStream inputStream) {
        return __storeFile(15, null, inputStream);
    }

    public boolean storeUniqueFile(String str, InputStream inputStream) {
        return __storeFile(15, str, inputStream);
    }

    public OutputStream storeUniqueFileStream() {
        return __storeFileStream(15, null);
    }

    public OutputStream storeUniqueFileStream(String str) {
        return __storeFileStream(15, str);
    }

    public boolean structureMount(String str) {
        return FTPReply.isPositiveCompletion(smnt(str));
    }
}
