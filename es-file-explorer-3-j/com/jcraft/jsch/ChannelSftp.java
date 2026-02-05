package com.jcraft.jsch;

import com.estrongs.android.util.g;
import com.jcraft.jsch.Channel;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedOutputStream;
import java.nio.charset.Charset;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes.dex */
public class ChannelSftp extends ChannelSession {
    private static final String N = File.separator;
    private static final char O = File.separatorChar;
    private static boolean P;
    private String Q;
    private String R;
    private String S;
    private boolean V;
    private boolean t = false;
    private int E = 1;
    private int[] F = new int[1];
    private Buffer G;
    private Packet H = new Packet(this.G);
    private int I = 3;
    private int J = 3;
    private String K = String.valueOf(this.I);
    private Hashtable L = null;
    private InputStream M = null;
    private String T = "UTF-8";
    private boolean U = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Header {

        /* renamed from: a, reason: collision with root package name */
        int f3302a;

        /* renamed from: b, reason: collision with root package name */
        int f3303b;
        int c;

        Header() {
        }
    }

    /* loaded from: classes.dex */
    public class LsEntry implements Comparable {

        /* renamed from: b, reason: collision with root package name */
        private String f3305b;
        private String c;
        private SftpATTRS d;

        LsEntry(String str, String str2, SftpATTRS sftpATTRS) {
            a(str);
            b(str2);
            a(sftpATTRS);
        }

        public String a() {
            return this.f3305b;
        }

        void a(SftpATTRS sftpATTRS) {
            this.d = sftpATTRS;
        }

        void a(String str) {
            this.f3305b = str;
        }

        public SftpATTRS b() {
            return this.d;
        }

        void b(String str) {
            this.c = str;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            if (obj instanceof LsEntry) {
                return this.f3305b.compareTo(((LsEntry) obj).a());
            }
            throw new ClassCastException("a decendent of LsEntry must be given.");
        }

        public String toString() {
            return this.c;
        }
    }

    static {
        P = ((byte) File.separatorChar) == 92;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(byte[] bArr, long j, byte[] bArr2, int i, int i2) {
        this.H.a();
        if (this.G.f3290b.length < this.G.c + 13 + 21 + bArr.length + i2 + 32 + 20) {
            i2 = this.G.f3290b.length - (((((this.G.c + 13) + 21) + bArr.length) + 32) + 20);
        }
        a((byte) 6, bArr.length + 21 + i2);
        Buffer buffer = this.G;
        int i3 = this.E;
        this.E = i3 + 1;
        buffer.a(i3);
        this.G.b(bArr);
        this.G.a(j);
        if (this.G.f3290b != bArr2) {
            this.G.b(bArr2, i, i2);
        } else {
            this.G.a(i2);
            this.G.b(i2);
        }
        l().a(this.H, this, bArr.length + 21 + i2 + 4);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Header a(Buffer buffer, Header header) {
        buffer.l();
        c(buffer.f3290b, 0, 9);
        header.f3302a = buffer.c() - 5;
        header.f3303b = buffer.f() & 255;
        header.c = buffer.c();
        return header;
    }

    private SftpATTRS a(byte[] bArr) {
        try {
            c(bArr);
            Header a2 = a(this.G, new Header());
            int i = a2.f3302a;
            int i2 = a2.f3303b;
            b(this.G, i);
            if (i2 == 105) {
                return SftpATTRS.a(this.G);
            }
            if (i2 == 101) {
                a(this.G, this.G.c());
            }
            throw new SftpException(4, "");
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (e instanceof Throwable) {
                throw new SftpException(4, "", e);
            }
            throw new SftpException(4, "");
        }
    }

    private void a(byte b2, int i) {
        this.G.a((byte) 94);
        this.G.a(this.c);
        this.G.a(i + 4);
        this.G.a(i);
        this.G.a(b2);
    }

    private void a(byte b2, byte[] bArr) {
        this.H.a();
        a(b2, bArr.length + 9);
        Buffer buffer = this.G;
        int i = this.E;
        this.E = i + 1;
        buffer.a(i);
        this.G.b(bArr);
        l().a(this.H, this, bArr.length + 9 + 4);
    }

    private void a(byte b2, byte[] bArr, byte[] bArr2) {
        this.H.a();
        a(b2, bArr.length + 13 + bArr2.length);
        Buffer buffer = this.G;
        int i = this.E;
        this.E = i + 1;
        buffer.a(i);
        this.G.b(bArr);
        this.G.b(bArr2);
        l().a(this.H, this, bArr.length + 13 + bArr2.length + 4);
    }

    private void a(int i, int i2, byte[] bArr, boolean z) {
        byte[] bArr2;
        boolean a2;
        this.M.mark(102400);
        byte[] bArr3 = new byte[0];
        int i3 = i2;
        while (true) {
            if (i <= 0) {
                bArr2 = bArr3;
                break;
            }
            if (i3 > 0) {
                this.G.k();
                int c = c(this.G.f3290b, this.G.c, this.G.f3290b.length > this.G.c + i3 ? i3 : this.G.f3290b.length - this.G.c);
                this.G.c += c;
                i3 -= c;
            }
            byte[] i4 = this.G.i();
            if (this.J <= 3) {
                this.G.i();
            }
            SftpATTRS.a(this.G);
            if (bArr == null) {
                a2 = true;
            } else if (z) {
                a2 = Util.a(bArr, !this.U ? Util.b(Util.a(i4, this.T), "UTF-8") : i4);
            } else {
                a2 = Util.b(bArr, i4);
            }
            if (a2) {
                bArr2 = g.a(bArr3, i4);
                if (bArr2.length >= 1024) {
                    break;
                }
            } else {
                bArr2 = bArr3;
            }
            i--;
            bArr3 = bArr2;
        }
        if (bArr2.length > 0) {
            String a3 = g.a(bArr2, bArr2.length);
            if (!"UTF-8".equals(a3) && Charset.isSupported(a3)) {
                j(a3);
            }
        }
        this.M.reset();
        this.G.j();
    }

    private void a(Buffer buffer, int i) {
        if (this.J >= 3 && buffer.a() >= 4) {
            throw new SftpException(i, Util.a(buffer.i(), "UTF-8"));
        }
        throw new SftpException(i, "Failure");
    }

    private void a(String str, SftpATTRS sftpATTRS) {
        try {
            a(Util.b(str, this.T), sftpATTRS);
            Header a2 = a(this.G, new Header());
            int i = a2.f3302a;
            int i2 = a2.f3303b;
            b(this.G, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int c = this.G.c();
            if (c != 0) {
                a(this.G, c);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new SftpException(4, "");
            }
            throw new SftpException(4, "", e);
        }
    }

    private void a(byte[] bArr, int i) {
        this.H.a();
        a((byte) 3, bArr.length + 17);
        Buffer buffer = this.G;
        int i2 = this.E;
        this.E = i2 + 1;
        buffer.a(i2);
        this.G.b(bArr);
        this.G.a(i);
        this.G.a(0);
        l().a(this.H, this, bArr.length + 17 + 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(byte[] bArr, long j, int i) {
        this.H.a();
        a((byte) 5, bArr.length + 21);
        Buffer buffer = this.G;
        int i2 = this.E;
        this.E = i2 + 1;
        buffer.a(i2);
        this.G.b(bArr);
        this.G.a(j);
        this.G.a(i);
        l().a(this.H, this, bArr.length + 21 + 4);
    }

    private void a(byte[] bArr, SftpATTRS sftpATTRS) {
        this.H.a();
        a((byte) 9, bArr.length + 9 + sftpATTRS.c());
        Buffer buffer = this.G;
        int i = this.E;
        this.E = i + 1;
        buffer.a(i);
        this.G.b(bArr);
        sftpATTRS.b(this.G);
        l().a(this.H, this, bArr.length + 9 + sftpATTRS.c() + 4);
    }

    private void a(byte[] bArr, byte[] bArr2) {
        a((byte) 18, bArr, bArr2);
    }

    private boolean a(String str, byte[][] bArr) {
        byte[] b2 = Util.b(str, "UTF-8");
        if (bArr != null) {
            bArr[0] = b2;
        }
        return m(b2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(byte[] bArr, Header header) {
        i(bArr);
        return a((int[]) null, header);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int[] iArr, Header header) {
        Header a2 = a(this.G, header);
        int i = a2.f3302a;
        int i2 = a2.f3303b;
        if (iArr != null) {
            iArr[0] = a2.c;
        }
        b(this.G, i);
        if (i2 != 101) {
            throw new SftpException(4, "");
        }
        int c = this.G.c();
        if (c == 0) {
            return true;
        }
        a(this.G, c);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Buffer buffer, int i) {
        buffer.j();
        c(buffer.f3290b, 0, i);
        buffer.b(i);
    }

    private void b(byte[] bArr) {
        a((byte) 16, bArr);
    }

    private void b(byte[] bArr, SftpATTRS sftpATTRS) {
        this.H.a();
        a((byte) 14, (sftpATTRS != null ? sftpATTRS.c() : 4) + bArr.length + 9);
        Buffer buffer = this.G;
        int i = this.E;
        this.E = i + 1;
        buffer.a(i);
        this.G.b(bArr);
        if (sftpATTRS != null) {
            sftpATTRS.b(this.G);
        } else {
            this.G.a(0);
        }
        l().a(this.H, this, (sftpATTRS != null ? sftpATTRS.c() : 4) + bArr.length + 9 + 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(byte[] bArr, int i, int i2) {
        int i3 = i;
        while (i2 > 0) {
            int read = this.M.read(bArr, i3, i2);
            if (read <= 0) {
                throw new IOException("inputstream is closed");
            }
            i3 += read;
            i2 -= read;
        }
        return i3 - i;
    }

    private void c(byte[] bArr) {
        a((byte) 17, bArr);
    }

    private void d(byte[] bArr) {
        a((byte) 13, bArr);
    }

    private void e(byte[] bArr) {
        a((byte) 15, bArr);
    }

    private void f(byte[] bArr) {
        a((byte) 19, bArr);
    }

    private void g(byte[] bArr) {
        a((byte) 11, bArr);
    }

    private void h(byte[] bArr) {
        a((byte) 12, bArr);
    }

    private void i(byte[] bArr) {
        a((byte) 4, bArr);
    }

    private void j(byte[] bArr) {
        a(bArr, 1);
    }

    private void k(byte[] bArr) {
        a(bArr, 26);
    }

    private boolean k(String str) {
        try {
            c(Util.b(str, this.T));
            Header a2 = a(this.G, new Header());
            int i = a2.f3302a;
            int i2 = a2.f3303b;
            b(this.G, i);
            if (i2 != 105) {
                return false;
            }
            return SftpATTRS.a(this.G).d();
        } catch (Exception e) {
            return false;
        }
    }

    private SftpATTRS l(String str) {
        return a(Util.b(str, this.T));
    }

    private void l(byte[] bArr) {
        a(bArr, 10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0009, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m(byte[] bArr) {
        int length = bArr.length - 1;
        while (length >= 0 && ((bArr[length] != 42 && bArr[length] != 63) || (length > 0 && bArr[length - 1] == 92 && (length - 1 <= 0 || bArr[length - 1] != 92)))) {
            length--;
        }
        return true;
    }

    private byte[] m(String str) {
        b(Util.b(str, this.T));
        Header a2 = a(this.G, new Header());
        int i = a2.f3302a;
        int i2 = a2.f3303b;
        b(this.G, i);
        if (i2 != 101 && i2 != 104) {
            throw new SftpException(4, "");
        }
        if (i2 == 101) {
            a(this.G, this.G.c());
        }
        int c = this.G.c();
        byte[] bArr = (byte[]) null;
        while (true) {
            int i3 = c - 1;
            if (c <= 0) {
                return bArr;
            }
            bArr = this.G.i();
            if (this.J <= 3) {
                this.G.i();
            }
            SftpATTRS.a(this.G);
            c = i3;
        }
    }

    private void n(String str) {
        this.Q = str;
    }

    private Vector o(String str) {
        byte[] bArr;
        Vector vector = new Vector();
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf < 0) {
            vector.addElement(Util.a(str));
            return vector;
        }
        String substring = str.substring(0, lastIndexOf == 0 ? 1 : lastIndexOf);
        String substring2 = str.substring(lastIndexOf + 1);
        String a2 = Util.a(substring);
        byte[][] bArr2 = new byte[1];
        if (!a(substring2, bArr2)) {
            vector.addElement(String.valueOf(!a2.equals("/") ? String.valueOf(a2) + "/" : a2) + Util.a(substring2));
            return vector;
        }
        byte[] bArr3 = bArr2[0];
        g(Util.b(a2, this.T));
        Header a3 = a(this.G, new Header());
        int i = a3.f3302a;
        int i2 = a3.f3303b;
        b(this.G, i);
        if (i2 != 101 && i2 != 102) {
            throw new SftpException(4, "");
        }
        if (i2 == 101) {
            a(this.G, this.G.c());
        }
        byte[] i3 = this.G.i();
        String str2 = null;
        while (true) {
            h(i3);
            Header a4 = a(this.G, a3);
            int i4 = a4.f3302a;
            int i5 = a4.f3303b;
            if (i5 != 101 && i5 != 104) {
                throw new SftpException(4, "");
            }
            if (i5 == 101) {
                b(this.G, i4);
                if (a(i3, a4)) {
                    return vector;
                }
                return null;
            }
            this.G.l();
            c(this.G.f3290b, 0, 4);
            int i6 = i4 - 4;
            int c = this.G.c();
            this.G.j();
            int i7 = c;
            while (true) {
                if (i7 <= 0) {
                    a3 = a4;
                    break;
                }
                if (i6 > 0) {
                    this.G.k();
                    int read = this.M.read(this.G.f3290b, this.G.c, this.G.f3290b.length > this.G.c + i6 ? i6 : this.G.f3290b.length - this.G.c);
                    if (read <= 0) {
                        a3 = a4;
                        break;
                    }
                    this.G.c += read;
                    i6 -= read;
                }
                byte[] i8 = this.G.i();
                if (this.J <= 3) {
                    this.G.i();
                }
                SftpATTRS.a(this.G);
                String str3 = null;
                if (this.U) {
                    bArr = i8;
                } else {
                    str3 = Util.a(i8, this.T);
                    bArr = Util.b(str3, "UTF-8");
                }
                if (Util.a(bArr3, bArr)) {
                    if (str3 == null) {
                        str3 = Util.a(i8, this.T);
                    }
                    if (str2 == null) {
                        str2 = !a2.endsWith("/") ? String.valueOf(a2) + "/" : a2;
                    }
                    vector.addElement(String.valueOf(str2) + str3);
                }
                i7--;
            }
        }
    }

    private boolean p(String str) {
        return a(str, (byte[][]) null);
    }

    private String q(String str) {
        if (str.charAt(0) == '/') {
            return str;
        }
        String r = r();
        return r.endsWith("/") ? String.valueOf(r) + str : String.valueOf(r) + "/" + str;
    }

    private String r() {
        if (this.Q == null) {
            this.Q = o();
        }
        return this.Q;
    }

    private String r(String str) {
        Vector o = o(str);
        if (o.size() != 1) {
            throw new SftpException(4, String.valueOf(str) + " is not unique: " + o.toString());
        }
        return (String) o.elementAt(0);
    }

    private void s() {
        this.H.a();
        a((byte) 1, 5);
        this.G.a(3);
        l().a(this.H, this, 9);
    }

    public InputStream a(String str, SftpProgressMonitor sftpProgressMonitor, long j) {
        try {
            String r = r(q(str));
            byte[] b2 = Util.b(r, this.T);
            SftpATTRS a2 = a(b2);
            if (sftpProgressMonitor != null) {
                sftpProgressMonitor.a(1, r, "??", a2.g());
            }
            j(b2);
            Header a3 = a(this.G, new Header());
            int i = a3.f3302a;
            int i2 = a3.f3303b;
            b(this.G, i);
            if (i2 != 101 && i2 != 102) {
                throw new SftpException(4, "");
            }
            if (i2 == 101) {
                a(this.G, this.G.c());
            }
            return new InputStream(j, sftpProgressMonitor, this.G.i()) { // from class: com.jcraft.jsch.ChannelSftp.2

                /* renamed from: a, reason: collision with root package name */
                long f3300a;

                /* renamed from: b, reason: collision with root package name */
                boolean f3301b = false;
                int c = 0;
                byte[] d = new byte[1];
                byte[] e = new byte[1024];
                Header f;
                private final /* synthetic */ SftpProgressMonitor h;
                private final /* synthetic */ byte[] i;

                {
                    this.h = sftpProgressMonitor;
                    this.i = r6;
                    this.f3300a = j;
                    this.f = new Header();
                }

                @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    if (this.f3301b) {
                        return;
                    }
                    this.f3301b = true;
                    if (this.h != null) {
                        this.h.a();
                    }
                    try {
                        ChannelSftp.this.a(this.i, this.f);
                    } catch (Exception e) {
                        throw new IOException("error");
                    }
                }

                @Override // java.io.InputStream
                public int read() {
                    if (this.f3301b || read(this.d, 0, 1) == -1) {
                        return -1;
                    }
                    return this.d[0] & 255;
                }

                @Override // java.io.InputStream
                public int read(byte[] bArr) {
                    if (this.f3301b) {
                        return -1;
                    }
                    return read(bArr, 0, bArr.length);
                }

                @Override // java.io.InputStream
                public int read(byte[] bArr, int i3, int i4) {
                    int i5 = 0;
                    if (this.f3301b) {
                        return -1;
                    }
                    if (bArr == null) {
                        throw new NullPointerException();
                    }
                    if (i3 < 0 || i4 < 0 || i3 + i4 > bArr.length) {
                        throw new IndexOutOfBoundsException();
                    }
                    if (i4 == 0) {
                        return 0;
                    }
                    if (this.c > 0) {
                        int i6 = this.c;
                        if (i6 <= i4) {
                            i4 = i6;
                        }
                        System.arraycopy(this.e, 0, bArr, i3, i4);
                        if (i4 != this.c) {
                            System.arraycopy(this.e, i4, this.e, 0, this.c - i4);
                        }
                        if (this.h == null || this.h.a(i4)) {
                            this.c -= i4;
                            return i4;
                        }
                        close();
                        return -1;
                    }
                    if (ChannelSftp.this.G.f3290b.length - 13 < i4) {
                        i4 = ChannelSftp.this.G.f3290b.length - 13;
                    }
                    int i7 = (ChannelSftp.this.J != 0 || i4 <= 1024) ? i4 : 1024;
                    try {
                        ChannelSftp.this.a(this.i, this.f3300a, i7);
                        this.f = ChannelSftp.this.a(ChannelSftp.this.G, this.f);
                        this.c = this.f.f3302a;
                        int i8 = this.f.f3303b;
                        int i9 = this.f.c;
                        if (i8 != 101 && i8 != 103) {
                            throw new IOException("error");
                        }
                        if (i8 == 101) {
                            ChannelSftp.this.b(ChannelSftp.this.G, this.c);
                            int c = ChannelSftp.this.G.c();
                            this.c = 0;
                            if (c != 1) {
                                throw new IOException("error");
                            }
                            close();
                            return -1;
                        }
                        ChannelSftp.this.G.l();
                        ChannelSftp.this.c(ChannelSftp.this.G.f3290b, 0, 4);
                        int c2 = ChannelSftp.this.G.c();
                        this.c -= 4;
                        this.f3300a += this.c;
                        if (c2 <= 0) {
                            return 0;
                        }
                        int i10 = this.c;
                        if (i10 <= i7) {
                            i7 = i10;
                        }
                        int read = ChannelSftp.this.M.read(bArr, i3, i7);
                        if (read < 0) {
                            return -1;
                        }
                        this.c -= read;
                        if (this.c > 0) {
                            if (this.e.length < this.c) {
                                this.e = new byte[this.c];
                            }
                            int i11 = this.c;
                            while (i11 > 0) {
                                int read2 = ChannelSftp.this.M.read(this.e, i5, i11);
                                if (read2 <= 0) {
                                    break;
                                }
                                i5 += read2;
                                i11 -= read2;
                            }
                        }
                        if (this.h == null || this.h.a(read)) {
                            return read;
                        }
                        close();
                        return -1;
                    } catch (Exception e) {
                        throw new IOException("error");
                    }
                }
            };
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (e instanceof Throwable) {
                throw new SftpException(4, "", e);
            }
            throw new SftpException(4, "");
        }
    }

    public OutputStream a(String str, SftpProgressMonitor sftpProgressMonitor, int i) {
        return a(str, sftpProgressMonitor, i, 0L);
    }

    public OutputStream a(String str, final SftpProgressMonitor sftpProgressMonitor, int i, long j) {
        try {
            String r = r(q(str));
            if (k(r)) {
                throw new SftpException(4, String.valueOf(r) + " is a directory");
            }
            byte[] b2 = Util.b(r, this.T);
            long j2 = 0;
            if (i == 1 || i == 2) {
                try {
                    j2 = a(b2).g();
                } catch (Exception e) {
                }
            }
            if (i == 0) {
                k(b2);
            } else {
                l(b2);
            }
            Header a2 = a(this.G, new Header());
            int i2 = a2.f3302a;
            int i3 = a2.f3303b;
            b(this.G, i2);
            if (i3 != 101 && i3 != 102) {
                throw new SftpException(4, "");
            }
            if (i3 == 101) {
                a(this.G, this.G.c());
            }
            final byte[] i4 = this.G.i();
            if (i == 1 || i == 2) {
                j += j2;
            }
            final long[] jArr = {j};
            return new OutputStream() { // from class: com.jcraft.jsch.ChannelSftp.1
                private Header j;
                private boolean c = true;
                private boolean d = false;
                private int[] e = new int[1];
                private int f = 0;
                private int g = 0;
                private int h = 0;
                private int i = 0;

                /* renamed from: a, reason: collision with root package name */
                byte[] f3298a = new byte[1];

                {
                    this.j = new Header();
                }

                @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    if (this.d) {
                        return;
                    }
                    flush();
                    if (sftpProgressMonitor != null) {
                        sftpProgressMonitor.a();
                    }
                    try {
                        ChannelSftp.this.a(i4, this.j);
                        this.d = true;
                    } catch (IOException e2) {
                        throw e2;
                    } catch (Exception e3) {
                        throw new IOException(e3.toString());
                    }
                }

                @Override // java.io.OutputStream, java.io.Flushable
                public void flush() {
                    if (this.d) {
                        throw new IOException("stream already closed");
                    }
                    if (this.c) {
                        return;
                    }
                    while (this.i > this.h && ChannelSftp.this.a((int[]) null, this.j)) {
                        try {
                            this.h++;
                        } catch (SftpException e2) {
                            throw new IOException(e2.toString());
                        }
                    }
                }

                @Override // java.io.OutputStream
                public void write(int i5) {
                    this.f3298a[0] = (byte) i5;
                    write(this.f3298a, 0, 1);
                }

                @Override // java.io.OutputStream
                public void write(byte[] bArr) {
                    write(bArr, 0, bArr.length);
                }

                @Override // java.io.OutputStream
                public void write(byte[] bArr, int i5, int i6) {
                    if (this.c) {
                        this.f = ChannelSftp.this.E;
                        this.g = ChannelSftp.this.E;
                        this.c = false;
                    }
                    if (this.d) {
                        throw new IOException("stream already closed");
                    }
                    int i7 = i6;
                    int i8 = i5;
                    while (i7 > 0) {
                        try {
                            int a3 = ChannelSftp.this.a(i4, jArr[0], bArr, i8, i7);
                            this.i++;
                            long[] jArr2 = jArr;
                            jArr2[0] = jArr2[0] + a3;
                            i8 += a3;
                            i7 -= a3;
                            if (ChannelSftp.this.E - 1 == this.f || ChannelSftp.this.M.available() >= 1024) {
                                while (ChannelSftp.this.M.available() > 0 && ChannelSftp.this.a(this.e, this.j)) {
                                    this.g = this.e[0];
                                    if (this.f > this.g || this.g > ChannelSftp.this.E - 1) {
                                        throw new SftpException(4, "");
                                    }
                                    this.h++;
                                }
                            }
                        } catch (IOException e2) {
                            throw e2;
                        } catch (Exception e3) {
                            throw new IOException(e3.toString());
                        }
                    }
                    if (sftpProgressMonitor == null || sftpProgressMonitor.a(i6)) {
                        return;
                    }
                    close();
                    throw new IOException("canceled");
                }
            };
        } catch (Exception e2) {
            if (e2 instanceof SftpException) {
                throw ((SftpException) e2);
            }
            if (e2 instanceof Throwable) {
                throw new SftpException(4, "", e2);
            }
            throw new SftpException(4, "");
        }
    }

    public void a(String str, int i) {
        try {
            Vector o = o(q(str));
            int size = o.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str2 = (String) o.elementAt(i2);
                SftpATTRS l = l(str2);
                l.a(0);
                l.a(l.k(), i);
                a(str2, l);
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new SftpException(4, "");
            }
            throw new SftpException(4, "", e);
        }
    }

    public void a(String str, String str2) {
        String a2;
        if (this.J < 2) {
            throw new SftpException(8, "The remote sshd is too old to support rename operation.");
        }
        try {
            String q = q(str);
            String q2 = q(str2);
            String r = r(q);
            Vector o = o(q2);
            int size = o.size();
            if (size >= 2) {
                throw new SftpException(4, o.toString());
            }
            if (size == 1) {
                a2 = (String) o.elementAt(0);
            } else {
                if (p(q2)) {
                    throw new SftpException(4, q2);
                }
                a2 = Util.a(q2);
            }
            a(Util.b(r, this.T), Util.b(a2, this.T));
            Header a3 = a(this.G, new Header());
            int i = a3.f3302a;
            int i2 = a3.f3303b;
            b(this.G, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int c = this.G.c();
            if (c == 0) {
                return;
            }
            a(this.G, c);
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new SftpException(4, "");
            }
            throw new SftpException(4, "", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.jcraft.jsch.Channel
    public void b() {
    }

    public void b(String str) {
        try {
            String r = r(q(str));
            byte[] m = m(r);
            SftpATTRS a2 = a(m);
            if ((a2.f() & 4) == 0) {
                throw new SftpException(4, "Can't change directory: " + r);
            }
            if (!a2.d()) {
                throw new SftpException(4, "Can't change directory: " + r);
            }
            n(Util.a(m, this.T));
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new SftpException(4, "");
            }
            throw new SftpException(4, "", e);
        }
    }

    public OutputStream c(String str) {
        return a(str, (SftpProgressMonitor) null, 0);
    }

    public Vector d(String str) {
        byte[] a2;
        int i;
        int i2;
        int i3;
        byte[] bArr;
        boolean a3;
        try {
            String q = q(str);
            Vector vector = new Vector();
            int lastIndexOf = q.lastIndexOf(47);
            String substring = q.substring(0, lastIndexOf == 0 ? 1 : lastIndexOf);
            String substring2 = q.substring(lastIndexOf + 1);
            String a4 = Util.a(substring);
            byte[][] bArr2 = new byte[1];
            boolean a5 = a(substring2, bArr2);
            if (a5) {
                a2 = bArr2[0];
            } else {
                String a6 = Util.a(q);
                if (l(a6).d()) {
                    a2 = (byte[]) null;
                    a4 = a6;
                } else {
                    a2 = this.U ? Util.a(bArr2[0]) : Util.b(Util.a(substring2), this.T);
                }
            }
            g(Util.b(a4, this.T));
            Header a7 = a(this.G, new Header());
            int i4 = a7.f3302a;
            int i5 = a7.f3303b;
            b(this.G, i4);
            if (i5 != 101 && i5 != 102) {
                throw new SftpException(4, "");
            }
            if (i5 == 101) {
                a(this.G, this.G.c());
            }
            byte[] i6 = this.G.i();
            while (true) {
                h(i6);
                Header a8 = a(this.G, a7);
                int i7 = a8.f3302a;
                int i8 = a8.f3303b;
                if (i8 != 101 && i8 != 104) {
                    throw new SftpException(4, "");
                }
                if (i8 == 101) {
                    b(this.G, i7);
                    int c = this.G.c();
                    if (c == 1) {
                        a(i6, a8);
                        return vector;
                    }
                    a(this.G, c);
                }
                this.G.l();
                c(this.G.f3290b, 0, 4);
                int i9 = i7 - 4;
                int c2 = this.G.c();
                this.G.j();
                if (this.V) {
                    a(c2, i9, a2, a5);
                    i = c2;
                    i2 = i9;
                } else {
                    i = c2;
                    i2 = i9;
                }
                while (i > 0) {
                    if (i2 > 0) {
                        this.G.k();
                        int c3 = c(this.G.f3290b, this.G.c, this.G.f3290b.length > this.G.c + i2 ? i2 : this.G.f3290b.length - this.G.c);
                        this.G.c += c3;
                        i3 = i2 - c3;
                    } else {
                        i3 = i2;
                    }
                    byte[] i10 = this.G.i();
                    byte[] i11 = this.J <= 3 ? this.G.i() : (byte[]) null;
                    SftpATTRS a9 = SftpATTRS.a(this.G);
                    String str2 = null;
                    if (a2 == null) {
                        a3 = true;
                    } else if (a5) {
                        if (this.U) {
                            bArr = i10;
                        } else {
                            String a10 = Util.a(i10, this.T);
                            str2 = a10;
                            bArr = Util.b(a10, "UTF-8");
                        }
                        a3 = Util.a(a2, bArr);
                    } else {
                        a3 = Util.b(a2, i10);
                    }
                    if (a3) {
                        String a11 = str2 == null ? Util.a(i10, this.T) : str2;
                        vector.addElement(new LsEntry(a11, i11 == null ? String.valueOf(a9.toString()) + " " + a11 : Util.a(i11, this.T), a9));
                    }
                    i--;
                    i2 = i3;
                }
                a7 = a8;
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (e instanceof Throwable) {
                throw new SftpException(4, "", e);
            }
            throw new SftpException(4, "");
        }
    }

    @Override // com.jcraft.jsch.Channel
    public void d() {
        try {
            PipedOutputStream pipedOutputStream = new PipedOutputStream();
            this.j.a(pipedOutputStream);
            this.j.a(new Channel.MyPipedInputStream(pipedOutputStream, 32768));
            this.M = new BufferedInputStream(this.j.f3312a);
            if (this.M == null) {
                throw new JSchException("channel is down");
            }
            new RequestSftp().a(l(), this);
            this.G = new Buffer(this.i);
            this.H = new Packet(this.G);
            s();
            Header a2 = a(this.G, new Header());
            int i = a2.f3302a;
            if (i > 262144) {
                throw new SftpException(4, "Received message is too long: " + i);
            }
            int i2 = a2.f3303b;
            this.J = a2.c;
            if (i > 0) {
                this.L = new Hashtable();
                b(this.G, i);
                int i3 = i;
                while (i3 > 0) {
                    byte[] i4 = this.G.i();
                    int length = i3 - (i4.length + 4);
                    byte[] i5 = this.G.i();
                    i3 = length - (i5.length + 4);
                    this.L.put(Util.b(i4), Util.b(i5));
                }
            }
            this.S = new File(".").getCanonicalPath();
        } catch (Exception e) {
            if (e instanceof JSchException) {
                throw ((JSchException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new JSchException(e.toString());
            }
            throw new JSchException(e.toString(), e);
        }
    }

    public String e(String str) {
        try {
            if (this.J < 3) {
                throw new SftpException(8, "The remote sshd is too old to support symlink operation.");
            }
            f(Util.b(r(q(str)), this.T));
            Header a2 = a(this.G, new Header());
            int i = a2.f3302a;
            int i2 = a2.f3303b;
            b(this.G, i);
            if (i2 != 101 && i2 != 104) {
                throw new SftpException(4, "");
            }
            if (i2 != 104) {
                a(this.G, this.G.c());
                return null;
            }
            int c = this.G.c();
            byte[] bArr = (byte[]) null;
            for (int i3 = 0; i3 < c; i3++) {
                bArr = this.G.i();
                if (this.J <= 3) {
                    this.G.i();
                }
                SftpATTRS.a(this.G);
            }
            return Util.a(bArr, this.T);
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (e instanceof Throwable) {
                throw new SftpException(4, "", e);
            }
            throw new SftpException(4, "");
        }
    }

    public void f(String str) {
        try {
            Vector o = o(q(str));
            int size = o.size();
            Header header = new Header();
            for (int i = 0; i < size; i++) {
                d(Util.b((String) o.elementAt(i), this.T));
                header = a(this.G, header);
                int i2 = header.f3302a;
                int i3 = header.f3303b;
                b(this.G, i2);
                if (i3 != 101) {
                    throw new SftpException(4, "");
                }
                int c = this.G.c();
                if (c != 0) {
                    a(this.G, c);
                }
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new SftpException(4, "");
            }
            throw new SftpException(4, "", e);
        }
    }

    public void g(String str) {
        try {
            Vector o = o(q(str));
            int size = o.size();
            Header header = new Header();
            for (int i = 0; i < size; i++) {
                e(Util.b((String) o.elementAt(i), this.T));
                header = a(this.G, header);
                int i2 = header.f3302a;
                int i3 = header.f3303b;
                b(this.G, i2);
                if (i3 != 101) {
                    throw new SftpException(4, "");
                }
                int c = this.G.c();
                if (c != 0) {
                    a(this.G, c);
                }
            }
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new SftpException(4, "");
            }
            throw new SftpException(4, "", e);
        }
    }

    public void h(String str) {
        try {
            b(Util.b(q(str), this.T), (SftpATTRS) null);
            Header a2 = a(this.G, new Header());
            int i = a2.f3302a;
            int i2 = a2.f3303b;
            b(this.G, i);
            if (i2 != 101) {
                throw new SftpException(4, "");
            }
            int c = this.G.c();
            if (c == 0) {
                return;
            }
            a(this.G, c);
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new SftpException(4, "");
            }
            throw new SftpException(4, "", e);
        }
    }

    public SftpATTRS i(String str) {
        try {
            return l(r(q(str)));
        } catch (Exception e) {
            if (e instanceof SftpException) {
                throw ((SftpException) e);
            }
            if (e instanceof Throwable) {
                throw new SftpException(4, "", e);
            }
            throw new SftpException(4, "");
        }
    }

    @Override // com.jcraft.jsch.Channel
    public void j() {
        super.j();
    }

    public void j(String str) {
        if ("AUTO".equalsIgnoreCase(str)) {
            this.V = true;
            return;
        }
        this.V = false;
        if (p() > 3 && !str.equals("UTF-8")) {
            throw new SftpException(4, "The encoding can not be changed for this sftp server.");
        }
        if (str.equals("UTF-8")) {
            str = "UTF-8";
        }
        this.T = str;
        this.U = this.T.equals("UTF-8");
    }

    public String o() {
        if (this.R == null) {
            try {
                this.R = Util.a(m(""), this.T);
            } catch (Exception e) {
                if (e instanceof SftpException) {
                    throw ((SftpException) e);
                }
                if (e instanceof Throwable) {
                    throw new SftpException(4, "", e);
                }
                throw new SftpException(4, "");
            }
        }
        return this.R;
    }

    public int p() {
        if (k()) {
            return this.J;
        }
        throw new SftpException(4, "The channel is not connected.");
    }

    public String q() {
        return this.T;
    }

    @Override // com.jcraft.jsch.ChannelSession, com.jcraft.jsch.Channel, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
