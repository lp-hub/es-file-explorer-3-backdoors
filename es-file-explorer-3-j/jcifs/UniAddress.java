package jcifs;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import jcifs.netbios.Lmhosts;
import jcifs.netbios.NbtAddress;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public class UniAddress {
    private static final int RESOLVER_BCAST = 1;
    private static final int RESOLVER_DNS = 2;
    private static final int RESOLVER_LMHOSTS = 3;
    private static final int RESOLVER_WINS = 0;
    private static InetAddress baddr;
    private static LogStream log = LogStream.getInstance();
    private static int[] resolveOrder;
    Object addr;
    String calledName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class QueryThread extends Thread {
        NbtAddress ans;
        String host;
        String scope;
        Sem sem;
        InetAddress svr;
        int type;
        UnknownHostException uhe;

        QueryThread(Sem sem, String str, int i, String str2, InetAddress inetAddress) {
            super("JCIFS-QueryThread: " + str);
            this.ans = null;
            this.sem = sem;
            this.host = str;
            this.type = i;
            this.scope = str2;
            this.svr = inetAddress;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                try {
                    this.ans = NbtAddress.getByName(this.host, this.type, this.scope, this.svr);
                    synchronized (this.sem) {
                        Sem sem = this.sem;
                        sem.count--;
                        this.sem.notify();
                    }
                } catch (UnknownHostException e) {
                    this.uhe = e;
                    synchronized (this.sem) {
                        Sem sem2 = this.sem;
                        sem2.count--;
                        this.sem.notify();
                    }
                } catch (Exception e2) {
                    this.uhe = new UnknownHostException(e2.getMessage());
                    synchronized (this.sem) {
                        Sem sem3 = this.sem;
                        sem3.count--;
                        this.sem.notify();
                    }
                }
            } catch (Throwable th) {
                synchronized (this.sem) {
                    Sem sem4 = this.sem;
                    sem4.count--;
                    this.sem.notify();
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Sem {
        int count;

        Sem(int i) {
            this.count = i;
        }
    }

    static {
        String property = Config.getProperty("jcifs.resolveOrder");
        InetAddress wINSAddress = NbtAddress.getWINSAddress();
        try {
            baddr = Config.getInetAddress("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        } catch (UnknownHostException e) {
        }
        if (property == null || property.length() == 0) {
            if (wINSAddress == null) {
                resolveOrder = new int[3];
                resolveOrder[0] = 3;
                resolveOrder[1] = 2;
                resolveOrder[2] = 1;
                return;
            }
            resolveOrder = new int[4];
            resolveOrder[0] = 3;
            resolveOrder[1] = 0;
            resolveOrder[2] = 2;
            resolveOrder[3] = 1;
            return;
        }
        int[] iArr = new int[4];
        StringTokenizer stringTokenizer = new StringTokenizer(property, ",");
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if (trim.equalsIgnoreCase("LMHOSTS")) {
                iArr[i] = 3;
                i++;
            } else if (trim.equalsIgnoreCase("WINS")) {
                if (wINSAddress == null) {
                    LogStream logStream = log;
                    if (LogStream.level > 1) {
                        log.println("UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else {
                    iArr[i] = 0;
                    i++;
                }
            } else if (trim.equalsIgnoreCase("BCAST")) {
                iArr[i] = 1;
                i++;
            } else if (trim.equalsIgnoreCase("DNS")) {
                iArr[i] = 2;
                i++;
            } else {
                LogStream logStream2 = log;
                if (LogStream.level > 1) {
                    log.println("unknown resolver method: " + trim);
                }
            }
        }
        resolveOrder = new int[i];
        System.arraycopy(iArr, 0, resolveOrder, 0, i);
    }

    public UniAddress(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException();
        }
        this.addr = obj;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0030. Please report as an issue. */
    public static UniAddress[] getAllByName(String str, boolean z) {
        NbtAddress lookupServerOrWorkgroup;
        if (str == null || str.length() == 0) {
            throw new UnknownHostException();
        }
        if (isDotQuadIP(str)) {
            return new UniAddress[]{new UniAddress(NbtAddress.getByName(str))};
        }
        for (int i = 0; i < resolveOrder.length; i++) {
            switch (resolveOrder[i]) {
                case 0:
                    if (str != NbtAddress.MASTER_BROWSER_NAME && str.length() <= 15) {
                        lookupServerOrWorkgroup = z ? lookupServerOrWorkgroup(str, NbtAddress.getWINSAddress()) : NbtAddress.getByName(str, 32, null, NbtAddress.getWINSAddress());
                        return new UniAddress[]{new UniAddress(lookupServerOrWorkgroup)};
                    }
                    break;
                case 1:
                    if (str.length() <= 15) {
                        lookupServerOrWorkgroup = z ? lookupServerOrWorkgroup(str, baddr) : NbtAddress.getByName(str, 32, null, baddr);
                        return new UniAddress[]{new UniAddress(lookupServerOrWorkgroup)};
                    }
                case 2:
                    if (isAllDigits(str)) {
                        throw new UnknownHostException(str);
                    }
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    UniAddress[] uniAddressArr = new UniAddress[allByName.length];
                    for (int i2 = 0; i2 < allByName.length; i2++) {
                        uniAddressArr[i2] = new UniAddress(allByName[i2]);
                    }
                    return uniAddressArr;
                case 3:
                    NbtAddress byName = Lmhosts.getByName(str);
                    if (byName != null) {
                        lookupServerOrWorkgroup = byName;
                        return new UniAddress[]{new UniAddress(lookupServerOrWorkgroup)};
                    }
                default:
                    throw new UnknownHostException(str);
            }
        }
        throw new UnknownHostException(str);
    }

    public static UniAddress getByName(String str) {
        return getByName(str, false);
    }

    public static UniAddress getByName(String str, boolean z) {
        return getAllByName(str, z)[0];
    }

    static boolean isAllDigits(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    static boolean isDotQuadIP(String str) {
        if (!Character.isDigit(str.charAt(0))) {
            return false;
        }
        int length = str.length();
        char[] charArray = str.toCharArray();
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (!Character.isDigit(charArray[i2])) {
                return false;
            }
            if (i3 == length && i == 3) {
                return true;
            }
            if (i3 >= length || charArray[i3] != '.') {
                i2 = i3;
            } else {
                i++;
                i2 = i3 + 1;
            }
        }
        return false;
    }

    static NbtAddress lookupServerOrWorkgroup(String str, InetAddress inetAddress) {
        Sem sem = new Sem(2);
        QueryThread queryThread = new QueryThread(sem, str, NbtAddress.isWINS(inetAddress) ? 27 : 29, null, inetAddress);
        QueryThread queryThread2 = new QueryThread(sem, str, 32, null, inetAddress);
        queryThread.setDaemon(true);
        queryThread2.setDaemon(true);
        try {
            synchronized (sem) {
                queryThread.start();
                queryThread2.start();
                while (sem.count > 0 && queryThread.ans == null && queryThread2.ans == null) {
                    sem.wait();
                }
            }
            if (queryThread.ans != null) {
                return queryThread.ans;
            }
            if (queryThread2.ans != null) {
                return queryThread2.ans;
            }
            throw queryThread.uhe;
        } catch (InterruptedException e) {
            throw new UnknownHostException(str);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof UniAddress) && this.addr.equals(((UniAddress) obj).addr);
    }

    public String firstCalledName() {
        if (this.addr instanceof NbtAddress) {
            return ((NbtAddress) this.addr).firstCalledName();
        }
        this.calledName = ((InetAddress) this.addr).getHostName();
        if (isDotQuadIP(this.calledName)) {
            this.calledName = NbtAddress.SMBSERVER_NAME;
        } else {
            int indexOf = this.calledName.indexOf(46);
            if (indexOf > 1 && indexOf < 15) {
                this.calledName = this.calledName.substring(0, indexOf).toUpperCase();
            } else if (this.calledName.length() > 15) {
                this.calledName = NbtAddress.SMBSERVER_NAME;
            } else {
                this.calledName = this.calledName.toUpperCase();
            }
        }
        return this.calledName;
    }

    public Object getAddress() {
        return this.addr;
    }

    public String getHostAddress() {
        return this.addr instanceof NbtAddress ? ((NbtAddress) this.addr).getHostAddress() : ((InetAddress) this.addr).getHostAddress();
    }

    public String getHostName() {
        return this.addr instanceof NbtAddress ? ((NbtAddress) this.addr).getHostName() : ((InetAddress) this.addr).getHostName();
    }

    public int hashCode() {
        return this.addr.hashCode();
    }

    public String nextCalledName() {
        if (this.addr instanceof NbtAddress) {
            return ((NbtAddress) this.addr).nextCalledName();
        }
        if (this.calledName == NbtAddress.SMBSERVER_NAME) {
            return null;
        }
        this.calledName = NbtAddress.SMBSERVER_NAME;
        return this.calledName;
    }

    public String toString() {
        return this.addr.toString();
    }
}
