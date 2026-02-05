package jcifs.smb;

import com.baidu.sapi2.callback.LoginCallBack;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.msrpc.MsrpcDfsRootEnum;
import jcifs.dcerpc.msrpc.MsrpcShareEnum;
import jcifs.dcerpc.msrpc.MsrpcShareGetInfo;
import jcifs.netbios.NbtAddress;
import jcifs.util.LogStream;
import org.apache.commons.net.ftp.FTPCommand;

/* loaded from: classes.dex */
public class SmbFile extends URLConnection implements SmbConstants {
    public static final int ATTR_ARCHIVE = 32;
    static final int ATTR_COMPRESSED = 2048;
    public static final int ATTR_DIRECTORY = 16;
    static final int ATTR_GET_MASK = 32767;
    public static final int ATTR_HIDDEN = 2;
    static final int ATTR_NORMAL = 128;
    public static final int ATTR_READONLY = 1;
    static final int ATTR_SET_MASK = 12455;
    public static final int ATTR_SYSTEM = 4;
    static final int ATTR_TEMPORARY = 256;
    public static final int ATTR_VOLUME = 8;
    static final int DEFAULT_ATTR_EXPIRATION_PERIOD = 5000;
    public static final int FILE_NO_SHARE = 0;
    public static final int FILE_SHARE_DELETE = 4;
    public static final int FILE_SHARE_READ = 1;
    public static final int FILE_SHARE_WRITE = 2;
    static final int O_APPEND = 4;
    static final int O_CREAT = 16;
    static final int O_EXCL = 32;
    static final int O_RDONLY = 1;
    static final int O_RDWR = 3;
    static final int O_TRUNC = 64;
    static final int O_WRONLY = 2;
    public static final int TYPE_COMM = 64;
    public static final int TYPE_FILESYSTEM = 1;
    public static final int TYPE_NAMED_PIPE = 16;
    public static final int TYPE_PRINTER = 32;
    public static final int TYPE_SERVER = 4;
    public static final int TYPE_SHARE = 8;
    public static final int TYPE_WORKGROUP = 2;
    static long attrExpirationPeriod;
    protected static Dfs dfs;
    static boolean ignoreCopyToException;
    int addressIndex;
    UniAddress[] addresses;
    private long attrExpiration;
    private int attributes;
    NtlmPasswordAuthentication auth;
    private SmbComBlankResponse blank_resp;
    private String canon;
    private long createTime;
    private DfsReferral dfsReferral;
    int fid;
    private boolean isExists;
    private long lastModified;
    boolean opened;
    private String share;
    private int shareAccess;
    private long size;
    private long sizeExpiration;
    SmbTree tree;
    int tree_num;
    int type;
    String unc;
    static final int HASH_DOT = ".".hashCode();
    static final int HASH_DOT_DOT = "..".hashCode();
    static LogStream log = LogStream.getInstance();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class WriterThread extends Thread {

        /* renamed from: b, reason: collision with root package name */
        byte[] f3452b;
        SmbFile dest;
        SmbException e;
        int n;
        long off;
        boolean ready;
        SmbComWrite req;
        SmbComWriteAndX reqx;
        ServerMessageBlock resp;
        boolean useNTSmbs;

        WriterThread() {
            super("JCIFS-WriterThread");
            this.e = null;
            this.useNTSmbs = SmbFile.this.tree.session.transport.hasCapability(16);
            if (this.useNTSmbs) {
                this.reqx = new SmbComWriteAndX();
                this.resp = new SmbComWriteAndXResponse();
            } else {
                this.req = new SmbComWrite();
                this.resp = new SmbComWriteResponse();
            }
            this.ready = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (this) {
                while (true) {
                    try {
                        notify();
                        this.ready = true;
                        while (this.ready) {
                            wait();
                        }
                        if (this.n == -1) {
                            return;
                        }
                        if (this.useNTSmbs) {
                            this.reqx.setParam(this.dest.fid, this.off, this.n, this.f3452b, 0, this.n);
                            this.dest.send(this.reqx, this.resp);
                        } else {
                            this.req.setParam(this.dest.fid, this.off, this.n, this.f3452b, 0, this.n);
                            this.dest.send(this.req, this.resp);
                        }
                    } catch (SmbException e) {
                        this.e = e;
                        notify();
                        return;
                    } catch (Exception e2) {
                        this.e = new SmbException("WriterThread", e2);
                        notify();
                        return;
                    }
                }
            }
        }

        synchronized void write(byte[] bArr, int i, SmbFile smbFile, long j) {
            this.f3452b = bArr;
            this.n = i;
            this.dest = smbFile;
            this.off = j;
            this.ready = false;
            notify();
        }
    }

    static {
        try {
            Class.forName("jcifs.Config");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        attrExpirationPeriod = Config.getLong("jcifs.smb.client.attrExpirationPeriod", 5000L);
        ignoreCopyToException = Config.getBoolean("jcifs.smb.client.ignoreCopyToException", true);
        dfs = new Dfs();
    }

    public SmbFile(String str) {
        this(new URL((URL) null, str, Handler.SMB_HANDLER));
    }

    public SmbFile(String str, String str2) {
        this(new URL(new URL((URL) null, str, Handler.SMB_HANDLER), str2, Handler.SMB_HANDLER));
    }

    public SmbFile(String str, String str2, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        this(new URL(new URL((URL) null, str, Handler.SMB_HANDLER), str2, Handler.SMB_HANDLER), ntlmPasswordAuthentication);
    }

    public SmbFile(String str, String str2, NtlmPasswordAuthentication ntlmPasswordAuthentication, int i) {
        this(new URL(new URL((URL) null, str, Handler.SMB_HANDLER), str2, Handler.SMB_HANDLER), ntlmPasswordAuthentication);
        if ((i & (-8)) != 0) {
            throw new RuntimeException("Illegal shareAccess parameter");
        }
        this.shareAccess = i;
    }

    public SmbFile(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        this(new URL((URL) null, str, Handler.SMB_HANDLER), ntlmPasswordAuthentication);
    }

    public SmbFile(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication, int i) {
        this(new URL((URL) null, str, Handler.SMB_HANDLER), ntlmPasswordAuthentication);
        if ((i & (-8)) != 0) {
            throw new RuntimeException("Illegal shareAccess parameter");
        }
        this.shareAccess = i;
    }

    public SmbFile(URL url) {
        this(url, new NtlmPasswordAuthentication(url.getUserInfo()));
    }

    public SmbFile(URL url, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        super(url);
        this.shareAccess = 7;
        this.blank_resp = null;
        this.dfsReferral = null;
        this.tree = null;
        this.auth = ntlmPasswordAuthentication == null ? new NtlmPasswordAuthentication(url.getUserInfo()) : ntlmPasswordAuthentication;
        getUncPath0();
    }

    public SmbFile(SmbFile smbFile, String str) {
        this(smbFile.isWorkgroup0() ? new URL((URL) null, "smb://" + str, Handler.SMB_HANDLER) : new URL(smbFile.url, str, Handler.SMB_HANDLER), smbFile.auth);
    }

    public SmbFile(SmbFile smbFile, String str, int i) {
        this(smbFile.isWorkgroup0() ? new URL((URL) null, "smb://" + str, Handler.SMB_HANDLER) : new URL(smbFile.url, str, Handler.SMB_HANDLER), smbFile.auth);
        if ((i & (-8)) != 0) {
            throw new RuntimeException("Illegal shareAccess parameter");
        }
        this.shareAccess = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    SmbFile(SmbFile smbFile, String str, int i, int i2, long j, long j2, long j3) {
        this(r0);
        URL url;
        if (smbFile.isWorkgroup0()) {
            url = new URL((URL) null, "smb://" + str + "/", Handler.SMB_HANDLER);
        } else {
            url = new URL(smbFile.url, str + ((i2 & 16) > 0 ? "/" : ""));
        }
        this.auth = smbFile.auth;
        if (smbFile.share != null) {
            this.tree = smbFile.tree;
            this.dfsReferral = smbFile.dfsReferral;
        }
        int length = str.length() - 1;
        str = str.charAt(length) == '/' ? str.substring(0, length) : str;
        if (smbFile.share == null) {
            this.unc = "\\";
        } else if (smbFile.unc.equals("\\")) {
            this.unc = '\\' + str;
        } else {
            this.unc = smbFile.unc + '\\' + str;
        }
        this.type = i;
        this.attributes = i2;
        this.createTime = j;
        this.lastModified = j2;
        this.size = j3;
        this.isExists = true;
        long currentTimeMillis = System.currentTimeMillis() + attrExpirationPeriod;
        this.sizeExpiration = currentTimeMillis;
        this.attrExpiration = currentTimeMillis;
    }

    private SmbComBlankResponse blank_resp() {
        if (this.blank_resp == null) {
            this.blank_resp = new SmbComBlankResponse();
        }
        return this.blank_resp;
    }

    private void processAces(ACE[] aceArr, boolean z) {
        int i = 0;
        String serverWithDfs = getServerWithDfs();
        if (!z) {
            while (i < aceArr.length) {
                aceArr[i].sid.origin_server = serverWithDfs;
                aceArr[i].sid.origin_auth = this.auth;
                i++;
            }
            return;
        }
        SID[] sidArr = new SID[aceArr.length];
        for (int i2 = 0; i2 < aceArr.length; i2++) {
            sidArr[i2] = aceArr[i2].sid;
        }
        while (i < sidArr.length) {
            int length = sidArr.length - i;
            if (length > 64) {
                length = 64;
            }
            SID.resolveSids(serverWithDfs, this.auth, sidArr, i, length);
            i += 64;
        }
    }

    private long queryFSInformation(int i) {
        Trans2QueryFSInformationResponse trans2QueryFSInformationResponse = new Trans2QueryFSInformationResponse(i);
        send(new Trans2QueryFSInformation(i), trans2QueryFSInformationResponse);
        if (this.type == 8) {
            this.size = trans2QueryFSInformationResponse.info.getCapacity();
            this.sizeExpiration = System.currentTimeMillis() + attrExpirationPeriod;
        }
        return trans2QueryFSInformationResponse.info.getFree();
    }

    static String queryLookup(String str, String str2) {
        int i = 0;
        char[] charArray = str.toCharArray();
        int i2 = 0;
        for (int i3 = 0; i3 < charArray.length; i3++) {
            char c = charArray[i3];
            if (c == '&') {
                if (i > i2 && new String(charArray, i2, i - i2).equalsIgnoreCase(str2)) {
                    int i4 = i + 1;
                    return new String(charArray, i4, i3 - i4);
                }
                i2 = i3 + 1;
            } else if (c == '=') {
                i = i3;
            }
        }
        if (i <= i2 || !new String(charArray, i2, i - i2).equalsIgnoreCase(str2)) {
            return null;
        }
        int i5 = i + 1;
        return new String(charArray, i5, charArray.length - i5);
    }

    public boolean canRead() {
        if (getType() == 16) {
            return true;
        }
        return exists();
    }

    public boolean canWrite() {
        if (getType() == 16) {
            return true;
        }
        return exists() && (this.attributes & 1) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() {
        close(0L);
    }

    void close(int i, long j) {
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("close: " + i);
        }
        send(new SmbComClose(i, j), blank_resp());
    }

    void close(long j) {
        if (isOpen()) {
            close(this.fid, j);
            this.opened = false;
        }
    }

    @Override // java.net.URLConnection
    public void connect() {
        if (isConnected()) {
            return;
        }
        getUncPath0();
        getFirstAddress();
        while (true) {
            try {
                doConnect();
                return;
            } catch (SmbAuthException e) {
                throw e;
            } catch (SmbException e2) {
                if (getNextAddress() == null) {
                    throw e2;
                }
                LogStream logStream = log;
                if (LogStream.level >= 3) {
                    e2.printStackTrace(log);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void connect0() {
        try {
            connect();
        } catch (UnknownHostException e) {
            throw new SmbException("Failed to connect to server", e);
        } catch (SmbException e2) {
            throw e2;
        } catch (IOException e3) {
            throw new SmbException("Failed to connect to server", e3);
        }
    }

    public void copyTo(SmbFile smbFile) {
        if (this.share == null || smbFile.share == null) {
            throw new SmbException("Invalid operation for workgroups or servers");
        }
        SmbComReadAndX smbComReadAndX = new SmbComReadAndX();
        SmbComReadAndXResponse smbComReadAndXResponse = new SmbComReadAndXResponse();
        connect0();
        smbFile.connect0();
        resolveDfs(null);
        try {
            if (getAddress().equals(smbFile.getAddress()) && this.canon.regionMatches(true, 0, smbFile.canon, 0, Math.min(this.canon.length(), smbFile.canon.length()))) {
                throw new SmbException("Source and destination paths overlap.");
            }
        } catch (UnknownHostException e) {
        }
        WriterThread writerThread = new WriterThread();
        writerThread.setDaemon(true);
        writerThread.start();
        SmbTransport smbTransport = this.tree.session.transport;
        SmbTransport smbTransport2 = smbFile.tree.session.transport;
        if (smbTransport.snd_buf_size < smbTransport2.snd_buf_size) {
            smbTransport2.snd_buf_size = smbTransport.snd_buf_size;
        } else {
            smbTransport.snd_buf_size = smbTransport2.snd_buf_size;
        }
        int min = Math.min(smbTransport.rcv_buf_size - 70, smbTransport.snd_buf_size - 70);
        try {
            copyTo0(smbFile, (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 2, min), min, writerThread, smbComReadAndX, smbComReadAndXResponse);
        } finally {
            writerThread.write(null, -1, null, 0L);
        }
    }

    void copyTo0(SmbFile smbFile, byte[][] bArr, int i, WriterThread writerThread, SmbComReadAndX smbComReadAndX, SmbComReadAndXResponse smbComReadAndXResponse) {
        if (this.attrExpiration < System.currentTimeMillis()) {
            this.attributes = 17;
            this.createTime = 0L;
            this.lastModified = 0L;
            this.isExists = false;
            Info queryPath = queryPath(getUncPath0(), 257);
            this.attributes = queryPath.getAttributes();
            this.createTime = queryPath.getCreateTime();
            this.lastModified = queryPath.getLastWriteTime();
            this.isExists = true;
            this.attrExpiration = System.currentTimeMillis() + attrExpirationPeriod;
        }
        if (isDirectory()) {
            if (smbFile.getUncPath0().length() > 1) {
                try {
                    smbFile.mkdir();
                    smbFile.setPathInformation(this.attributes, this.createTime, this.lastModified);
                } catch (SmbException e) {
                    if (e.getNtStatus() != -1073741790 && e.getNtStatus() != -1073741771) {
                        throw e;
                    }
                }
            }
            SmbFile[] listFiles = listFiles("*", 22, null, null);
            int i2 = 0;
            while (true) {
                try {
                    int i3 = i2;
                    if (i3 >= listFiles.length) {
                        return;
                    }
                    listFiles[i3].copyTo0(new SmbFile(smbFile, listFiles[i3].getName(), listFiles[i3].type, listFiles[i3].attributes, listFiles[i3].createTime, listFiles[i3].lastModified, listFiles[i3].size), bArr, i, writerThread, smbComReadAndX, smbComReadAndXResponse);
                    i2 = i3 + 1;
                } catch (MalformedURLException e2) {
                    throw new SmbException(this.url.toString(), e2);
                } catch (UnknownHostException e3) {
                    throw new SmbException(this.url.toString(), e3);
                }
            }
        } else {
            try {
                open(1, 0, 128, 0);
                try {
                    smbFile.open(82, 258, this.attributes, 0);
                } catch (SmbAuthException e4) {
                    if ((smbFile.attributes & 1) == 0) {
                        throw e4;
                    }
                    smbFile.setPathInformation(smbFile.attributes & (-2), 0L, 0L);
                    smbFile.open(82, 258, this.attributes, 0);
                }
                boolean z = false;
                long j = 0;
                while (true) {
                    boolean z2 = z;
                    smbComReadAndX.setParam(this.fid, j, i);
                    smbComReadAndXResponse.setParam(bArr[z2 ? 1 : 0], 0);
                    send(smbComReadAndX, smbComReadAndXResponse);
                    synchronized (writerThread) {
                        if (writerThread.e != null) {
                            throw writerThread.e;
                        }
                        while (!writerThread.ready) {
                            try {
                                writerThread.wait();
                            } catch (InterruptedException e5) {
                                throw new SmbException(smbFile.url.toString(), e5);
                            }
                        }
                        if (writerThread.e != null) {
                            throw writerThread.e;
                        }
                        if (smbComReadAndXResponse.dataLength <= 0) {
                            smbFile.send(new Trans2SetFileInformation(smbFile.fid, this.attributes, this.createTime, this.lastModified), new Trans2SetFileInformationResponse());
                            smbFile.close(0L);
                            return;
                        }
                        writerThread.write(bArr[z2 ? 1 : 0], smbComReadAndXResponse.dataLength, smbFile, j);
                    }
                    z = !z2;
                    j += smbComReadAndXResponse.dataLength;
                }
            } catch (SmbException e6) {
                if (!ignoreCopyToException) {
                    throw new SmbException("Failed to copy file from [" + toString() + "] to [" + smbFile.toString() + "]", e6);
                }
                LogStream logStream = log;
                if (LogStream.level > 1) {
                    e6.printStackTrace(log);
                }
            } finally {
                close();
            }
        }
    }

    public void createNewFile() {
        if (getUncPath0().length() == 1) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        close(open0(51, 0, 128, 0), 0L);
    }

    public long createTime() {
        if (getUncPath0().length() <= 1) {
            return 0L;
        }
        exists();
        return this.createTime;
    }

    public void delete() {
        exists();
        getUncPath0();
        delete(this.unc);
    }

    void delete(String str) {
        if (getUncPath0().length() == 1) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        if (System.currentTimeMillis() > this.attrExpiration) {
            this.attributes = 17;
            this.createTime = 0L;
            this.lastModified = 0L;
            this.isExists = false;
            Info queryPath = queryPath(getUncPath0(), 257);
            this.attributes = queryPath.getAttributes();
            this.createTime = queryPath.getCreateTime();
            this.lastModified = queryPath.getLastWriteTime();
            this.attrExpiration = System.currentTimeMillis() + attrExpirationPeriod;
            this.isExists = true;
        }
        if ((this.attributes & 1) != 0) {
            setReadWrite();
        }
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("delete: " + str);
        }
        if ((this.attributes & 16) != 0) {
            try {
                for (SmbFile smbFile : listFiles("*", 22, null, null)) {
                    smbFile.delete();
                }
            } catch (SmbException e) {
                if (e.getNtStatus() != -1073741809) {
                    throw e;
                }
            }
            send(new SmbComDeleteDirectory(str), blank_resp());
        } else {
            send(new SmbComDelete(str), blank_resp());
        }
        this.sizeExpiration = 0L;
        this.attrExpiration = 0L;
    }

    void doConnect() {
        SmbTransport smbTransport;
        UniAddress address = getAddress();
        if (this.tree != null) {
            smbTransport = this.tree.session.transport;
        } else {
            smbTransport = SmbTransport.getSmbTransport(address, this.url.getPort());
            this.tree = smbTransport.getSmbSession(this.auth).getSmbTree(this.share, null);
        }
        String serverWithDfs = getServerWithDfs();
        this.tree.inDomainDfs = dfs.resolve(serverWithDfs, this.tree.share, null, this.auth) != null;
        if (this.tree.inDomainDfs) {
            this.tree.connectionState = 2;
        }
        try {
            LogStream logStream = log;
            if (LogStream.level >= 3) {
                log.println("doConnect: " + address);
            }
            this.tree.treeConnect(null, null);
        } catch (SmbAuthException e) {
            if (this.share == null) {
                this.tree = smbTransport.getSmbSession(NtlmPasswordAuthentication.NULL).getSmbTree(null, null);
                this.tree.treeConnect(null, null);
                return;
            }
            NtlmPasswordAuthentication requestNtlmPasswordAuthentication = NtlmAuthenticator.requestNtlmPasswordAuthentication(this.url.toString(), e);
            if (requestNtlmPasswordAuthentication == null) {
                LogStream logStream2 = log;
                if (LogStream.level >= 1 && hasNextAddress()) {
                    e.printStackTrace(log);
                }
                throw e;
            }
            this.auth = requestNtlmPasswordAuthentication;
            this.tree = smbTransport.getSmbSession(this.auth).getSmbTree(this.share, null);
            this.tree.inDomainDfs = dfs.resolve(serverWithDfs, this.tree.share, null, this.auth) != null;
            if (this.tree.inDomainDfs) {
                this.tree.connectionState = 2;
            }
            this.tree.treeConnect(null, null);
        }
    }

    FileEntry[] doDfsRootEnum() {
        DcerpcHandle handle = DcerpcHandle.getHandle("ncacn_np:" + getAddress().getHostAddress() + "[\\PIPE\\netdfs]", this.auth);
        try {
            MsrpcDfsRootEnum msrpcDfsRootEnum = new MsrpcDfsRootEnum(getServer());
            handle.sendrecv(msrpcDfsRootEnum);
            if (msrpcDfsRootEnum.retval != 0) {
                throw new SmbException(msrpcDfsRootEnum.retval, true);
            }
            return msrpcDfsRootEnum.getEntries();
        } finally {
            try {
                handle.close();
            } catch (IOException e) {
                LogStream logStream = log;
                if (LogStream.level >= 4) {
                    e.printStackTrace(log);
                }
            }
        }
    }

    void doEnum(ArrayList arrayList, boolean z, String str, int i, SmbFilenameFilter smbFilenameFilter, SmbFileFilter smbFileFilter) {
        int i2;
        String str2;
        if (smbFileFilter == null || !(smbFileFilter instanceof DosFileFilter)) {
            i2 = i;
            str2 = str;
        } else {
            DosFileFilter dosFileFilter = (DosFileFilter) smbFileFilter;
            if (dosFileFilter.wildcard != null) {
                str = dosFileFilter.wildcard;
            }
            i2 = dosFileFilter.attributes;
            str2 = str;
        }
        try {
            if (this.url.getHost().length() == 0 || getType() == 2) {
                doNetServerEnum(arrayList, z, str2, i2, smbFilenameFilter, smbFileFilter);
            } else if (this.share == null) {
                doShareEnum(arrayList, z, str2, i2, smbFilenameFilter, smbFileFilter);
            } else {
                doFindFirstNext(arrayList, z, str2, i2, smbFilenameFilter, smbFileFilter);
            }
        } catch (MalformedURLException e) {
            throw new SmbException(this.url.toString(), e);
        } catch (UnknownHostException e2) {
            throw new SmbException(this.url.toString(), e2);
        }
    }

    void doFindFirstNext(ArrayList arrayList, boolean z, String str, int i, SmbFilenameFilter smbFilenameFilter, SmbFileFilter smbFileFilter) {
        int hashCode;
        String uncPath0 = getUncPath0();
        if (this.url.getPath().lastIndexOf(47) != r3.length() - 1) {
            throw new SmbException(this.url.toString() + " directory must end with '/'");
        }
        Trans2FindFirst2 trans2FindFirst2 = new Trans2FindFirst2(uncPath0, str, i);
        Trans2FindFirst2Response trans2FindFirst2Response = new Trans2FindFirst2Response();
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("doFindFirstNext: " + trans2FindFirst2.path);
        }
        send(trans2FindFirst2, trans2FindFirst2Response);
        int i2 = trans2FindFirst2Response.sid;
        Trans2FindNext2 trans2FindNext2 = new Trans2FindNext2(i2, trans2FindFirst2Response.resumeKey, trans2FindFirst2Response.lastName);
        trans2FindFirst2Response.subCommand = (byte) 2;
        while (true) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= trans2FindFirst2Response.numEntries) {
                    break;
                }
                FileEntry fileEntry = trans2FindFirst2Response.results[i4];
                String name = fileEntry.getName();
                if ((name.length() >= 3 || (((hashCode = name.hashCode()) != HASH_DOT && hashCode != HASH_DOT_DOT) || (!name.equals(".") && !name.equals("..")))) && ((smbFilenameFilter == null || smbFilenameFilter.accept(this, name)) && name.length() > 0)) {
                    SmbFile smbFile = new SmbFile(this, name, 1, fileEntry.getAttributes(), fileEntry.createTime(), fileEntry.lastModified(), fileEntry.length());
                    if (smbFileFilter == null || smbFileFilter.accept(smbFile)) {
                        if (z) {
                            arrayList.add(smbFile);
                        } else {
                            arrayList.add(name);
                        }
                    }
                }
                i3 = i4 + 1;
            }
            if (trans2FindFirst2Response.isEndOfSearch || trans2FindFirst2Response.numEntries == 0) {
                try {
                    send(new SmbComFindClose2(i2), blank_resp());
                    return;
                } catch (SmbException e) {
                    LogStream logStream2 = log;
                    if (LogStream.level >= 4) {
                        e.printStackTrace(log);
                        return;
                    }
                    return;
                }
            }
            trans2FindNext2.reset(trans2FindFirst2Response.resumeKey, trans2FindFirst2Response.lastName);
            trans2FindFirst2Response.reset();
            send(trans2FindNext2, trans2FindFirst2Response);
        }
    }

    FileEntry[] doMsrpcShareEnum() {
        MsrpcShareEnum msrpcShareEnum = new MsrpcShareEnum(this.url.getHost());
        DcerpcHandle handle = DcerpcHandle.getHandle("ncacn_np:" + getAddress().getHostAddress() + "[\\PIPE\\srvsvc]", this.auth);
        try {
            handle.sendrecv(msrpcShareEnum);
            if (msrpcShareEnum.retval != 0) {
                throw new SmbException(msrpcShareEnum.retval, true);
            }
            return msrpcShareEnum.getEntries();
        } finally {
            try {
                handle.close();
            } catch (IOException e) {
                LogStream logStream = log;
                if (LogStream.level >= 4) {
                    e.printStackTrace(log);
                }
            }
        }
    }

    void doNetServerEnum(ArrayList arrayList, boolean z, String str, int i, SmbFilenameFilter smbFilenameFilter, SmbFileFilter smbFileFilter) {
        NetServerEnum2Response netServerEnum2Response;
        NetServerEnum2 netServerEnum2;
        boolean z2;
        int type = this.url.getHost().length() == 0 ? 0 : getType();
        if (type == 0) {
            connect0();
            NetServerEnum2 netServerEnum22 = new NetServerEnum2(this.tree.session.transport.server.oemDomainName, Integer.MIN_VALUE);
            netServerEnum2Response = new NetServerEnum2Response();
            netServerEnum2 = netServerEnum22;
        } else {
            if (type != 2) {
                throw new SmbException("The requested list operations is invalid: " + this.url.toString());
            }
            NetServerEnum2 netServerEnum23 = new NetServerEnum2(this.url.getHost(), -1);
            netServerEnum2Response = new NetServerEnum2Response();
            netServerEnum2 = netServerEnum23;
        }
        do {
            send(netServerEnum2, netServerEnum2Response);
            if (netServerEnum2Response.status != 0 && netServerEnum2Response.status != 234) {
                throw new SmbException(netServerEnum2Response.status, true);
            }
            z2 = netServerEnum2Response.status == 234;
            int i2 = z2 ? netServerEnum2Response.numEntries - 1 : netServerEnum2Response.numEntries;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= i2) {
                    break;
                }
                FileEntry fileEntry = netServerEnum2Response.results[i4];
                String name = fileEntry.getName();
                if ((smbFilenameFilter == null || smbFilenameFilter.accept(this, name)) && name.length() > 0) {
                    SmbFile smbFile = new SmbFile(this, name, fileEntry.getType(), 17, 0L, 0L, 0L);
                    if (smbFileFilter == null || smbFileFilter.accept(smbFile)) {
                        if (z) {
                            arrayList.add(smbFile);
                        } else {
                            arrayList.add(name);
                        }
                    }
                }
                i3 = i4 + 1;
            }
            if (getType() != 2) {
                return;
            }
            netServerEnum2.subCommand = (byte) -41;
            netServerEnum2.reset(0, netServerEnum2Response.lastName);
            netServerEnum2Response.reset();
        } while (z2);
    }

    FileEntry[] doNetShareEnum() {
        ServerMessageBlock netShareEnum = new NetShareEnum();
        NetShareEnumResponse netShareEnumResponse = new NetShareEnumResponse();
        send(netShareEnum, netShareEnumResponse);
        if (netShareEnumResponse.status != 0) {
            throw new SmbException(netShareEnumResponse.status, true);
        }
        return netShareEnumResponse.results;
    }

    void doShareEnum(ArrayList arrayList, boolean z, String str, int i, SmbFilenameFilter smbFilenameFilter, SmbFileFilter smbFileFilter) {
        FileEntry[] doNetShareEnum;
        if (this.url.getPath().lastIndexOf(47) != r1.length() - 1) {
            throw new SmbException(this.url.toString() + " directory must end with '/'");
        }
        if (getType() != 4) {
            throw new SmbException("The requested list operations is invalid: " + this.url.toString());
        }
        HashMap hashMap = new HashMap();
        if (dfs.isTrustedDomain(getServer(), this.auth)) {
            try {
                for (FileEntry fileEntry : doDfsRootEnum()) {
                    if (!hashMap.containsKey(fileEntry)) {
                        hashMap.put(fileEntry, fileEntry);
                    }
                }
            } catch (IOException e) {
                LogStream logStream = log;
                if (LogStream.level >= 4) {
                    e.printStackTrace(log);
                }
            }
        }
        IOException e2 = null;
        UniAddress firstAddress = getFirstAddress();
        loop0: while (firstAddress != null) {
            try {
                doConnect();
                try {
                    doNetShareEnum = doMsrpcShareEnum();
                } catch (IOException e3) {
                    LogStream logStream2 = log;
                    if (LogStream.level >= 3) {
                        e3.printStackTrace(log);
                    }
                    doNetShareEnum = doNetShareEnum();
                }
                for (FileEntry fileEntry2 : doNetShareEnum) {
                    if (!hashMap.containsKey(fileEntry2)) {
                        hashMap.put(fileEntry2, fileEntry2);
                    }
                }
                break loop0;
            } catch (IOException e4) {
                e2 = e4;
                LogStream logStream3 = log;
                if (LogStream.level >= 3) {
                    e2.printStackTrace(log);
                }
                firstAddress = getNextAddress();
            }
        }
        if (e2 != null && hashMap.isEmpty()) {
            if (!(e2 instanceof SmbException)) {
                throw new SmbException(this.url.toString(), e2);
            }
            throw ((SmbException) e2);
        }
        for (FileEntry fileEntry3 : hashMap.keySet()) {
            String name = fileEntry3.getName();
            if (smbFilenameFilter == null || smbFilenameFilter.accept(this, name)) {
                if (name.length() > 0) {
                    SmbFile smbFile = new SmbFile(this, name, fileEntry3.getType(), 17, 0L, 0L, 0L);
                    if (smbFileFilter == null || smbFileFilter.accept(smbFile)) {
                        if (z) {
                            arrayList.add(smbFile);
                        } else {
                            arrayList.add(name);
                        }
                    }
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof SmbFile) {
            SmbFile smbFile = (SmbFile) obj;
            if (this == smbFile) {
                return true;
            }
            if (pathNamesPossiblyEqual(this.url.getPath(), smbFile.url.getPath())) {
                getUncPath0();
                smbFile.getUncPath0();
                if (this.canon.equalsIgnoreCase(smbFile.canon)) {
                    try {
                        return getAddress().equals(smbFile.getAddress());
                    } catch (UnknownHostException e) {
                        return getServer().equalsIgnoreCase(smbFile.getServer());
                    }
                }
            }
        }
        return false;
    }

    public boolean exists() {
        if (this.attrExpiration > System.currentTimeMillis()) {
            return this.isExists;
        }
        this.attributes = 17;
        this.createTime = 0L;
        this.lastModified = 0L;
        this.isExists = false;
        try {
            if (this.url.getHost().length() != 0) {
                if (this.share == null) {
                    if (getType() == 2) {
                        UniAddress.getByName(this.url.getHost(), true);
                    } else {
                        UniAddress.getByName(this.url.getHost()).getHostName();
                    }
                } else if (getUncPath0().length() == 1 || this.share.equalsIgnoreCase("IPC$")) {
                    connect0();
                } else {
                    Info queryPath = queryPath(getUncPath0(), 257);
                    this.attributes = queryPath.getAttributes();
                    this.createTime = queryPath.getCreateTime();
                    this.lastModified = queryPath.getLastWriteTime();
                }
            }
            this.isExists = true;
        } catch (UnknownHostException e) {
        } catch (SmbException e2) {
            switch (e2.getNtStatus()) {
                case NtStatus.NT_STATUS_NO_SUCH_FILE /* -1073741809 */:
                case NtStatus.NT_STATUS_OBJECT_NAME_INVALID /* -1073741773 */:
                case NtStatus.NT_STATUS_OBJECT_NAME_NOT_FOUND /* -1073741772 */:
                case NtStatus.NT_STATUS_OBJECT_PATH_NOT_FOUND /* -1073741766 */:
                    break;
                default:
                    throw e2;
            }
        }
        this.attrExpiration = System.currentTimeMillis() + attrExpirationPeriod;
        return this.isExists;
    }

    UniAddress getAddress() {
        return this.addressIndex == 0 ? getFirstAddress() : this.addresses[this.addressIndex - 1];
    }

    public int getAttributes() {
        if (getUncPath0().length() == 1) {
            return 0;
        }
        exists();
        return this.attributes & ATTR_GET_MASK;
    }

    public String getCanonicalPath() {
        String authority = this.url.getAuthority();
        getUncPath0();
        return authority.length() > 0 ? "smb://" + this.url.getAuthority() + this.canon : "smb://";
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        try {
            return (int) (length() & 4294967295L);
        } catch (SmbException e) {
            return 0;
        }
    }

    @Override // java.net.URLConnection
    public long getDate() {
        try {
            return lastModified();
        } catch (SmbException e) {
            return 0L;
        }
    }

    public String getDfsPath() {
        resolveDfs(null);
        if (this.dfsReferral == null) {
            return null;
        }
        String replace = ("smb:/" + this.dfsReferral.server + "/" + this.dfsReferral.share + this.unc).replace('\\', '/');
        return isDirectory() ? replace + '/' : replace;
    }

    public long getDiskFreeSpace() {
        if (getType() != 8 && this.type != 1) {
            return 0L;
        }
        try {
            return queryFSInformation(1007);
        } catch (SmbException e) {
            switch (e.getNtStatus()) {
                case NtStatus.NT_STATUS_UNSUCCESSFUL /* -1073741823 */:
                case NtStatus.NT_STATUS_INVALID_INFO_CLASS /* -1073741821 */:
                    return queryFSInformation(1);
                case NtStatus.NT_STATUS_NOT_IMPLEMENTED /* -1073741822 */:
                default:
                    throw e;
            }
        }
    }

    UniAddress getFirstAddress() {
        this.addressIndex = 0;
        String host = this.url.getHost();
        String path = this.url.getPath();
        String query = this.url.getQuery();
        if (query != null) {
            String queryLookup = queryLookup(query, "server");
            if (queryLookup != null && queryLookup.length() > 0) {
                this.addresses = new UniAddress[1];
                this.addresses[0] = UniAddress.getByName(queryLookup);
                return getNextAddress();
            }
            String queryLookup2 = queryLookup(query, "address");
            if (queryLookup2 != null && queryLookup2.length() > 0) {
                byte[] address = InetAddress.getByName(queryLookup2).getAddress();
                this.addresses = new UniAddress[1];
                this.addresses[0] = new UniAddress(InetAddress.getByAddress(host, address));
                return getNextAddress();
            }
        }
        if (host.length() == 0) {
            try {
                NbtAddress byName = NbtAddress.getByName(NbtAddress.MASTER_BROWSER_NAME, 1, null);
                this.addresses = new UniAddress[1];
                this.addresses[0] = UniAddress.getByName(byName.getHostAddress());
            } catch (UnknownHostException e) {
                NtlmPasswordAuthentication.initDefaults();
                if (NtlmPasswordAuthentication.DEFAULT_DOMAIN.equals("?")) {
                    throw e;
                }
                this.addresses = UniAddress.getAllByName(NtlmPasswordAuthentication.DEFAULT_DOMAIN, true);
            }
        } else if (path.length() == 0 || path.equals("/")) {
            this.addresses = UniAddress.getAllByName(host, true);
        } else {
            this.addresses = UniAddress.getAllByName(host, false);
        }
        return getNextAddress();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return new SmbFileInputStream(this);
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        try {
            return lastModified();
        } catch (SmbException e) {
            return 0L;
        }
    }

    public String getName() {
        getUncPath0();
        if (this.canon.length() <= 1) {
            return this.share != null ? this.share + '/' : this.url.getHost().length() > 0 ? this.url.getHost() + '/' : "smb://";
        }
        int length = this.canon.length() - 2;
        while (this.canon.charAt(length) != '/') {
            length--;
        }
        return this.canon.substring(length + 1);
    }

    UniAddress getNextAddress() {
        if (this.addressIndex >= this.addresses.length) {
            return null;
        }
        UniAddress[] uniAddressArr = this.addresses;
        int i = this.addressIndex;
        this.addressIndex = i + 1;
        return uniAddressArr[i];
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return new SmbFileOutputStream(this);
    }

    public String getParent() {
        String authority = this.url.getAuthority();
        if (authority.length() <= 0) {
            return "smb://";
        }
        StringBuffer stringBuffer = new StringBuffer("smb://");
        stringBuffer.append(authority);
        getUncPath0();
        if (this.canon.length() > 1) {
            stringBuffer.append(this.canon);
        } else {
            stringBuffer.append('/');
        }
        String stringBuffer2 = stringBuffer.toString();
        int length = stringBuffer2.length() - 2;
        while (stringBuffer2.charAt(length) != '/') {
            length--;
        }
        return stringBuffer2.substring(0, length + 1);
    }

    public String getPath() {
        return this.url.toString();
    }

    public Principal getPrincipal() {
        return this.auth;
    }

    public ACE[] getSecurity() {
        return getSecurity(false);
    }

    public ACE[] getSecurity(boolean z) {
        int open0 = open0(1, 131072, 0, isDirectory() ? 1 : 0);
        ServerMessageBlock ntTransQuerySecurityDesc = new NtTransQuerySecurityDesc(open0, 4);
        NtTransQuerySecurityDescResponse ntTransQuerySecurityDescResponse = new NtTransQuerySecurityDescResponse();
        try {
            send(ntTransQuerySecurityDesc, ntTransQuerySecurityDescResponse);
            close(open0, 0L);
            ACE[] aceArr = ntTransQuerySecurityDescResponse.securityDescriptor.aces;
            if (aceArr != null) {
                processAces(aceArr, z);
            }
            return aceArr;
        } catch (Throwable th) {
            close(open0, 0L);
            throw th;
        }
    }

    public String getServer() {
        String host = this.url.getHost();
        if (host.length() == 0) {
            return null;
        }
        return host;
    }

    String getServerWithDfs() {
        return this.dfsReferral != null ? this.dfsReferral.server : getServer();
    }

    public String getShare() {
        return this.share;
    }

    public ACE[] getShareSecurity(boolean z) {
        this.url.getPath();
        resolveDfs(null);
        String serverWithDfs = getServerWithDfs();
        MsrpcShareGetInfo msrpcShareGetInfo = new MsrpcShareGetInfo(serverWithDfs, this.tree.share);
        DcerpcHandle handle = DcerpcHandle.getHandle("ncacn_np:" + serverWithDfs + "[\\PIPE\\srvsvc]", this.auth);
        try {
            handle.sendrecv(msrpcShareGetInfo);
            if (msrpcShareGetInfo.retval != 0) {
                throw new SmbException(msrpcShareGetInfo.retval, true);
            }
            ACE[] security = msrpcShareGetInfo.getSecurity();
            if (security != null) {
                processAces(security, z);
            }
            return security;
        } finally {
            try {
                handle.close();
            } catch (IOException e) {
                LogStream logStream = log;
                if (LogStream.level >= 1) {
                    e.printStackTrace(log);
                }
            }
        }
    }

    public int getType() {
        int nameType;
        if (this.type == 0) {
            if (getUncPath0().length() > 1) {
                this.type = 1;
            } else if (this.share != null) {
                connect0();
                if (this.share.equals("IPC$")) {
                    this.type = 16;
                } else if (this.tree.service.equals("LPT1:")) {
                    this.type = 32;
                } else if (this.tree.service.equals("COMM")) {
                    this.type = 64;
                } else {
                    this.type = 8;
                }
            } else if (this.url.getAuthority() == null || this.url.getAuthority().length() == 0) {
                this.type = 2;
            } else {
                try {
                    UniAddress address = getAddress();
                    if ((address.getAddress() instanceof NbtAddress) && ((nameType = ((NbtAddress) address.getAddress()).getNameType()) == 29 || nameType == 27)) {
                        this.type = 2;
                        return this.type;
                    }
                    this.type = 4;
                } catch (UnknownHostException e) {
                    throw new SmbException(this.url.toString(), e);
                }
            }
        }
        return this.type;
    }

    public String getUncPath() {
        getUncPath0();
        return this.share == null ? "\\\\" + this.url.getHost() : "\\\\" + this.url.getHost() + this.canon.replace('/', '\\');
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001e. Please report as an issue. */
    String getUncPath0() {
        int i;
        if (this.unc == null) {
            char[] charArray = this.url.getPath().toCharArray();
            char[] cArr = new char[charArray.length];
            int length = charArray.length;
            char c = 0;
            int i2 = 0;
            int i3 = 0;
            while (i3 < length) {
                switch (c) {
                    case 0:
                        if (charArray[i3] != '/') {
                            return null;
                        }
                        cArr[i2] = charArray[i3];
                        i2++;
                        i = i3;
                        c = 1;
                        i3 = i + 1;
                    case 1:
                        if (charArray[i3] == '/') {
                            i = i3;
                        } else if (charArray[i3] == '.' && (i3 + 1 >= length || charArray[i3 + 1] == '/')) {
                            i = i3 + 1;
                        } else if (i3 + 1 >= length || charArray[i3] != '.' || charArray[i3 + 1] != '.' || (i3 + 2 < length && charArray[i3 + 2] != '/')) {
                            c = 2;
                        } else {
                            i = i3 + 2;
                            if (i2 == 1) {
                            }
                            do {
                                i2--;
                                if (i2 > 1) {
                                }
                            } while (cArr[i2 - 1] != '/');
                        }
                        i3 = i + 1;
                        break;
                    case 2:
                        if (charArray[i3] == '/') {
                            c = 1;
                        }
                        cArr[i2] = charArray[i3];
                        i2++;
                        i = i3;
                        i3 = i + 1;
                    default:
                        i = i3;
                        i3 = i + 1;
                }
            }
            this.canon = new String(cArr, 0, i2);
            if (i2 > 1) {
                int i4 = i2 - 1;
                int indexOf = this.canon.indexOf(47, 1);
                if (indexOf < 0) {
                    this.share = this.canon.substring(1);
                    this.unc = "\\";
                } else if (indexOf == i4) {
                    this.share = this.canon.substring(1, indexOf);
                    this.unc = "\\";
                } else {
                    this.share = this.canon.substring(1, indexOf);
                    String str = this.canon;
                    if (cArr[i4] != '/') {
                        i4++;
                    }
                    this.unc = str.substring(indexOf, i4);
                    this.unc = this.unc.replace('/', '\\');
                }
            } else {
                this.share = null;
                this.unc = "\\";
            }
        }
        return this.unc;
    }

    boolean hasNextAddress() {
        return this.addressIndex < this.addresses.length;
    }

    public int hashCode() {
        int hashCode;
        try {
            hashCode = getAddress().hashCode();
        } catch (UnknownHostException e) {
            hashCode = getServer().toUpperCase().hashCode();
        }
        getUncPath0();
        return hashCode + this.canon.toUpperCase().hashCode();
    }

    boolean isConnected() {
        return this.tree != null && this.tree.connectionState == 2;
    }

    public boolean isDirectory() {
        if (getUncPath0().length() == 1) {
            return true;
        }
        return exists() && (this.attributes & 16) == 16;
    }

    public boolean isFile() {
        if (getUncPath0().length() == 1) {
            return false;
        }
        exists();
        return (this.attributes & 16) == 0;
    }

    public boolean isHidden() {
        if (this.share == null) {
            return false;
        }
        if (getUncPath0().length() == 1) {
            return this.share.endsWith("$");
        }
        exists();
        return (this.attributes & 2) == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isOpen() {
        return this.opened && isConnected() && this.tree_num == this.tree.tree_num;
    }

    boolean isWorkgroup0() {
        int nameType;
        if (this.type == 2 || this.url.getHost().length() == 0) {
            this.type = 2;
            return true;
        }
        getUncPath0();
        if (this.share == null) {
            UniAddress address = getAddress();
            if ((address.getAddress() instanceof NbtAddress) && ((nameType = ((NbtAddress) address.getAddress()).getNameType()) == 29 || nameType == 27)) {
                this.type = 2;
                return true;
            }
            this.type = 4;
        }
        return false;
    }

    public long lastModified() {
        if (getUncPath0().length() <= 1) {
            return 0L;
        }
        exists();
        return this.lastModified;
    }

    public long length() {
        if (this.sizeExpiration > System.currentTimeMillis()) {
            return this.size;
        }
        if (getType() == 8) {
            Trans2QueryFSInformationResponse trans2QueryFSInformationResponse = new Trans2QueryFSInformationResponse(1);
            send(new Trans2QueryFSInformation(1), trans2QueryFSInformationResponse);
            this.size = trans2QueryFSInformationResponse.info.getCapacity();
        } else if (getUncPath0().length() <= 1 || this.type == 16) {
            this.size = 0L;
        } else {
            this.size = queryPath(getUncPath0(), 258).getSize();
        }
        this.sizeExpiration = System.currentTimeMillis() + attrExpirationPeriod;
        return this.size;
    }

    public String[] list() {
        return list("*", 22, null, null);
    }

    String[] list(String str, int i, SmbFilenameFilter smbFilenameFilter, SmbFileFilter smbFileFilter) {
        ArrayList arrayList = new ArrayList();
        doEnum(arrayList, false, str, i, smbFilenameFilter, smbFileFilter);
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public String[] list(SmbFilenameFilter smbFilenameFilter) {
        return list("*", 22, smbFilenameFilter, null);
    }

    public SmbFile[] listFiles() {
        return listFiles("*", 22, null, null);
    }

    public SmbFile[] listFiles(String str) {
        return listFiles(str, 22, null, null);
    }

    SmbFile[] listFiles(String str, int i, SmbFilenameFilter smbFilenameFilter, SmbFileFilter smbFileFilter) {
        ArrayList arrayList = new ArrayList();
        doEnum(arrayList, true, str, i, smbFilenameFilter, smbFileFilter);
        return (SmbFile[]) arrayList.toArray(new SmbFile[arrayList.size()]);
    }

    public SmbFile[] listFiles(SmbFileFilter smbFileFilter) {
        return listFiles("*", 22, null, smbFileFilter);
    }

    public SmbFile[] listFiles(SmbFilenameFilter smbFilenameFilter) {
        return listFiles("*", 22, smbFilenameFilter, null);
    }

    public void mkdir() {
        String uncPath0 = getUncPath0();
        if (uncPath0.length() == 1) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("mkdir: " + uncPath0);
        }
        send(new SmbComCreateDirectory(uncPath0), blank_resp());
        this.sizeExpiration = 0L;
        this.attrExpiration = 0L;
    }

    public void mkdirs() {
        try {
            SmbFile smbFile = new SmbFile(getParent(), this.auth);
            if (!smbFile.exists()) {
                smbFile.mkdirs();
            }
            mkdir();
        } catch (IOException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void open(int i, int i2, int i3, int i4) {
        if (isOpen()) {
            return;
        }
        this.fid = open0(i, i2, i3, i4);
        this.opened = true;
        this.tree_num = this.tree.tree_num;
    }

    int open0(int i, int i2, int i3, int i4) {
        connect0();
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("open0: " + this.unc);
        }
        if (!this.tree.session.transport.hasCapability(16)) {
            SmbComOpenAndXResponse smbComOpenAndXResponse = new SmbComOpenAndXResponse();
            send(new SmbComOpenAndX(this.unc, i2, i, null), smbComOpenAndXResponse);
            return smbComOpenAndXResponse.fid;
        }
        SmbComNTCreateAndXResponse smbComNTCreateAndXResponse = new SmbComNTCreateAndXResponse();
        SmbComNTCreateAndX smbComNTCreateAndX = new SmbComNTCreateAndX(this.unc, i, i2, this.shareAccess, i3, i4, null);
        if (this instanceof SmbNamedPipe) {
            smbComNTCreateAndX.flags0 |= 22;
            smbComNTCreateAndX.desiredAccess |= 131072;
            smbComNTCreateAndXResponse.isExtended = true;
        }
        send(smbComNTCreateAndX, smbComNTCreateAndXResponse);
        int i5 = smbComNTCreateAndXResponse.fid;
        this.attributes = smbComNTCreateAndXResponse.extFileAttributes & ATTR_GET_MASK;
        this.attrExpiration = System.currentTimeMillis() + attrExpirationPeriod;
        this.isExists = true;
        return i5;
    }

    protected boolean pathNamesPossiblyEqual(String str, String str2) {
        int lastIndexOf = str.lastIndexOf(47);
        int lastIndexOf2 = str2.lastIndexOf(47);
        int length = str.length() - lastIndexOf;
        int length2 = str2.length() - lastIndexOf2;
        if (length > 1 && str.charAt(lastIndexOf + 1) == '.') {
            return true;
        }
        if (length2 <= 1 || str2.charAt(lastIndexOf2 + 1) != '.') {
            return length == length2 && str.regionMatches(true, lastIndexOf, str2, lastIndexOf2, length);
        }
        return true;
    }

    Info queryPath(String str, int i) {
        connect0();
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("queryPath: " + str);
        }
        if (this.tree.session.transport.hasCapability(16)) {
            Trans2QueryPathInformationResponse trans2QueryPathInformationResponse = new Trans2QueryPathInformationResponse(i);
            send(new Trans2QueryPathInformation(str, i), trans2QueryPathInformationResponse);
            return trans2QueryPathInformationResponse.info;
        }
        SmbComQueryInformationResponse smbComQueryInformationResponse = new SmbComQueryInformationResponse(this.tree.session.transport.server.serverTimeZone * LoginCallBack.REQUEST_LOGINPROTECT * 60);
        send(new SmbComQueryInformation(str), smbComQueryInformationResponse);
        return smbComQueryInformationResponse;
    }

    public void renameTo(SmbFile smbFile) {
        if (getUncPath0().length() == 1 || smbFile.getUncPath0().length() == 1) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        resolveDfs(null);
        smbFile.resolveDfs(null);
        if (!this.tree.equals(smbFile.tree)) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("renameTo: " + this.unc + " -> " + smbFile.unc);
        }
        this.sizeExpiration = 0L;
        this.attrExpiration = 0L;
        smbFile.attrExpiration = 0L;
        send(new SmbComRename(this.unc, smbFile.unc), blank_resp());
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
    
        r1 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void resolveDfs(ServerMessageBlock serverMessageBlock) {
        String str;
        DfsReferral dfsReferral;
        SmbException smbException = null;
        if (serverMessageBlock instanceof SmbComClose) {
            return;
        }
        connect0();
        DfsReferral resolve = dfs.resolve(this.tree.session.transport.tconHostName, this.tree.share, this.unc, this.auth);
        if (resolve == null) {
            if (this.tree.inDomainDfs && !(serverMessageBlock instanceof NtTransQuerySecurityDesc) && !(serverMessageBlock instanceof SmbComClose) && !(serverMessageBlock instanceof SmbComFindClose2)) {
                throw new SmbException(NtStatus.NT_STATUS_NOT_FOUND, false);
            }
            if (serverMessageBlock != null) {
                serverMessageBlock.flags2 &= -4097;
                return;
            }
            return;
        }
        if (serverMessageBlock != null) {
            switch (serverMessageBlock.command) {
                case FTPCommand.EPRT /* 37 */:
                case 50:
                    switch (((SmbComTransaction) serverMessageBlock).subCommand & 255) {
                        case 16:
                            str = null;
                            break;
                        default:
                            str = "A:";
                            break;
                    }
                default:
                    str = "A:";
                    break;
            }
        } else {
            str = null;
        }
        DfsReferral dfsReferral2 = resolve;
        while (true) {
            try {
                LogStream logStream = log;
                if (LogStream.level >= 2) {
                    log.println("DFS redirect: " + dfsReferral2);
                }
                SmbTransport smbTransport = SmbTransport.getSmbTransport(UniAddress.getByName(dfsReferral2.server), this.url.getPort());
                smbTransport.connect();
                this.tree = smbTransport.getSmbSession(this.auth).getSmbTree(dfsReferral2.share, str);
                if (dfsReferral2 != resolve && dfsReferral2.key != null) {
                    dfsReferral2.map.put(dfsReferral2.key, dfsReferral2);
                }
            } catch (IOException e) {
                SmbException smbException2 = e instanceof SmbException ? (SmbException) e : new SmbException(dfsReferral2.server, e);
                DfsReferral dfsReferral3 = dfsReferral2.next;
                if (dfsReferral3 == resolve) {
                    smbException = smbException2;
                    dfsReferral = dfsReferral3;
                } else {
                    dfsReferral2 = dfsReferral3;
                }
            }
        }
        if (smbException != null) {
            throw smbException;
        }
        LogStream logStream2 = log;
        if (LogStream.level >= 3) {
            log.println(dfsReferral);
        }
        this.dfsReferral = dfsReferral;
        if (dfsReferral.pathConsumed < 0) {
            dfsReferral.pathConsumed = 0;
        } else if (dfsReferral.pathConsumed > this.unc.length()) {
            dfsReferral.pathConsumed = this.unc.length();
        }
        String substring = this.unc.substring(dfsReferral.pathConsumed);
        if (substring.equals("")) {
            substring = "\\";
        }
        if (!dfsReferral.path.equals("")) {
            substring = "\\" + dfsReferral.path + substring;
        }
        this.unc = substring;
        if (serverMessageBlock != null && serverMessageBlock.path != null && serverMessageBlock.path.endsWith("\\") && !substring.endsWith("\\")) {
            substring = substring + "\\";
        }
        if (serverMessageBlock != null) {
            serverMessageBlock.path = substring;
            serverMessageBlock.flags2 |= 4096;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void send(ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        while (true) {
            resolveDfs(serverMessageBlock);
            try {
                this.tree.send(serverMessageBlock, serverMessageBlock2);
                return;
            } catch (DfsReferral e) {
                if (e.resolveHashes) {
                    throw e;
                }
                serverMessageBlock.reset();
            }
        }
    }

    public void setAttributes(int i) {
        if (getUncPath0().length() == 1) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        setPathInformation(i & ATTR_SET_MASK, 0L, 0L);
    }

    public void setCreateTime(long j) {
        if (getUncPath0().length() == 1) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        setPathInformation(0, j, 0L);
    }

    public void setLastModified(long j) {
        if (getUncPath0().length() == 1) {
            throw new SmbException("Invalid operation for workgroups, servers, or shares");
        }
        setPathInformation(0, 0L, j);
    }

    void setPathInformation(int i, long j, long j2) {
        exists();
        int i2 = this.attributes & 16;
        int open0 = open0(1, 256, i2, i2 != 0 ? 1 : 64);
        send(new Trans2SetFileInformation(open0, i2 | i, j, j2), new Trans2SetFileInformationResponse());
        close(open0, 0L);
        this.attrExpiration = 0L;
    }

    public void setReadOnly() {
        setAttributes(getAttributes() | 1);
    }

    public void setReadWrite() {
        setAttributes(getAttributes() & (-2));
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.url.toString();
    }

    public URL toURL() {
        return this.url;
    }
}
