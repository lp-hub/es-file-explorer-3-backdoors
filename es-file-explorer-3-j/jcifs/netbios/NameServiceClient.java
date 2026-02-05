package jcifs.netbios;

import com.baidu.sapi2.callback.LoginCallBack;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.StringTokenizer;
import jcifs.Config;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NameServiceClient implements Runnable {
    static final int DEFAULT_RCV_BUF_SIZE = 576;
    static final int DEFAULT_RETRY_COUNT = 2;
    static final int DEFAULT_SND_BUF_SIZE = 576;
    static final int NAME_SERVICE_UDP_PORT = 137;
    static final int RESOLVER_BCAST = 2;
    static final int RESOLVER_LMHOSTS = 1;
    static final int RESOLVER_WINS = 3;
    private final Object LOCK;
    InetAddress baddr;
    private int closeTimeout;
    private DatagramPacket in;
    InetAddress laddr;
    private int lport;
    private int nextNameTrnId;
    private DatagramPacket out;
    private byte[] rcv_buf;
    private int[] resolveOrder;
    private HashMap responseTable;
    private byte[] snd_buf;
    private DatagramSocket socket;
    private Thread thread;
    private static final int SND_BUF_SIZE = Config.getInt("jcifs.netbios.snd_buf_size", 576);
    private static final int RCV_BUF_SIZE = Config.getInt("jcifs.netbios.rcv_buf_size", 576);
    static final int DEFAULT_SO_TIMEOUT = 5000;
    private static final int SO_TIMEOUT = Config.getInt("jcifs.netbios.soTimeout", DEFAULT_SO_TIMEOUT);
    private static final int RETRY_COUNT = Config.getInt("jcifs.netbios.retryCount", 2);
    static final int DEFAULT_RETRY_TIMEOUT = 3000;
    private static final int RETRY_TIMEOUT = Config.getInt("jcifs.netbios.retryTimeout", DEFAULT_RETRY_TIMEOUT);
    private static final int LPORT = Config.getInt("jcifs.netbios.lport", 0);
    private static final InetAddress LADDR = Config.getInetAddress("jcifs.netbios.laddr", null);
    private static final String RO = Config.getProperty("jcifs.resolveOrder");
    private static LogStream log = LogStream.getInstance();

    /* JADX INFO: Access modifiers changed from: package-private */
    public NameServiceClient() {
        this(LPORT, LADDR);
    }

    NameServiceClient(int i, InetAddress inetAddress) {
        this.LOCK = new Object();
        this.responseTable = new HashMap();
        this.nextNameTrnId = 0;
        this.lport = i;
        this.laddr = inetAddress;
        try {
            this.baddr = Config.getInetAddress("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        } catch (UnknownHostException e) {
        }
        this.snd_buf = new byte[SND_BUF_SIZE];
        this.rcv_buf = new byte[RCV_BUF_SIZE];
        this.out = new DatagramPacket(this.snd_buf, SND_BUF_SIZE, this.baddr, NAME_SERVICE_UDP_PORT);
        this.in = new DatagramPacket(this.rcv_buf, RCV_BUF_SIZE);
        if (RO == null || RO.length() == 0) {
            if (NbtAddress.getWINSAddress() == null) {
                this.resolveOrder = new int[2];
                this.resolveOrder[0] = 1;
                this.resolveOrder[1] = 2;
                return;
            } else {
                this.resolveOrder = new int[3];
                this.resolveOrder[0] = 1;
                this.resolveOrder[1] = 3;
                this.resolveOrder[2] = 2;
                return;
            }
        }
        int[] iArr = new int[3];
        StringTokenizer stringTokenizer = new StringTokenizer(RO, ",");
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if (trim.equalsIgnoreCase("LMHOSTS")) {
                iArr[i2] = 1;
                i2++;
            } else if (trim.equalsIgnoreCase("WINS")) {
                if (NbtAddress.getWINSAddress() == null) {
                    LogStream logStream = log;
                    if (LogStream.level > 1) {
                        log.println("NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else {
                    iArr[i2] = 3;
                    i2++;
                }
            } else if (trim.equalsIgnoreCase("BCAST")) {
                iArr[i2] = 2;
                i2++;
            } else if (!trim.equalsIgnoreCase("DNS")) {
                LogStream logStream2 = log;
                if (LogStream.level > 1) {
                    log.println("unknown resolver method: " + trim);
                }
            }
        }
        this.resolveOrder = new int[i2];
        System.arraycopy(iArr, 0, this.resolveOrder, 0, i2);
    }

    void ensureOpen(int i) {
        this.closeTimeout = 0;
        if (SO_TIMEOUT != 0) {
            this.closeTimeout = Math.max(SO_TIMEOUT, i);
        }
        if (this.socket == null) {
            this.socket = new DatagramSocket(this.lport, this.laddr);
            this.thread = new Thread(this, "JCIFS-NameServiceClient");
            this.thread.setDaemon(true);
            this.thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NbtAddress[] getAllByName(Name name, InetAddress inetAddress) {
        int i;
        NameQueryRequest nameQueryRequest = new NameQueryRequest(name);
        NameQueryResponse nameQueryResponse = new NameQueryResponse();
        if (inetAddress == null) {
            inetAddress = NbtAddress.getWINSAddress();
        }
        nameQueryRequest.addr = inetAddress;
        nameQueryRequest.isBroadcast = nameQueryRequest.addr == null;
        if (nameQueryRequest.isBroadcast) {
            nameQueryRequest.addr = this.baddr;
            i = RETRY_COUNT;
        } else {
            nameQueryRequest.isBroadcast = false;
            i = 1;
        }
        do {
            try {
                send(nameQueryRequest, nameQueryResponse, RETRY_TIMEOUT);
                if (!nameQueryResponse.received || nameQueryResponse.resultCode != 0) {
                    i--;
                    if (i <= 0) {
                        break;
                    }
                } else {
                    return nameQueryResponse.addrEntry;
                }
            } catch (IOException e) {
                LogStream logStream = log;
                if (LogStream.level > 1) {
                    e.printStackTrace(log);
                }
                throw new UnknownHostException(name.name);
            }
        } while (nameQueryRequest.isBroadcast);
        throw new UnknownHostException(name.name);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0072, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x006f. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NbtAddress getByName(Name name, InetAddress inetAddress) {
        NameQueryRequest nameQueryRequest = new NameQueryRequest(name);
        NameQueryResponse nameQueryResponse = new NameQueryResponse();
        if (inetAddress != null) {
            nameQueryRequest.addr = inetAddress;
            nameQueryRequest.isBroadcast = inetAddress.getAddress()[3] == -1;
            int i = RETRY_COUNT;
            do {
                try {
                    send(nameQueryRequest, nameQueryResponse, RETRY_TIMEOUT);
                    if (!nameQueryResponse.received || nameQueryResponse.resultCode != 0) {
                        i--;
                        if (i <= 0) {
                            break;
                        }
                    } else {
                        int length = nameQueryResponse.addrEntry.length - 1;
                        nameQueryResponse.addrEntry[length].hostName.srcHashCode = inetAddress.hashCode();
                        return nameQueryResponse.addrEntry[length];
                    }
                } catch (IOException e) {
                    LogStream logStream = log;
                    if (LogStream.level > 1) {
                        e.printStackTrace(log);
                    }
                    throw new UnknownHostException(name.name);
                }
            } while (nameQueryRequest.isBroadcast);
            throw new UnknownHostException(name.name);
        }
        for (int i2 = 0; i2 < this.resolveOrder.length; i2++) {
            switch (this.resolveOrder[i2]) {
                case 1:
                    NbtAddress byName = Lmhosts.getByName(name);
                    if (byName != null) {
                        byName.hostName.srcHashCode = 0;
                        return byName;
                    }
                case 2:
                case 3:
                    if (this.resolveOrder[i2] != 3 || name.name == NbtAddress.MASTER_BROWSER_NAME || name.hexCode == 29) {
                        nameQueryRequest.addr = this.baddr;
                        nameQueryRequest.isBroadcast = true;
                    } else {
                        nameQueryRequest.addr = NbtAddress.getWINSAddress();
                        nameQueryRequest.isBroadcast = false;
                    }
                    int i3 = RETRY_COUNT;
                    while (true) {
                        int i4 = i3 - 1;
                        if (i3 > 0) {
                            try {
                                send(nameQueryRequest, nameQueryResponse, RETRY_TIMEOUT);
                                if (nameQueryResponse.received && nameQueryResponse.resultCode == 0) {
                                    nameQueryResponse.addrEntry[0].hostName.srcHashCode = nameQueryRequest.addr.hashCode();
                                    return nameQueryResponse.addrEntry[0];
                                }
                                if (this.resolveOrder[i2] != 3) {
                                    i3 = i4;
                                }
                            } catch (IOException e2) {
                                LogStream logStream2 = log;
                                if (LogStream.level > 1) {
                                    e2.printStackTrace(log);
                                }
                                throw new UnknownHostException(name.name);
                            }
                        }
                    }
                    break;
                default:
                    continue;
            }
        }
        throw new UnknownHostException(name.name);
    }

    int getNextNameTrnId() {
        int i = this.nextNameTrnId + 1;
        this.nextNameTrnId = i;
        if ((i & 65535) == 0) {
            this.nextNameTrnId = 1;
        }
        return this.nextNameTrnId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NbtAddress[] getNodeStatus(NbtAddress nbtAddress) {
        NodeStatusResponse nodeStatusResponse = new NodeStatusResponse(nbtAddress);
        NodeStatusRequest nodeStatusRequest = new NodeStatusRequest(new Name("*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", 0, null));
        nodeStatusRequest.addr = nbtAddress.getInetAddress();
        int i = RETRY_COUNT;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                throw new UnknownHostException(nbtAddress.hostName.name);
            }
            try {
                send(nodeStatusRequest, nodeStatusResponse, RETRY_TIMEOUT);
                if (nodeStatusResponse.received && nodeStatusResponse.resultCode == 0) {
                    int hashCode = nodeStatusRequest.addr.hashCode();
                    for (int i3 = 0; i3 < nodeStatusResponse.addressArray.length; i3++) {
                        nodeStatusResponse.addressArray[i3].hostName.srcHashCode = hashCode;
                    }
                    return nodeStatusResponse.addressArray;
                }
                i = i2;
            } catch (IOException e) {
                LogStream logStream = log;
                if (LogStream.level > 1) {
                    e.printStackTrace(log);
                }
                throw new UnknownHostException(nbtAddress.toString());
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.thread == Thread.currentThread()) {
            try {
                this.in.setLength(RCV_BUF_SIZE);
                this.socket.setSoTimeout(this.closeTimeout);
                this.socket.receive(this.in);
                LogStream logStream = log;
                if (LogStream.level > 3) {
                    log.println("NetBIOS: new data read from socket");
                }
                NameServicePacket nameServicePacket = (NameServicePacket) this.responseTable.get(new Integer(NameServicePacket.readNameTrnId(this.rcv_buf, 0)));
                if (nameServicePacket != null && !nameServicePacket.received) {
                    synchronized (nameServicePacket) {
                        nameServicePacket.readWireFormat(this.rcv_buf, 0);
                        nameServicePacket.received = true;
                        LogStream logStream2 = log;
                        if (LogStream.level > 3) {
                            log.println(nameServicePacket);
                            Hexdump.hexdump(log, this.rcv_buf, 0, this.in.getLength());
                        }
                        nameServicePacket.notify();
                    }
                }
            } catch (SocketTimeoutException e) {
                return;
            } catch (Exception e2) {
                LogStream logStream3 = log;
                if (LogStream.level > 2) {
                    e2.printStackTrace(log);
                }
                return;
            } finally {
                tryClose();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
    
        r4 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        if (r13 <= 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
    
        r12.wait(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r12.received == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r11.questionType != r12.recordType) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
    
        r10.responseTable.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
    
        r12.received = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0099, code lost:
    
        r13 = (int) (r13 - (java.lang.System.currentTimeMillis() - r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009d, code lost:
    
        r10.responseTable.remove(r1);
        r2 = r10.LOCK;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a4, code lost:
    
        monitor-enter(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ab, code lost:
    
        if (jcifs.netbios.NbtAddress.isWINS(r11.addr) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b6, code lost:
    
        if (r11.addr != jcifs.netbios.NbtAddress.getWINSAddress()) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b8, code lost:
    
        jcifs.netbios.NbtAddress.switchWINS();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bb, code lost:
    
        r11.addr = jcifs.netbios.NbtAddress.getWINSAddress();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ad, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0087, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0088, code lost:
    
        r10.responseTable.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x008d, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x007c, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0086, code lost:
    
        throw new java.io.IOException(r0.getMessage());
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:? -> B:58:0x0079). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void send(NameServicePacket nameServicePacket, NameServicePacket nameServicePacket2, int i) {
        Integer num;
        Integer num2 = null;
        int length = NbtAddress.NBNS.length;
        if (length == 0) {
            length = 1;
        }
        synchronized (nameServicePacket2) {
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    break;
                }
                try {
                    synchronized (this.LOCK) {
                        try {
                            nameServicePacket.nameTrnId = getNextNameTrnId();
                            num = new Integer(nameServicePacket.nameTrnId);
                            try {
                                this.out.setAddress(nameServicePacket.addr);
                                this.out.setLength(nameServicePacket.writeWireFormat(this.snd_buf, 0));
                                nameServicePacket2.received = false;
                                this.responseTable.put(num, nameServicePacket2);
                                ensureOpen(i + LoginCallBack.REQUEST_LOGINPROTECT);
                                this.socket.send(this.out);
                                LogStream logStream = log;
                                if (LogStream.level > 3) {
                                    log.println(nameServicePacket);
                                    Hexdump.hexdump(log, this.snd_buf, 0, this.out.getLength());
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    throw th;
                } catch (InterruptedException e) {
                    e = e;
                } catch (Throwable th3) {
                    th = th3;
                    num = num2;
                }
                length = i2;
                num2 = num;
            }
        }
    }

    void tryClose() {
        synchronized (this.LOCK) {
            if (this.socket != null) {
                this.socket.close();
                this.socket = null;
            }
            this.thread = null;
            this.responseTable.clear();
        }
    }
}
