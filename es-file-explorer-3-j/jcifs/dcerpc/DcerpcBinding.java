package jcifs.dcerpc;

import java.util.HashMap;
import jcifs.dcerpc.msrpc.lsarpc;
import jcifs.dcerpc.msrpc.netdfs;
import jcifs.dcerpc.msrpc.samr;
import jcifs.dcerpc.msrpc.srvsvc;

/* loaded from: classes.dex */
public class DcerpcBinding {
    private static HashMap INTERFACES = new HashMap();
    int major;
    int minor;
    String proto;
    String server;
    String endpoint = null;
    HashMap options = null;
    UUID uuid = null;

    static {
        INTERFACES.put("srvsvc", srvsvc.getSyntax());
        INTERFACES.put("lsarpc", lsarpc.getSyntax());
        INTERFACES.put("samr", samr.getSyntax());
        INTERFACES.put("netdfs", netdfs.getSyntax());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DcerpcBinding(String str, String str2) {
        this.proto = str;
        this.server = str2;
    }

    public static void addInterface(String str, String str2) {
        INTERFACES.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getOption(String str) {
        if (str.equals("endpoint")) {
            return this.endpoint;
        }
        if (this.options != null) {
            return this.options.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOption(String str, Object obj) {
        String str2;
        if (!str.equals("endpoint")) {
            if (this.options == null) {
                this.options = new HashMap();
            }
            this.options.put(str, obj);
            return;
        }
        this.endpoint = obj.toString().toLowerCase();
        if (!this.endpoint.startsWith("\\pipe\\") || (str2 = (String) INTERFACES.get(this.endpoint.substring(6))) == null) {
            throw new DcerpcException("Bad endpoint: " + this.endpoint);
        }
        int indexOf = str2.indexOf(58);
        int indexOf2 = str2.indexOf(46, indexOf + 1);
        this.uuid = new UUID(str2.substring(0, indexOf));
        this.major = Integer.parseInt(str2.substring(indexOf + 1, indexOf2));
        this.minor = Integer.parseInt(str2.substring(indexOf2 + 1));
    }

    public String toString() {
        String str = this.proto + ":" + this.server + "[" + this.endpoint;
        if (this.options != null) {
            for (Object obj : this.options.keySet()) {
                str = str + "," + obj + "=" + this.options.get(obj);
            }
        }
        return str + "]";
    }
}
