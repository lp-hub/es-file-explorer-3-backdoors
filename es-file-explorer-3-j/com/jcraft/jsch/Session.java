package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes.dex */
public class Session implements Runnable {
    private static final byte[] ae = Util.b("keepalive@jcraft.com");
    static Random f;
    private byte[] A;
    private byte[] B;
    private Cipher E;
    private Cipher F;
    private MAC G;
    private MAC H;
    private byte[] I;
    private byte[] J;
    private Compression K;
    private Compression L;
    private IO M;
    private Socket N;
    private UserInfo V;
    JSch o;
    Runnable q;
    private byte[] r;
    private byte[] t;
    private byte[] u;
    private byte[] v;
    private byte[] w;
    private byte[] x;
    private byte[] y;
    private byte[] z;
    private byte[] s = Util.b("SSH-2.0-JSCH-0.1.44");
    private int C = 0;
    private int D = 0;

    /* renamed from: a, reason: collision with root package name */
    String[] f3345a = null;
    private int O = 0;
    private boolean P = false;
    private boolean Q = false;
    private Thread R = null;
    private Object S = new Object();

    /* renamed from: b, reason: collision with root package name */
    boolean f3346b = false;
    boolean c = false;
    InputStream d = null;
    OutputStream e = null;
    SocketFactory i = null;
    private Hashtable T = null;
    private Proxy U = null;
    private String W = null;
    private int X = 0;
    private int Y = 1;
    protected boolean j = false;
    private long Z = 0;
    String k = "127.0.0.1";
    int l = 22;
    String m = null;
    byte[] n = null;
    private boolean aa = false;
    int[] p = new int[1];
    private int ab = 8;
    private int ac = 8;
    private GlobalRequestReply ad = new GlobalRequestReply(this, null);
    private HostKey af = null;
    Buffer g = new Buffer();
    Packet h = new Packet(this.g);

    /* loaded from: classes.dex */
    class GlobalRequestReply {

        /* renamed from: b, reason: collision with root package name */
        private Thread f3348b;
        private int c;

        private GlobalRequestReply() {
            this.f3348b = null;
            this.c = -1;
        }

        /* synthetic */ GlobalRequestReply(Session session, GlobalRequestReply globalRequestReply) {
            this();
        }

        Thread a() {
            return this.f3348b;
        }

        void a(int i) {
            this.c = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Session(JSch jSch) {
        this.o = jSch;
    }

    private void a(Buffer buffer, Cipher cipher, MAC mac, int i, int i2) {
        if (!cipher.c()) {
            throw new JSchException("Packet corrupt");
        }
        if (i == 262144 || mac == null) {
            mac = null;
        }
        int i3 = i2 - buffer.c;
        while (i3 > 0) {
            buffer.j();
            int length = i3 > buffer.f3290b.length ? buffer.f3290b.length : i3;
            this.M.c(buffer.f3290b, 0, length);
            if (mac != null) {
                mac.a(buffer.f3290b, 0, length);
            }
            i3 -= length;
        }
        if (mac != null) {
            mac.a(buffer.f3290b, 0);
        }
        throw new JSchException("Packet corrupt");
    }

    private void a(Buffer buffer, KeyExchange keyExchange) {
        a(keyExchange);
        this.aa = false;
    }

    private void a(KeyExchange keyExchange) {
        byte[] d = keyExchange.d();
        byte[] e = keyExchange.e();
        HASH f2 = keyExchange.f();
        if (this.v == null) {
            this.v = new byte[e.length];
            System.arraycopy(e, 0, this.v, 0, e.length);
        }
        this.g.j();
        this.g.c(d);
        this.g.a(e);
        this.g.a((byte) 65);
        this.g.a(this.v);
        f2.a(this.g.f3290b, 0, this.g.c);
        this.w = f2.c();
        int length = (this.g.c - this.v.length) - 1;
        byte[] bArr = this.g.f3290b;
        bArr[length] = (byte) (bArr[length] + 1);
        f2.a(this.g.f3290b, 0, this.g.c);
        this.x = f2.c();
        byte[] bArr2 = this.g.f3290b;
        bArr2[length] = (byte) (bArr2[length] + 1);
        f2.a(this.g.f3290b, 0, this.g.c);
        this.y = f2.c();
        byte[] bArr3 = this.g.f3290b;
        bArr3[length] = (byte) (bArr3[length] + 1);
        f2.a(this.g.f3290b, 0, this.g.c);
        this.z = f2.c();
        byte[] bArr4 = this.g.f3290b;
        bArr4[length] = (byte) (bArr4[length] + 1);
        f2.a(this.g.f3290b, 0, this.g.c);
        this.A = f2.c();
        byte[] bArr5 = this.g.f3290b;
        bArr5[length] = (byte) (bArr5[length] + 1);
        f2.a(this.g.f3290b, 0, this.g.c);
        this.B = f2.c();
        try {
            this.E = (Cipher) Class.forName(d(this.f3345a[3])).newInstance();
            while (this.E.b() > this.z.length) {
                this.g.j();
                this.g.c(d);
                this.g.a(e);
                this.g.a(this.z);
                f2.a(this.g.f3290b, 0, this.g.c);
                byte[] c = f2.c();
                byte[] bArr6 = new byte[this.z.length + c.length];
                System.arraycopy(this.z, 0, bArr6, 0, this.z.length);
                System.arraycopy(c, 0, bArr6, this.z.length, c.length);
                this.z = bArr6;
            }
            this.E.a(1, this.z, this.x);
            this.ab = this.E.a();
            this.G = (MAC) Class.forName(d(this.f3345a[5])).newInstance();
            this.G.a(this.B);
            this.I = new byte[this.G.a()];
            this.J = new byte[this.G.a()];
            this.F = (Cipher) Class.forName(d(this.f3345a[2])).newInstance();
            while (this.F.b() > this.y.length) {
                this.g.j();
                this.g.c(d);
                this.g.a(e);
                this.g.a(this.y);
                f2.a(this.g.f3290b, 0, this.g.c);
                byte[] c2 = f2.c();
                byte[] bArr7 = new byte[this.y.length + c2.length];
                System.arraycopy(this.y, 0, bArr7, 0, this.y.length);
                System.arraycopy(c2, 0, bArr7, this.y.length, c2.length);
                this.y = bArr7;
            }
            this.F.a(0, this.y, this.w);
            this.ac = this.F.a();
            this.H = (MAC) Class.forName(d(this.f3345a[4])).newInstance();
            this.H.a(this.A);
            f(this.f3345a[6]);
            g(this.f3345a[7]);
        } catch (Exception e2) {
            if (!(e2 instanceof JSchException)) {
                throw new JSchException(e2.toString(), e2);
            }
            throw e2;
        }
    }

    private void a(String str, int i, KeyExchange keyExchange) {
        int a2;
        String a3;
        boolean z;
        boolean z2 = false;
        String d = d("StrictHostKeyChecking");
        if (this.W != null) {
            str = this.W;
        }
        byte[] g = keyExchange.g();
        String a4 = keyExchange.a();
        String c = keyExchange.c();
        if (this.W == null && i != 22) {
            str = "[" + str + "]:" + i;
        }
        HostKeyRepository a5 = this.o.a();
        synchronized (a5) {
            a2 = a5.a(str, g);
        }
        if ((d.equals("ask") || d.equals("yes")) && a2 == 2) {
            synchronized (a5) {
                a3 = a5.a();
            }
            if (a3 == null) {
                a3 = "known_hosts";
            }
            if (this.V != null) {
                String str2 = "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the " + a4 + " host key has just been changed.\nThe fingerprint for the " + a4 + " key sent by the remote host is\n" + c + ".\nPlease contact your system administrator.\nAdd correct host key in " + a3 + " to get rid of this message.";
                if (d.equals("ask")) {
                    z2 = this.V.a(String.valueOf(str2) + "\nDo you want to delete the old key and insert the new key?");
                } else {
                    this.V.d(str2);
                }
            }
            if (!z2) {
                throw new JSchException("HostKey has been changed: " + str);
            }
            synchronized (a5) {
                a5.a(str, a4.equals("DSA") ? "ssh-dss" : "ssh-rsa", null);
            }
            z = true;
        } else {
            z = false;
        }
        if ((d.equals("ask") || d.equals("yes")) && a2 != 0 && !z) {
            if (d.equals("yes")) {
                throw new JSchException("reject HostKey: " + this.k);
            }
            if (this.V == null) {
                if (a2 != 1) {
                    throw new JSchException("HostKey has been changed: " + this.k);
                }
                throw new JSchException("UnknownHostKey: " + this.k + ". " + a4 + " key fingerprint is " + c);
            }
            if (!this.V.a("The authenticity of host '" + this.k + "' can't be established.\n" + a4 + " key fingerprint is " + c + ".\nAre you sure you want to continue connecting?")) {
                throw new JSchException("reject HostKey: " + this.k);
            }
            z = true;
        }
        boolean z3 = (d.equals("no") && 1 == a2) ? true : z;
        if (a2 == 0 && JSch.b().a(1)) {
            JSch.b().a(1, "Host '" + this.k + "' is known and mathces the " + a4 + " host key");
        }
        if (z3 && JSch.b().a(2)) {
            JSch.b().a(2, "Permanently added '" + this.k + "' (" + a4 + ") to the list of known hosts.");
        }
        if (d("HashKnownHosts").equals("yes") && (a5 instanceof KnownHosts)) {
            this.af = ((KnownHosts) a5).b(str, g);
        } else {
            this.af = new HostKey(str, g);
        }
        if (z3) {
            synchronized (a5) {
                a5.a(this.af, this.V);
            }
        }
    }

    private KeyExchange b(Buffer buffer) {
        int c = buffer.c();
        if (c != buffer.a()) {
            buffer.f();
            this.u = new byte[buffer.c - 5];
        } else {
            this.u = new byte[(c - 1) - buffer.f()];
        }
        System.arraycopy(buffer.f3290b, buffer.d, this.u, 0, this.u.length);
        if (!this.aa) {
            i();
        }
        this.f3345a = KeyExchange.a(this.u, this.t);
        if (this.f3345a == null) {
            throw new JSchException("Algorithm negotiation fail");
        }
        if (!this.Q && (this.f3345a[2].equals("none") || this.f3345a[3].equals("none"))) {
            throw new JSchException("NONE Cipher should not be chosen before authentification is successed.");
        }
        try {
            KeyExchange keyExchange = (KeyExchange) Class.forName(d(this.f3345a[0])).newInstance();
            keyExchange.a(this, this.r, this.s, this.u, this.t);
            return keyExchange;
        } catch (Exception e) {
            throw new JSchException(e.toString(), e);
        }
    }

    private void c(Packet packet) {
        synchronized (this.S) {
            a(packet);
            if (this.M != null) {
                this.M.a(packet);
                this.D++;
            }
        }
    }

    static boolean e(String str) {
        try {
            Cipher cipher = (Cipher) Class.forName(str).newInstance();
            cipher.a(0, new byte[cipher.b()], new byte[cipher.a()]);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private void f(String str) {
        if (str.equals("none")) {
            this.K = null;
            return;
        }
        String d = d(str);
        if (d != null) {
            if (str.equals("zlib") || (this.Q && str.equals("zlib@openssh.com"))) {
                try {
                    this.K = (Compression) Class.forName(d).newInstance();
                    int i = 6;
                    try {
                        i = Integer.parseInt(d("compression_level"));
                    } catch (Exception e) {
                    }
                    this.K.a(1, i);
                } catch (Exception e2) {
                    throw new JSchException(e2.toString(), e2);
                }
            }
        }
    }

    private void g(String str) {
        if (str.equals("none")) {
            this.L = null;
            return;
        }
        String d = d(str);
        if (d != null) {
            if (str.equals("zlib") || (this.Q && str.equals("zlib@openssh.com"))) {
                try {
                    this.L = (Compression) Class.forName(d).newInstance();
                    this.L.a(0, 0);
                } catch (Exception e) {
                    throw new JSchException(e.toString(), e);
                }
            }
        }
    }

    private String[] h(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (JSch.b().a(1)) {
            JSch.b().a(1, "CheckCiphers: " + str);
        }
        Vector vector = new Vector();
        String[] a2 = Util.a(str, ",");
        for (int i = 0; i < a2.length; i++) {
            if (!e(d(a2[i]))) {
                vector.addElement(a2[i]);
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        String[] strArr = new String[vector.size()];
        System.arraycopy(vector.toArray(), 0, strArr, 0, vector.size());
        if (!JSch.b().a(1)) {
            return strArr;
        }
        for (String str2 : strArr) {
            JSch.b().a(1, String.valueOf(str2) + " is not available.");
        }
        return strArr;
    }

    private void i() {
        if (this.aa) {
            return;
        }
        String d = d("cipher.c2s");
        String d2 = d("cipher.s2c");
        String[] h = h(d("CheckCiphers"));
        if (h != null && h.length > 0) {
            d = Util.a(d, h);
            d2 = Util.a(d2, h);
            if (d == null || d2 == null) {
                throw new JSchException("There are not any available ciphers.");
            }
        }
        this.aa = true;
        this.Z = System.currentTimeMillis();
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 20);
        synchronized (f) {
            f.a(buffer.f3290b, buffer.c, 16);
            buffer.b(16);
        }
        buffer.b(Util.b(d("kex")));
        buffer.b(Util.b(d("server_host_key")));
        buffer.b(Util.b(d));
        buffer.b(Util.b(d2));
        buffer.b(Util.b(d("mac.c2s")));
        buffer.b(Util.b(d("mac.s2c")));
        buffer.b(Util.b(d("compression.c2s")));
        buffer.b(Util.b(d("compression.s2c")));
        buffer.b(Util.b(d("lang.c2s")));
        buffer.b(Util.b(d("lang.s2c")));
        buffer.a((byte) 0);
        buffer.a(0);
        buffer.c(5);
        this.t = new byte[buffer.a()];
        buffer.d(this.t);
        b(packet);
        if (JSch.b().a(1)) {
            JSch.b().a(1, "SSH_MSG_KEXINIT sent");
        }
    }

    private void j() {
        this.h.a();
        this.g.a((byte) 21);
        b(this.h);
        if (JSch.b().a(1)) {
            JSch.b().a(1, "SSH_MSG_NEWKEYS sent");
        }
    }

    public Buffer a(Buffer buffer) {
        while (true) {
            buffer.j();
            this.M.c(buffer.f3290b, buffer.c, this.ab);
            buffer.c += this.ab;
            if (this.E != null) {
                this.E.a(buffer.f3290b, 0, this.ab, buffer.f3290b, 0);
            }
            int i = ((buffer.f3290b[0] << 24) & (-16777216)) | ((buffer.f3290b[1] << 16) & 16711680) | ((buffer.f3290b[2] << 8) & 65280) | (buffer.f3290b[3] & 255);
            if (i < 5 || i > 262144) {
                a(buffer, this.E, this.G, i, 262144);
            }
            int i2 = (i + 4) - this.ab;
            if (buffer.c + i2 > buffer.f3290b.length) {
                byte[] bArr = new byte[buffer.c + i2];
                System.arraycopy(buffer.f3290b, 0, bArr, 0, buffer.c);
                buffer.f3290b = bArr;
            }
            if (i2 % this.ab != 0) {
                String str = "Bad packet length " + i2;
                if (JSch.b().a(4)) {
                    JSch.b().a(4, str);
                }
                a(buffer, this.E, this.G, i, 262144 - this.ab);
            }
            if (i2 > 0) {
                this.M.c(buffer.f3290b, buffer.c, i2);
                buffer.c += i2;
                if (this.E != null) {
                    this.E.a(buffer.f3290b, this.ab, i2, buffer.f3290b, this.ab);
                }
            }
            if (this.G != null) {
                this.G.a(this.C);
                this.G.a(buffer.f3290b, 0, buffer.c);
                this.G.a(this.I, 0);
                this.M.c(this.J, 0, this.J.length);
                if (!Arrays.equals(this.I, this.J)) {
                    if (i2 > 262144) {
                        throw new IOException("MAC Error");
                    }
                    a(buffer, this.E, this.G, i, 262144 - i2);
                }
            }
            this.C++;
            if (this.L != null) {
                this.p[0] = (buffer.c - 5) - buffer.f3290b[4];
                byte[] a2 = this.L.a(buffer.f3290b, 5, this.p);
                if (a2 == null) {
                    System.err.println("fail in inflater");
                    break;
                }
                buffer.f3290b = a2;
                buffer.c = this.p[0] + 5;
            }
            int m = buffer.m() & 255;
            if (m == 1) {
                buffer.l();
                buffer.c();
                buffer.e();
                throw new JSchException("SSH_MSG_DISCONNECT: " + buffer.c() + " " + Util.b(buffer.i()) + " " + Util.b(buffer.i()));
            }
            if (m == 2) {
                continue;
            } else if (m == 3) {
                buffer.l();
                buffer.c();
                buffer.e();
                int c = buffer.c();
                if (JSch.b().a(1)) {
                    JSch.b().a(1, "Received SSH_MSG_UNIMPLEMENTED for " + c);
                }
            } else if (m == 4) {
                buffer.l();
                buffer.c();
                buffer.e();
            } else if (m == 93) {
                buffer.l();
                buffer.c();
                buffer.e();
                Channel a3 = Channel.a(buffer.c(), this);
                if (a3 != null) {
                    a3.f(buffer.c());
                }
            } else if (m == 52) {
                this.Q = true;
                if (this.L == null && this.K == null) {
                    f(this.f3345a[6]);
                    g(this.f3345a[7]);
                }
            }
        }
        buffer.l();
        return buffer;
    }

    public Channel a(String str) {
        if (!this.P) {
            throw new JSchException("session is down");
        }
        try {
            Channel a2 = Channel.a(str);
            a(a2);
            a2.b();
            return a2;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x038e, code lost:
    
        r2 = r0.toLowerCase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0392, code lost:
    
        r5 = com.jcraft.jsch.Util.a(r2, ",");
        r6 = r2;
        r0 = 0;
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x05ae, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x03d4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x03de, code lost:
    
        throw new com.jcraft.jsch.JSchException(r0.toString(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x03b6, code lost:
    
        r13.aa = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x03d3, code lost:
    
        throw new com.jcraft.jsch.JSchException("invalid protocol(newkyes): " + ((int) r13.g.m()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x03b1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x03b2, code lost:
    
        r13.aa = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x03b5, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x02f0, code lost:
    
        r13.aa = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0307, code lost:
    
        throw new com.jcraft.jsch.JSchException("verify: " + r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0308, code lost:
    
        r13.aa = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0325, code lost:
    
        throw new com.jcraft.jsch.JSchException("invalid protocol(kex): " + ((int) r13.g.m()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x022b, code lost:
    
        throw new com.jcraft.jsch.JSchException("invalid server's version string");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0209, code lost:
    
        if (r0 == r13.g.f3290b.length) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x020c, code lost:
    
        if (r0 < 7) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0217, code lost:
    
        if (r13.g.f3290b[4] != 49) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0222, code lost:
    
        if (r13.g.f3290b[6] == 57) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x022c, code lost:
    
        r13.r = new byte[r0];
        java.lang.System.arraycopy(r13.g.f3290b, 0, r13.r, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0244, code lost:
    
        if (com.jcraft.jsch.JSch.b().a(1) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0246, code lost:
    
        com.jcraft.jsch.JSch.b().a(1, "Remote version string: " + com.jcraft.jsch.Util.b(r13.r));
        com.jcraft.jsch.JSch.b().a(1, "Local version string: " + com.jcraft.jsch.Util.b(r13.s));
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0280, code lost:
    
        i();
        r13.g = a(r13.g);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0293, code lost:
    
        if (r13.g.m() == 20) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0295, code lost:
    
        r13.aa = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02b2, code lost:
    
        throw new com.jcraft.jsch.JSchException("invalid protocol: " + ((int) r13.g.m()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02bc, code lost:
    
        if (com.jcraft.jsch.JSch.b().a(1) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x02be, code lost:
    
        com.jcraft.jsch.JSch.b().a(1, "SSH_MSG_KEXINIT received");
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02c8, code lost:
    
        r0 = b(r13.g);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02ce, code lost:
    
        r13.g = a(r13.g);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02e0, code lost:
    
        if (r0.b() != r13.g.m()) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02e2, code lost:
    
        r13.Z = java.lang.System.currentTimeMillis();
        r1 = r0.a(r13.g);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02ee, code lost:
    
        if (r1 != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x032a, code lost:
    
        if (r0.b() != 0) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x032c, code lost:
    
        a(r13.k, r13.l, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0333, code lost:
    
        j();
        r13.g = a(r13.g);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0346, code lost:
    
        if (r13.g.m() != 21) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0351, code lost:
    
        if (com.jcraft.jsch.JSch.b().a(1) == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0353, code lost:
    
        com.jcraft.jsch.JSch.b().a(1, "SSH_MSG_NEWKEYS received");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x035d, code lost:
    
        a(r13.g, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0362, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0363, code lost:
    
        r0 = (com.jcraft.jsch.UserAuth) java.lang.Class.forName(d("userauth.none")).newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0373, code lost:
    
        r4 = r0.a(r13);
        r2 = d("PreferredAuthentications");
        r7 = com.jcraft.jsch.Util.a(r2, ",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0384, code lost:
    
        if (r4 != false) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0386, code lost:
    
        r0 = ((com.jcraft.jsch.UserAuthNone) r0).a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x038c, code lost:
    
        if (r0 == null) goto L128;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x05a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0462 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x051f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(int i) {
        int i2;
        int i3;
        boolean z;
        String[] a2;
        String[] a3;
        String str;
        int i4;
        boolean z2;
        boolean z3;
        UserAuth userAuth;
        boolean z4;
        InputStream a4;
        OutputStream b2;
        if (this.P) {
            throw new JSchException("session is already connected");
        }
        this.M = new IO();
        if (f == null) {
            try {
                f = (Random) Class.forName(d("random")).newInstance();
            } catch (Exception e) {
                throw new JSchException(e.toString(), e);
            }
        }
        Packet.a(f);
        if (JSch.b().a(1)) {
            JSch.b().a(1, "Connecting to " + this.k + " port " + this.l);
        }
        try {
            try {
                if (this.U == null) {
                    if (this.i == null) {
                        this.N = Util.a(this.k, this.l, i);
                        a4 = this.N.getInputStream();
                        b2 = this.N.getOutputStream();
                    } else {
                        this.N = this.i.a(this.k, this.l);
                        a4 = this.i.a(this.N);
                        b2 = this.i.b(this.N);
                    }
                    this.N.setTcpNoDelay(true);
                    this.M.a(a4);
                    this.M.a(b2);
                } else {
                    synchronized (this.U) {
                        this.U.a(this.i, this.k, this.l, i);
                        this.M.a(this.U.a());
                        this.M.a(this.U.b());
                        this.N = this.U.c();
                    }
                }
                if (i > 0 && this.N != null) {
                    this.N.setSoTimeout(i);
                }
                this.P = true;
                if (JSch.b().a(1)) {
                    JSch.b().a(1, "Connection established");
                }
                this.o.a(this);
                byte[] bArr = new byte[this.s.length + 1];
                System.arraycopy(this.s, 0, bArr, 0, this.s.length);
                bArr[bArr.length - 1] = 10;
                this.M.a(bArr, 0, bArr.length);
                while (true) {
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        if (i5 >= this.g.f3290b.length) {
                            int i7 = i6;
                            i2 = i5;
                            i3 = i7;
                            break;
                        }
                        i6 = this.M.a();
                        if (i6 < 0) {
                            i2 = i5;
                            i3 = i6;
                            break;
                        }
                        this.g.f3290b[i5] = (byte) i6;
                        i5++;
                        if (i6 == 10) {
                            i2 = i5;
                            i3 = i6;
                            break;
                        }
                    }
                    if (i3 < 0) {
                        throw new JSchException("connection is closed by foreign host");
                    }
                    if (this.g.f3290b[i2 - 1] == 10 && i2 - 1 > 0 && this.g.f3290b[i2 - 1] == 13) {
                        i2--;
                    }
                    if (i2 <= 3 || (i2 != this.g.f3290b.length && (this.g.f3290b[0] != 83 || this.g.f3290b[1] != 83 || this.g.f3290b[2] != 72 || this.g.f3290b[3] != 45))) {
                    }
                }
            } catch (Exception e2) {
                this.aa = false;
                if (this.P) {
                    try {
                        this.h.a();
                        this.g.a((byte) 1);
                        this.g.a(3);
                        this.g.b(Util.b(e2.toString()));
                        this.g.b(Util.b("en"));
                        b(this.h);
                        b();
                    } catch (Exception e3) {
                    }
                }
                this.P = false;
                if (e2 instanceof RuntimeException) {
                    throw ((RuntimeException) e2);
                }
                if (!(e2 instanceof JSchException)) {
                    throw new JSchException("Session.connect: " + e2);
                }
                throw ((JSchException) e2);
            }
        } finally {
            Util.c(this.n);
            this.n = null;
        }
        while (!z2 && a2 != null) {
            if (i4 >= a2.length) {
                z3 = z;
                break;
            }
            int i8 = i4 + 1;
            String str2 = a2[i4];
            boolean z5 = false;
            int i9 = 0;
            while (true) {
                if (i9 >= a3.length) {
                    break;
                }
                if (a3[i9].equals(str2)) {
                    z5 = true;
                    break;
                }
                i9++;
            }
            if (z5) {
                if (JSch.b().a(1)) {
                    String str3 = "Authentications that can continue: ";
                    for (int i10 = i8 - 1; i10 < a2.length; i10++) {
                        str3 = String.valueOf(str3) + a2[i10];
                        if (i10 + 1 < a2.length) {
                            str3 = String.valueOf(str3) + ",";
                        }
                    }
                    JSch.b().a(1, str3);
                    JSch.b().a(1, "Next authentication method: " + str2);
                }
                try {
                } catch (Exception e4) {
                    if (JSch.b().a(2)) {
                        JSch.b().a(2, "failed to load " + str2 + " method");
                    }
                }
                if (d("userauth." + str2) != null) {
                    userAuth = (UserAuth) Class.forName(d("userauth." + str2)).newInstance();
                    if (userAuth == null) {
                        z = false;
                        try {
                            try {
                                z4 = userAuth.a(this);
                                if (z4) {
                                    try {
                                        if (JSch.b().a(1)) {
                                            JSch.b().a(1, "Authentication succeeded (" + str2 + ").");
                                            z2 = z4;
                                            i4 = i8;
                                        }
                                    } catch (JSchAuthCancelException e5) {
                                        z = true;
                                        z2 = z4;
                                        i4 = i8;
                                    } catch (JSchPartialAuthException e6) {
                                        z2 = z4;
                                        e = e6;
                                        String methods = e.getMethods();
                                        String[] a5 = Util.a(methods, ",");
                                        i4 = !str.equals(methods) ? 0 : i8;
                                        a3 = a5;
                                        str = methods;
                                        z = false;
                                    } catch (Exception e7) {
                                        z2 = z4;
                                        z3 = false;
                                        if (z2) {
                                            if (!z3) {
                                                throw new JSchException("Auth fail");
                                            }
                                            throw new JSchException("Auth cancel");
                                        }
                                        if (i > 0 || this.O > 0) {
                                            this.N.setSoTimeout(this.O);
                                        }
                                        this.Q = true;
                                        synchronized (this.S) {
                                            if (this.P) {
                                                this.R = new Thread(this);
                                                this.R.setName("Connect thread " + this.k + " session");
                                                if (this.j) {
                                                    this.R.setDaemon(this.j);
                                                }
                                                this.R.start();
                                            }
                                        }
                                        return;
                                    }
                                }
                                z2 = z4;
                                i4 = i8;
                            } catch (RuntimeException e8) {
                                throw e8;
                            }
                        } catch (JSchAuthCancelException e9) {
                            z4 = z2;
                        } catch (JSchPartialAuthException e10) {
                            e = e10;
                        } catch (Exception e11) {
                            z4 = z2;
                        }
                    } else {
                        i4 = i8;
                    }
                }
                userAuth = null;
                if (userAuth == null) {
                }
            } else {
                i4 = i8;
            }
        }
        z3 = z;
        if (z2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Channel channel) {
        channel.b(this);
    }

    public void a(Packet packet) {
        if (this.K != null) {
            packet.f3324a.c = this.K.a(packet.f3324a.f3290b, 5, packet.f3324a.c);
        }
        if (this.F != null) {
            packet.a(this.ac);
            byte b2 = packet.f3324a.f3290b[4];
            synchronized (f) {
                f.a(packet.f3324a.f3290b, packet.f3324a.c - b2, b2);
            }
        } else {
            packet.a(8);
        }
        if (this.H != null) {
            this.H.a(this.D);
            this.H.a(packet.f3324a.f3290b, 0, packet.f3324a.c);
            this.H.a(packet.f3324a.f3290b, packet.f3324a.c);
        }
        if (this.F != null) {
            byte[] bArr = packet.f3324a.f3290b;
            this.F.a(bArr, 0, packet.f3324a.c, bArr, 0);
        }
        if (this.H != null) {
            packet.f3324a.b(this.H.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x003a, code lost:
    
        c(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x003d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0033, code lost:
    
        r14.h -= r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(Packet packet, Channel channel, int i) {
        byte b2;
        int i2;
        boolean z;
        long e = e();
        while (true) {
            if (!this.aa) {
                synchronized (channel) {
                    if (channel.h >= i) {
                        break;
                    }
                    if (channel.n || !channel.k()) {
                        break;
                    }
                    int i3 = -1;
                    synchronized (channel) {
                        if (channel.h > 0) {
                            long j = channel.h;
                            long j2 = j > ((long) i) ? i : j;
                            if (j2 != i) {
                                i2 = packet.a((int) j2, this.H != null ? this.H.a() : 0);
                            } else {
                                i2 = 0;
                            }
                            b2 = packet.f3324a.m();
                            i3 = channel.a();
                            i = (int) (i - j2);
                            channel.h -= j2;
                            z = true;
                        } else {
                            b2 = 0;
                            i2 = 0;
                            z = false;
                        }
                    }
                    if (z) {
                        c(packet);
                        if (i == 0) {
                            return;
                        } else {
                            packet.a(b2, i3, i2, i);
                        }
                    }
                    synchronized (channel) {
                        if (!this.aa) {
                            if (channel.h >= i) {
                                channel.h -= i;
                            } else {
                                try {
                                    try {
                                        channel.s++;
                                        channel.wait(100L);
                                    } finally {
                                        channel.s--;
                                    }
                                } catch (InterruptedException e2) {
                                    channel.s--;
                                }
                            }
                        }
                    }
                }
            } else {
                if (e > 0 && System.currentTimeMillis() - this.Z > e) {
                    throw new JSchException("timeout in wating for rekeying process.");
                }
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException e3) {
                }
            }
        }
        throw new IOException("channel is broken");
    }

    public void a(UserInfo userInfo) {
        this.V = userInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() {
        return this.v;
    }

    public void b() {
        if (this.P) {
            if (JSch.b().a(1)) {
                JSch.b().a(1, "Disconnecting from " + this.k + " port " + this.l);
            }
            Channel.a(this);
            this.P = false;
            PortWatcher.a(this);
            ChannelForwardedTCPIP.c(this);
            synchronized (this.S) {
                if (this.R != null) {
                    Thread.yield();
                    this.R.interrupt();
                    this.R = null;
                }
            }
            this.q = null;
            try {
                if (this.M != null) {
                    if (this.M.f3312a != null) {
                        this.M.f3312a.close();
                    }
                    if (this.M.f3313b != null) {
                        this.M.f3313b.close();
                    }
                    if (this.M.c != null) {
                        this.M.c.close();
                    }
                }
                if (this.U != null) {
                    synchronized (this.U) {
                        this.U.d();
                    }
                    this.U = null;
                } else if (this.N != null) {
                    this.N.close();
                }
            } catch (Exception e) {
            }
            this.M = null;
            this.N = null;
            this.o.b(this);
        }
    }

    public void b(int i) {
        this.l = i;
    }

    public void b(Packet packet) {
        long e = e();
        while (this.aa) {
            if (e > 0 && System.currentTimeMillis() - this.Z > e) {
                throw new JSchException("timeout in wating for rekeying process.");
            }
            byte m = packet.f3324a.m();
            if (m == 20 || m == 21 || m == 30 || m == 31 || m == 31 || m == 32 || m == 33 || m == 34 || m == 1) {
                break;
            } else {
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException e2) {
                }
            }
        }
        c(packet);
    }

    public void b(String str) {
        this.k = str;
    }

    public UserInfo c() {
        return this.V;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.m = str;
    }

    public String d(String str) {
        if (this.T != null) {
            Object obj = this.T.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        String a2 = JSch.a(str);
        if (a2 instanceof String) {
            return a2;
        }
        return null;
    }

    public boolean d() {
        return this.P;
    }

    public int e() {
        return this.O;
    }

    public void f() {
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 80);
        buffer.b(ae);
        buffer.a((byte) 1);
        b(packet);
    }

    public String g() {
        return this.k;
    }

    public String h() {
        return this.m;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x009b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:72:0x031a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02d6 A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Buffer a2;
        int m;
        Channel a3;
        this.q = this;
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        KeyExchange keyExchange = null;
        Buffer buffer2 = buffer;
        int i = 0;
        while (this.P && this.q != null) {
            try {
                try {
                    a2 = a(buffer2);
                    m = a2.m() & 255;
                } catch (InterruptedIOException e) {
                    if (!this.aa && i < this.Y) {
                        f();
                        i++;
                    } else {
                        if (!this.aa || i >= this.Y) {
                            throw e;
                        }
                        i++;
                    }
                }
                if (keyExchange == null || keyExchange.b() != m) {
                    switch (m) {
                        case 20:
                            keyExchange = b(a2);
                            buffer2 = a2;
                            i = 0;
                        case 21:
                            j();
                            a(a2, keyExchange);
                            i = 0;
                            keyExchange = null;
                            buffer2 = a2;
                        case 80:
                            a2.c();
                            a2.e();
                            a2.i();
                            if (!(a2.f() != 0)) {
                                break;
                            } else {
                                packet.a();
                                a2.a((byte) 82);
                                b(packet);
                                i = 0;
                                buffer2 = a2;
                            }
                        case 81:
                        case 82:
                            Thread a4 = this.ad.a();
                            if (a4 == null) {
                                break;
                            } else {
                                this.ad.a(m == 81 ? 1 : 0);
                                a4.interrupt();
                                i = 0;
                                buffer2 = a2;
                            }
                        case 90:
                            a2.c();
                            a2.e();
                            String b2 = Util.b(a2.i());
                            if ("forwarded-tcpip".equals(b2) || (("x11".equals(b2) && this.f3346b) || ("auth-agent@openssh.com".equals(b2) && this.c))) {
                                Channel a5 = Channel.a(b2);
                                a(a5);
                                a5.a(a2);
                                a5.b();
                                Thread thread = new Thread(a5);
                                thread.setName("Channel " + b2 + " " + this.k);
                                if (this.j) {
                                    thread.setDaemon(this.j);
                                }
                                thread.start();
                                i = 0;
                                buffer2 = a2;
                            } else {
                                packet.a();
                                a2.a((byte) 92);
                                a2.a(a2.c());
                                a2.a(1);
                                a2.b(Util.f3353a);
                                a2.b(Util.f3353a);
                                b(packet);
                                a2.c();
                                a2.e();
                                a3 = Channel.a(a2.c(), this);
                                if (a3 != null) {
                                    i = 0;
                                    buffer2 = a2;
                                } else {
                                    a3.q = 1;
                                    i = 0;
                                    buffer2 = a2;
                                }
                            }
                            break;
                        case 91:
                            a2.c();
                            a2.e();
                            Channel a6 = Channel.a(a2.c(), this);
                            int c = a2.c();
                            long d = a2.d();
                            int c2 = a2.c();
                            a6.a(d);
                            a6.g(c2);
                            a6.a(c);
                            i = 0;
                            buffer2 = a2;
                        case 92:
                            a2.c();
                            a2.e();
                            Channel a7 = Channel.a(a2.c(), this);
                            a7.p = a2.c();
                            a7.n = true;
                            a7.m = true;
                            a7.a(0);
                            i = 0;
                            buffer2 = a2;
                        case 93:
                            a2.c();
                            a2.e();
                            Channel a8 = Channel.a(a2.c(), this);
                            if (a8 == null) {
                                i = 0;
                                buffer2 = a2;
                            } else {
                                a8.f(a2.c());
                                i = 0;
                                buffer2 = a2;
                            }
                        case 94:
                            a2.c();
                            a2.f();
                            a2.f();
                            Channel a9 = Channel.a(a2.c(), this);
                            byte[] a10 = a2.a(iArr, iArr2);
                            if (a9 == null) {
                                i = 0;
                                buffer2 = a2;
                            } else if (iArr2[0] == 0) {
                                i = 0;
                                buffer2 = a2;
                            } else {
                                try {
                                    a9.a(a10, iArr[0], iArr2[0]);
                                    a9.d(a9.f - iArr2[0]);
                                    if (a9.f >= a9.e / 2) {
                                        break;
                                    } else {
                                        packet.a();
                                        a2.a((byte) 93);
                                        a2.a(a9.a());
                                        a2.a(a9.e - a9.f);
                                        b(packet);
                                        a9.d(a9.e);
                                        i = 0;
                                        buffer2 = a2;
                                    }
                                } catch (Exception e2) {
                                    try {
                                        a9.j();
                                        i = 0;
                                        buffer2 = a2;
                                    } catch (Exception e3) {
                                        i = 0;
                                        buffer2 = a2;
                                    }
                                }
                            }
                        case 95:
                            a2.c();
                            a2.e();
                            Channel a11 = Channel.a(a2.c(), this);
                            a2.c();
                            byte[] a12 = a2.a(iArr, iArr2);
                            if (a11 != null) {
                                if (iArr2[0] != 0) {
                                    a11.b(a12, iArr[0], iArr2[0]);
                                    a11.d(a11.f - iArr2[0]);
                                    if (a11.f >= a11.e / 2) {
                                        break;
                                    } else {
                                        packet.a();
                                        a2.a((byte) 93);
                                        a2.a(a11.a());
                                        a2.a(a11.e - a11.f);
                                        b(packet);
                                        a11.d(a11.e);
                                        i = 0;
                                        buffer2 = a2;
                                    }
                                } else {
                                    i = 0;
                                    buffer2 = a2;
                                }
                            } else {
                                i = 0;
                                buffer2 = a2;
                            }
                        case 96:
                            a2.c();
                            a2.e();
                            Channel a13 = Channel.a(a2.c(), this);
                            if (a13 == null) {
                                break;
                            } else {
                                a13.f();
                                i = 0;
                                buffer2 = a2;
                            }
                        case 97:
                            a2.c();
                            a2.e();
                            Channel a14 = Channel.a(a2.c(), this);
                            if (a14 == null) {
                                break;
                            } else {
                                a14.j();
                                i = 0;
                                buffer2 = a2;
                            }
                        case 98:
                            a2.c();
                            a2.e();
                            int c3 = a2.c();
                            byte[] i2 = a2.i();
                            boolean z = a2.f() != 0;
                            Channel a15 = Channel.a(c3, this);
                            if (a15 == null) {
                                break;
                            } else {
                                byte b3 = 100;
                                if (Util.b(i2).equals("exit-status")) {
                                    a15.h(a2.c());
                                    b3 = 99;
                                }
                                if (!z) {
                                    break;
                                } else {
                                    packet.a();
                                    a2.a(b3);
                                    a2.a(a15.a());
                                    b(packet);
                                    i = 0;
                                    buffer2 = a2;
                                }
                            }
                        case 99:
                            a2.c();
                            a2.e();
                            a3 = Channel.a(a2.c(), this);
                            if (a3 != null) {
                            }
                            break;
                        case 100:
                            a2.c();
                            a2.e();
                            Channel a16 = Channel.a(a2.c(), this);
                            if (a16 == null) {
                                i = 0;
                                buffer2 = a2;
                            } else {
                                a16.q = 0;
                                i = 0;
                                buffer2 = a2;
                            }
                        default:
                            throw new IOException("Unknown SSH message type " + m);
                    }
                } else {
                    this.Z = System.currentTimeMillis();
                    boolean a17 = keyExchange.a(a2);
                    if (!a17) {
                        throw new JSchException("verify: " + a17);
                    }
                }
                i = 0;
                buffer2 = a2;
            } catch (Exception e4) {
                this.aa = false;
                if (JSch.b().a(1)) {
                    JSch.b().a(1, "Caught an exception, leaving main loop due to " + e4.getMessage());
                }
            }
        }
        try {
            b();
        } catch (NullPointerException e5) {
        } catch (Exception e6) {
        }
        this.P = false;
    }
}
