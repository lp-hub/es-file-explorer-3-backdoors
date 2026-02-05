package jcifs.netbios;

import com.baidu.sapi2.callback.LoginCallBack;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import jcifs.Config;
import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public final class NbtAddress {
    static final String ANY_HOSTS_NAME = "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000";
    public static final int B_NODE = 0;
    private static final int DEFAULT_CACHE_POLICY = 30;
    private static final int FOREVER = -1;
    public static final int H_NODE = 3;
    public static final String MASTER_BROWSER_NAME = "\u0001\u0002__MSBROWSE__\u0002";
    public static final int M_NODE = 2;
    public static final int P_NODE = 1;
    public static final String SMBSERVER_NAME = "*SMBSERVER     ";
    static NbtAddress localhost;
    int address;
    String calledName;
    boolean groupName;
    Name hostName;
    boolean isActive;
    boolean isBeingDeleted;
    boolean isDataFromNodeStatus;
    boolean isInConflict;
    boolean isPermanent;
    byte[] macAddress;
    int nodeType;
    static final InetAddress[] NBNS = Config.getInetAddressArray("jcifs.netbios.wins", ",", new InetAddress[0]);
    private static final NameServiceClient CLIENT = new NameServiceClient();
    private static final int CACHE_POLICY = Config.getInt("jcifs.netbios.cachePolicy", 30);
    private static int nbnsIndex = 0;
    private static final HashMap ADDRESS_CACHE = new HashMap();
    private static final HashMap LOOKUP_TABLE = new HashMap();
    static final Name UNKNOWN_NAME = new Name("0.0.0.0", 0, null);
    static final NbtAddress UNKNOWN_ADDRESS = new NbtAddress(UNKNOWN_NAME, 0, false, 0);
    static final byte[] UNKNOWN_MAC_ADDRESS = {0, 0, 0, 0, 0, 0};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class CacheEntry {
        NbtAddress address;
        long expiration;
        Name hostName;

        CacheEntry(Name name, NbtAddress nbtAddress, long j) {
            this.hostName = name;
            this.address = nbtAddress;
            this.expiration = j;
        }
    }

    static {
        InetAddress inetAddress;
        ADDRESS_CACHE.put(UNKNOWN_NAME, new CacheEntry(UNKNOWN_NAME, UNKNOWN_ADDRESS, -1L));
        InetAddress inetAddress2 = CLIENT.laddr;
        if (inetAddress2 == null) {
            try {
                inetAddress = InetAddress.getLocalHost();
            } catch (UnknownHostException e) {
                try {
                    inetAddress = InetAddress.getByName("127.0.0.1");
                } catch (UnknownHostException e2) {
                    inetAddress = inetAddress2;
                }
            }
        } else {
            inetAddress = inetAddress2;
        }
        String property = Config.getProperty("jcifs.netbios.hostname", null);
        if (property == null || property.length() == 0) {
            byte[] address = inetAddress.getAddress();
            property = "JCIFS" + (address[2] & 255) + "_" + (address[3] & 255) + "_" + Hexdump.toHexString((int) (Math.random() * 255.0d), 2);
        }
        Name name = new Name(property, 0, Config.getProperty("jcifs.netbios.scope", null));
        localhost = new NbtAddress(name, inetAddress.hashCode(), false, 0, false, false, true, false, UNKNOWN_MAC_ADDRESS);
        cacheAddress(name, localhost, -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NbtAddress(Name name, int i, boolean z, int i2) {
        this.hostName = name;
        this.address = i;
        this.groupName = z;
        this.nodeType = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NbtAddress(Name name, int i, boolean z, int i2, boolean z2, boolean z3, boolean z4, boolean z5, byte[] bArr) {
        this.hostName = name;
        this.address = i;
        this.groupName = z;
        this.nodeType = i2;
        this.isBeingDeleted = z2;
        this.isInConflict = z3;
        this.isActive = z4;
        this.isPermanent = z5;
        this.macAddress = bArr;
        this.isDataFromNodeStatus = true;
    }

    static void cacheAddress(Name name, NbtAddress nbtAddress) {
        if (CACHE_POLICY == 0) {
            return;
        }
        cacheAddress(name, nbtAddress, CACHE_POLICY != -1 ? System.currentTimeMillis() + (CACHE_POLICY * LoginCallBack.REQUEST_LOGINPROTECT) : -1L);
    }

    static void cacheAddress(Name name, NbtAddress nbtAddress, long j) {
        if (CACHE_POLICY == 0) {
            return;
        }
        synchronized (ADDRESS_CACHE) {
            CacheEntry cacheEntry = (CacheEntry) ADDRESS_CACHE.get(name);
            if (cacheEntry == null) {
                ADDRESS_CACHE.put(name, new CacheEntry(name, nbtAddress, j));
            } else {
                cacheEntry.address = nbtAddress;
                cacheEntry.expiration = j;
            }
        }
    }

    static void cacheAddressArray(NbtAddress[] nbtAddressArr) {
        if (CACHE_POLICY == 0) {
            return;
        }
        long currentTimeMillis = CACHE_POLICY != -1 ? System.currentTimeMillis() + (CACHE_POLICY * LoginCallBack.REQUEST_LOGINPROTECT) : -1L;
        synchronized (ADDRESS_CACHE) {
            for (int i = 0; i < nbtAddressArr.length; i++) {
                CacheEntry cacheEntry = (CacheEntry) ADDRESS_CACHE.get(nbtAddressArr[i].hostName);
                if (cacheEntry == null) {
                    ADDRESS_CACHE.put(nbtAddressArr[i].hostName, new CacheEntry(nbtAddressArr[i].hostName, nbtAddressArr[i], currentTimeMillis));
                } else {
                    cacheEntry.address = nbtAddressArr[i];
                    cacheEntry.expiration = currentTimeMillis;
                }
            }
        }
    }

    private static Object checkLookupTable(Name name) {
        NbtAddress cachedAddress;
        synchronized (LOOKUP_TABLE) {
            if (LOOKUP_TABLE.containsKey(name)) {
                while (LOOKUP_TABLE.containsKey(name)) {
                    try {
                        LOOKUP_TABLE.wait();
                    } catch (InterruptedException e) {
                    }
                }
                cachedAddress = getCachedAddress(name);
                if (cachedAddress == null) {
                    synchronized (LOOKUP_TABLE) {
                        LOOKUP_TABLE.put(name, name);
                    }
                }
            } else {
                LOOKUP_TABLE.put(name, name);
                cachedAddress = null;
            }
        }
        return cachedAddress;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        r0 = (jcifs.netbios.NbtAddress) checkLookupTable(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static NbtAddress doNameQuery(Name name, InetAddress inetAddress) {
        if (name.hexCode == 29 && inetAddress == null) {
            inetAddress = CLIENT.baddr;
        }
        name.srcHashCode = inetAddress != null ? inetAddress.hashCode() : 0;
        NbtAddress cachedAddress = getCachedAddress(name);
        if (cachedAddress == null && cachedAddress == null) {
            try {
                cachedAddress = CLIENT.getByName(name, inetAddress);
            } catch (UnknownHostException e) {
                cachedAddress = UNKNOWN_ADDRESS;
            } finally {
                cacheAddress(name, cachedAddress);
                updateLookupTable(name);
            }
        }
        if (cachedAddress == UNKNOWN_ADDRESS) {
            throw new UnknownHostException(name.toString());
        }
        return cachedAddress;
    }

    public static NbtAddress[] getAllByAddress(String str) {
        return getAllByAddress(getByName(str, 0, null));
    }

    public static NbtAddress[] getAllByAddress(String str, int i, String str2) {
        return getAllByAddress(getByName(str, i, str2));
    }

    public static NbtAddress[] getAllByAddress(NbtAddress nbtAddress) {
        try {
            NbtAddress[] nodeStatus = CLIENT.getNodeStatus(nbtAddress);
            cacheAddressArray(nodeStatus);
            return nodeStatus;
        } catch (UnknownHostException e) {
            throw new UnknownHostException("no name with type 0x" + Hexdump.toHexString(nbtAddress.hostName.hexCode, 2) + ((nbtAddress.hostName.scope == null || nbtAddress.hostName.scope.length() == 0) ? " with no scope" : " with scope " + nbtAddress.hostName.scope) + " for host " + nbtAddress.getHostAddress());
        }
    }

    public static NbtAddress[] getAllByName(String str, int i, String str2, InetAddress inetAddress) {
        return CLIENT.getAllByName(new Name(str, i, str2), inetAddress);
    }

    public static NbtAddress getByName(String str) {
        return getByName(str, 0, null);
    }

    public static NbtAddress getByName(String str, int i, String str2) {
        return getByName(str, i, str2, null);
    }

    public static NbtAddress getByName(String str, int i, String str2, InetAddress inetAddress) {
        int i2;
        if (str == null || str.length() == 0) {
            return getLocalHost();
        }
        if (!Character.isDigit(str.charAt(0))) {
            return doNameQuery(new Name(str, i, str2), inetAddress);
        }
        char[] charArray = str.toCharArray();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < charArray.length; i5 = i2 + 1) {
            char c = charArray[i5];
            if (c < '0' || c > '9') {
                return doNameQuery(new Name(str, i, str2), inetAddress);
            }
            char c2 = c;
            i2 = i5;
            int i6 = 0;
            while (c2 != '.') {
                if (c2 < '0' || c2 > '9') {
                    return doNameQuery(new Name(str, i, str2), inetAddress);
                }
                i6 = ((i6 * 10) + c2) - 48;
                i2++;
                if (i2 >= charArray.length) {
                    break;
                }
                c2 = charArray[i2];
            }
            if (i6 > 255) {
                return doNameQuery(new Name(str, i, str2), inetAddress);
            }
            i4 = (i4 << 8) + i6;
            i3++;
        }
        return (i3 != 4 || str.endsWith(".")) ? doNameQuery(new Name(str, i, str2), inetAddress) : new NbtAddress(UNKNOWN_NAME, i4, false, 0);
    }

    static NbtAddress getCachedAddress(Name name) {
        NbtAddress nbtAddress;
        if (CACHE_POLICY == 0) {
            return null;
        }
        synchronized (ADDRESS_CACHE) {
            CacheEntry cacheEntry = (CacheEntry) ADDRESS_CACHE.get(name);
            if (cacheEntry != null && cacheEntry.expiration < System.currentTimeMillis() && cacheEntry.expiration >= 0) {
                cacheEntry = null;
            }
            nbtAddress = cacheEntry != null ? cacheEntry.address : null;
        }
        return nbtAddress;
    }

    public static NbtAddress getLocalHost() {
        return localhost;
    }

    public static Name getLocalName() {
        return localhost.hostName;
    }

    public static InetAddress getWINSAddress() {
        if (NBNS.length == 0) {
            return null;
        }
        return NBNS[nbnsIndex];
    }

    public static boolean isWINS(InetAddress inetAddress) {
        for (int i = 0; inetAddress != null && i < NBNS.length; i++) {
            if (inetAddress.hashCode() == NBNS[i].hashCode()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InetAddress switchWINS() {
        nbnsIndex = nbnsIndex + 1 < NBNS.length ? nbnsIndex + 1 : 0;
        if (NBNS.length == 0) {
            return null;
        }
        return NBNS[nbnsIndex];
    }

    private static void updateLookupTable(Name name) {
        synchronized (LOOKUP_TABLE) {
            LOOKUP_TABLE.remove(name);
            LOOKUP_TABLE.notifyAll();
        }
    }

    void checkData() {
        if (this.hostName == UNKNOWN_NAME) {
            getAllByAddress(this);
        }
    }

    void checkNodeStatusData() {
        if (this.isDataFromNodeStatus) {
            return;
        }
        getAllByAddress(this);
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof NbtAddress) && ((NbtAddress) obj).address == this.address;
    }

    public String firstCalledName() {
        int i = 0;
        this.calledName = this.hostName.name;
        if (!Character.isDigit(this.calledName.charAt(0))) {
            switch (this.hostName.hexCode) {
                case 27:
                case 28:
                case 29:
                    this.calledName = SMBSERVER_NAME;
                    break;
            }
        } else {
            int length = this.calledName.length();
            char[] charArray = this.calledName.toCharArray();
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                int i3 = i2 + 1;
                if (!Character.isDigit(charArray[i2])) {
                    break;
                }
                if (i3 == length && i == 3) {
                    this.calledName = SMBSERVER_NAME;
                    break;
                }
                if (i3 >= length || charArray[i3] != '.') {
                    i2 = i3;
                } else {
                    i++;
                    i2 = i3 + 1;
                }
            }
        }
        return this.calledName;
    }

    public byte[] getAddress() {
        return new byte[]{(byte) ((this.address >>> 24) & 255), (byte) ((this.address >>> 16) & 255), (byte) ((this.address >>> 8) & 255), (byte) (this.address & 255)};
    }

    public String getHostAddress() {
        return ((this.address >>> 24) & 255) + "." + ((this.address >>> 16) & 255) + "." + ((this.address >>> 8) & 255) + "." + ((this.address >>> 0) & 255);
    }

    public String getHostName() {
        return this.hostName == UNKNOWN_NAME ? getHostAddress() : this.hostName.name;
    }

    public InetAddress getInetAddress() {
        return InetAddress.getByName(getHostAddress());
    }

    public byte[] getMacAddress() {
        checkNodeStatusData();
        return this.macAddress;
    }

    public int getNameType() {
        return this.hostName.hexCode;
    }

    public int getNodeType() {
        checkData();
        return this.nodeType;
    }

    public int hashCode() {
        return this.address;
    }

    public boolean isActive() {
        checkNodeStatusData();
        return this.isActive;
    }

    public boolean isBeingDeleted() {
        checkNodeStatusData();
        return this.isBeingDeleted;
    }

    public boolean isGroupAddress() {
        checkData();
        return this.groupName;
    }

    public boolean isInConflict() {
        checkNodeStatusData();
        return this.isInConflict;
    }

    public boolean isPermanent() {
        checkNodeStatusData();
        return this.isPermanent;
    }

    public String nextCalledName() {
        if (this.calledName == this.hostName.name) {
            this.calledName = SMBSERVER_NAME;
        } else if (this.calledName == SMBSERVER_NAME) {
            try {
                NbtAddress[] nodeStatus = CLIENT.getNodeStatus(this);
                if (this.hostName.hexCode == 29) {
                    for (int i = 0; i < nodeStatus.length; i++) {
                        if (nodeStatus[i].hostName.hexCode == 32) {
                            return nodeStatus[i].hostName.name;
                        }
                    }
                    return null;
                }
                if (this.isDataFromNodeStatus) {
                    this.calledName = null;
                    return this.hostName.name;
                }
            } catch (UnknownHostException e) {
                this.calledName = null;
            }
        } else {
            this.calledName = null;
        }
        return this.calledName;
    }

    public String toString() {
        return this.hostName.toString() + "/" + getHostAddress();
    }
}
