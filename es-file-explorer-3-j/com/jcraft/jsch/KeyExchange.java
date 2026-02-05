package com.jcraft.jsch;

/* loaded from: classes.dex */
public abstract class KeyExchange {
    static String i = "diffie-hellman-group1-sha1";
    static String j = "ssh-rsa,ssh-dss";
    static String k = "blowfish-cbc";
    static String l = "blowfish-cbc";
    static String m = "hmac-md5";
    static String n = "hmac-md5";
    static String o = "";
    static String p = "";
    protected Session q = null;
    protected HASH r = null;
    protected byte[] s = null;
    protected byte[] t = null;
    protected byte[] u = null;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a0, code lost:
    
        if (r1 != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a2, code lost:
    
        r3[r4] = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ed, code lost:
    
        if (r3[r4] != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ef, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] a(byte[] bArr, byte[] bArr2) {
        String[] strArr = new String[10];
        Buffer buffer = new Buffer(bArr);
        buffer.c(17);
        Buffer buffer2 = new Buffer(bArr2);
        buffer2.c(17);
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= 10) {
                if (JSch.b().a(1)) {
                    JSch.b().a(1, "kex: server->client " + strArr[3] + " " + strArr[5] + " " + strArr[7]);
                    JSch.b().a(1, "kex: client->server " + strArr[2] + " " + strArr[4] + " " + strArr[6]);
                }
                return strArr;
            }
            byte[] i4 = buffer.i();
            byte[] i5 = buffer2.i();
            int i6 = 0;
            int i7 = 0;
            while (true) {
                if (i6 >= i5.length) {
                    break;
                }
                while (i6 < i5.length && i5[i6] != 44) {
                    i6++;
                }
                if (i7 == i6) {
                    return null;
                }
                String c = Util.c(i5, i7, i6 - i7);
                int i8 = 0;
                int i9 = 0;
                while (i8 < i4.length) {
                    while (i8 < i4.length && i4[i8] != 44) {
                        i8++;
                    }
                    if (i9 == i8) {
                        return null;
                    }
                    if (c.equals(Util.c(i4, i9, i8 - i9))) {
                        strArr[i3] = c;
                        break;
                    }
                    i9 = i8 + 1;
                    i8 = i9;
                }
                i7 = i6 + 1;
                i6 = i7;
            }
            i2 = i3 + 1;
        }
    }

    public abstract String a();

    public abstract void a(Session session, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    public abstract boolean a(Buffer buffer);

    public abstract int b();

    public String c() {
        HASH hash;
        try {
            hash = (HASH) Class.forName(this.q.d("md5")).newInstance();
        } catch (Exception e) {
            System.err.println("getFingerPrint: " + e);
            hash = null;
        }
        return Util.a(hash, g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] d() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] e() {
        return this.t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HASH f() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] g() {
        return this.u;
    }
}
