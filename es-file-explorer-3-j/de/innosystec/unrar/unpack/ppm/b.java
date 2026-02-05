package de.innosystec.unrar.unpack.ppm;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class b {
    private static int[] w = {15581, 7999, 22975, 18675, 25761, 23228, 26162, 24657};

    /* renamed from: b, reason: collision with root package name */
    private i f3420b;
    private j f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int q;
    private int r;
    private int s;

    /* renamed from: a, reason: collision with root package name */
    private i[][] f3419a = (i[][]) Array.newInstance((Class<?>) i.class, 25, 16);
    private int[] m = new int[256];
    private int[] n = new int[256];
    private int[] o = new int[256];
    private int[] p = new int[256];
    private int[][] t = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 128, 64);
    private e u = new e();
    private l v = new l();
    private final j x = new j(null);
    private final j y = new j(null);
    private final j z = new j(null);
    private final j A = new j(null);
    private final k B = new k();
    private final k C = new k();
    private final c D = new c(null);
    private final c E = new c(null);
    private final c F = new c(null);
    private final c G = new c(null);
    private final int[] H = new int[64];
    private c c = null;
    private c e = null;
    private c d = null;

    /* JADX WARN: Code restructure failed: missing block: B:15:0x008d, code lost:
    
        if (r8.a() != r11.f.a()) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008f, code lost:
    
        r8.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x009c, code lost:
    
        if (r8.a() != r11.f.a()) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x010f, code lost:
    
        if (r8.a() != r4.a()) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0111, code lost:
    
        r8.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x011c, code lost:
    
        if (r8.a() != r4.a()) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011e, code lost:
    
        r3 = r8.b() - 1;
        r7 = (r6.a().a() - r6.b()) - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0134, code lost:
    
        if ((r3 * 2) > r7) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0138, code lost:
    
        if ((r3 * 5) <= r7) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x013a, code lost:
    
        r4.b(r0 + 1);
        r0 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015e, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0160, code lost:
    
        r0 = (((r3 * 2) + (r7 * 3)) - 1) / (r7 * 2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int a(boolean z, j jVar) {
        boolean z2;
        int i;
        int i2;
        boolean z3;
        int i3 = 1;
        k kVar = this.C;
        j a2 = this.x.a(r());
        c a3 = this.D.a(r());
        a3.c(this.c.e());
        c a4 = this.E.a(r());
        a4.c(this.f.c());
        j a5 = this.y.a(r());
        if (z) {
            z2 = false;
            i = 0;
        } else {
            this.H[0] = this.f.e();
            if (a3.d() == 0) {
                z2 = true;
                i = 1;
            } else {
                z2 = false;
                i = 1;
            }
        }
        if (!z2) {
            if (jVar.e() != 0) {
                a5.c(jVar.e());
                a3.c(a3.d());
                z3 = true;
            } else {
                z3 = false;
            }
            while (true) {
                if (!z3) {
                    a3.c(a3.d());
                    if (a3.b() != 1) {
                        a5.c(a3.a().b());
                    } else {
                        a5.c(a3.c().e());
                    }
                }
                if (a5.c() != a4.e()) {
                    a3.c(a5.c());
                    break;
                }
                int i4 = i + 1;
                this.H[i] = a5.e();
                if (a3.d() == 0) {
                    i = i4;
                    break;
                }
                i = i4;
                z3 = false;
            }
        }
        if (i == 0) {
            return a3.e();
        }
        kVar.a(r()[a4.e()]);
        kVar.d(a4.e() + 1);
        if (a3.b() == 1) {
            kVar.b(a3.c().b());
            i2 = i;
        } else {
            if (a3.e() <= this.v.h()) {
                return 0;
            }
            a5.c(a3.a().b());
        }
        do {
            i2--;
            a2.c(this.H[i2]);
            a3.c(a3.a(this, a2, kVar));
            if (a3.e() == 0) {
                return 0;
            }
        } while (i2 != 0);
        return a3.e();
    }

    private void i(int i) {
        int i2 = 1;
        this.q = 1;
        this.j = i;
        t();
        this.o[0] = 0;
        this.o[1] = 2;
        for (int i3 = 0; i3 < 9; i3++) {
            this.o[i3 + 2] = 4;
        }
        for (int i4 = 0; i4 < 245; i4++) {
            this.o[i4 + 11] = 6;
        }
        int i5 = 0;
        while (i5 < 3) {
            this.n[i5] = i5;
            i5++;
        }
        int i6 = 1;
        for (int i7 = i5; i7 < 256; i7++) {
            this.n[i7] = i5;
            i6--;
            if (i6 == 0) {
                i2++;
                i5++;
                i6 = i2;
            }
        }
        for (int i8 = 0; i8 < 64; i8++) {
            this.p[i8] = 0;
        }
        for (int i9 = 0; i9 < 192; i9++) {
            this.p[i9 + 64] = 8;
        }
        this.f3420b.b(7);
    }

    private void t() {
        Arrays.fill(this.m, 0);
        this.v.i();
        this.l = (-(this.j < 12 ? this.j : 12)) - 1;
        int e = this.v.e();
        this.c.c(e);
        this.e.c(e);
        this.c.b(0);
        this.i = this.j;
        this.c.a(256);
        this.c.a().a(this.c.b() + 1);
        int b2 = this.v.b(128);
        this.f.c(b2);
        this.c.a().a_(b2);
        j jVar = new j(this.v.j());
        int b3 = this.c.a().b();
        this.k = this.l;
        this.r = 0;
        for (int i = 0; i < 256; i++) {
            jVar.c((i * 6) + b3);
            jVar.a(i);
            jVar.b(1);
            jVar.e(0);
        }
        for (int i2 = 0; i2 < 128; i2++) {
            for (int i3 = 0; i3 < 8; i3++) {
                for (int i4 = 0; i4 < 64; i4 += 8) {
                    this.t[i2][i3 + i4] = 16384 - (w[i3] / (i2 + 2));
                }
            }
        }
        for (int i5 = 0; i5 < 25; i5++) {
            for (int i6 = 0; i6 < 16; i6++) {
                this.f3419a[i5][i6].a((i5 * 5) + 10);
            }
        }
    }

    private void u() {
        this.q = 1;
        Arrays.fill(this.m, 0);
    }

    private void v() {
        t();
        this.q = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0070, code lost:
    
        if (r6.a() != r5.a()) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0072, code lost:
    
        r0.c(r6.e() - 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0083, code lost:
    
        if (r6.b() < r0.b()) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0085, code lost:
    
        de.innosystec.unrar.unpack.ppm.j.a(r6, r0);
        r6.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0091, code lost:
    
        if (r6.b() >= 115) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0093, code lost:
    
        r6.d(2);
        r7.a().b(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0063, code lost:
    
        if (r6.a() != r5.a()) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0065, code lost:
    
        r6.f();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void w() {
        int i;
        k kVar = this.B;
        kVar.a(this.f);
        j a2 = this.z.a(r());
        j a3 = this.A.a(r());
        c a4 = this.F.a(r());
        c a5 = this.G.a(r());
        a4.c(this.c.d());
        if (kVar.b() < 31 && a4.e() != 0) {
            if (a4.b() != 1) {
                a2.c(a4.a().b());
            } else {
                a2.c(a4.c().e());
                if (a2.b() < 32) {
                    a2.d(1);
                }
            }
        }
        if (this.i == 0) {
            this.f.e(a(true, a2));
            this.c.c(this.f.c());
            this.e.c(this.f.c());
            if (this.c.e() == 0) {
                v();
                return;
            }
            return;
        }
        this.v.j()[this.v.h()] = (byte) kVar.a();
        this.v.b();
        a5.c(this.v.h());
        if (this.v.h() >= this.v.f()) {
            v();
            return;
        }
        if (kVar.c() != 0) {
            if (kVar.c() <= this.v.h()) {
                kVar.d(a(false, a2));
                if (kVar.c() == 0) {
                    v();
                    return;
                }
            }
            int i2 = this.i - 1;
            this.i = i2;
            if (i2 == 0) {
                a5.c(kVar.c());
                if (this.e.e() != this.c.e()) {
                    this.v.d(1);
                }
            }
        } else {
            this.f.e(a5.e());
            kVar.a(this.c);
        }
        int b2 = this.c.b();
        int a6 = (this.c.a().a() - b2) - (kVar.b() - 1);
        a4.c(this.e.e());
        while (a4.e() != this.c.e()) {
            int b3 = a4.b();
            if (b3 != 1) {
                if ((b3 & 1) == 0) {
                    a4.a().a_(this.v.a(a4.a().b(), b3 >>> 1));
                    if (a4.a().b() == 0) {
                        v();
                        return;
                    }
                }
                a4.a().b((((b3 * 4 <= b2 ? 1 : 0) & (a4.a().a() <= b3 * 8 ? 1 : 0)) * 2) + (b3 * 2 < b2 ? 1 : 0));
            } else {
                a2.c(this.v.b(1));
                if (a2.e() == 0) {
                    v();
                    return;
                }
                a2.a(a4.c());
                a4.a().a(a2);
                if (a2.b() < 30) {
                    a2.d(a2.b());
                } else {
                    a2.b(FTPReply.SERVICE_NOT_READY);
                }
                a4.a().a((b2 > 3 ? 1 : 0) + this.h + a2.b());
            }
            int a7 = (a4.a().a() + 6) * kVar.b() * 2;
            int a8 = a6 + a4.a().a();
            if (a7 < a8 * 6) {
                i = (a7 >= a8 * 4 ? 1 : 0) + (a7 > a8 ? 1 : 0) + 1;
                a4.a().b(3);
            } else {
                i = (a7 >= a8 * 15 ? 1 : 0) + (a7 >= a8 * 9 ? 1 : 0) + 4 + (a7 >= a8 * 12 ? 1 : 0);
                a4.a().b(i);
            }
            a2.c(a4.a().b() + (b3 * 6));
            a2.a(a5);
            a2.a(kVar.a());
            a2.b(i);
            a4.a(b3 + 1);
            a4.c(a4.d());
        }
        int c = kVar.c();
        this.e.c(c);
        this.c.c(c);
    }

    public l a() {
        return this.v;
    }

    public void a(int i) {
        this.q = i & 255;
    }

    public boolean a(de.innosystec.unrar.unpack.b bVar, int i) {
        int i2;
        int a2 = bVar.a() & 255;
        boolean z = (a2 & 32) != 0;
        if (z) {
            i2 = bVar.a();
        } else {
            if (this.v.d() == 0) {
                return false;
            }
            i2 = 0;
        }
        if ((a2 & 64) != 0) {
            bVar.a(bVar.a());
        }
        this.u.a(bVar);
        if (z) {
            int i3 = (a2 & 31) + 1;
            int i4 = i3 > 16 ? ((i3 - 16) * 3) + 16 : i3;
            if (i4 == 1) {
                this.v.c();
                return false;
            }
            this.v.a(i2 + 1);
            this.c = new c(r());
            this.d = new c(r());
            this.e = new c(r());
            this.f = new j(r());
            this.f3420b = new i();
            for (int i5 = 0; i5 < 25; i5++) {
                for (int i6 = 0; i6 < 16; i6++) {
                    this.f3419a[i5][i6] = new i();
                }
            }
            i(i4);
        }
        return this.c.e() != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0051, code lost:
    
        if (r3.c.d(r3) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a2, code lost:
    
        if (r3.c.c(r3) == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int b() {
        int i = -1;
        if (this.c.e() > this.v.h() && this.c.e() <= this.v.g()) {
            if (this.c.b() == 1) {
                this.c.b(this);
            } else if (this.c.a().b() > this.v.h()) {
                if (this.c.a().b() <= this.v.g()) {
                }
            }
            this.u.c();
            loop0: while (true) {
                if (this.f.e() == 0) {
                    this.u.d();
                    while (true) {
                        this.i++;
                        this.c.c(this.c.d());
                        if (this.c.e() <= this.v.h() || this.c.e() > this.v.g()) {
                            break loop0;
                        }
                        if (this.c.b() != this.g) {
                            break;
                        }
                    }
                } else {
                    i = this.f.a();
                    if (this.i != 0 || this.f.c() <= this.v.h()) {
                        w();
                        if (this.q == 0) {
                            u();
                        }
                    } else {
                        int c = this.f.c();
                        this.c.c(c);
                        this.e.c(c);
                    }
                    this.u.d();
                }
                this.u.c();
            }
        }
        return i;
    }

    public void b(int i) {
        a(f() + i);
    }

    public void c(int i) {
        this.g = i;
    }

    public i[][] c() {
        return this.f3419a;
    }

    public i d() {
        return this.f3420b;
    }

    public void d(int i) {
        this.r = i & 255;
    }

    public int e() {
        return this.l;
    }

    public void e(int i) {
        this.h = i;
    }

    public int f() {
        return this.q;
    }

    public void f(int i) {
        this.k = i;
    }

    public void g(int i) {
        f(i() + i);
    }

    public int[] g() {
        return this.m;
    }

    public int h() {
        return this.g;
    }

    public void h(int i) {
        this.s = i & 255;
    }

    public int i() {
        return this.k;
    }

    public int j() {
        return this.r;
    }

    public int k() {
        return this.s;
    }

    public int[][] l() {
        return this.t;
    }

    public e m() {
        return this.u;
    }

    public int[] n() {
        return this.p;
    }

    public int[] o() {
        return this.o;
    }

    public int[] p() {
        return this.n;
    }

    public j q() {
        return this.f;
    }

    public byte[] r() {
        return this.v.j();
    }

    public int s() {
        return this.i;
    }

    public String toString() {
        return "ModelPPM[\n  numMasked=" + this.g + "\n  initEsc=" + this.h + "\n  orderFall=" + this.i + "\n  maxOrder=" + this.j + "\n  runLength=" + this.k + "\n  initRL=" + this.l + "\n  escCount=" + this.q + "\n  prevSuccess=" + this.r + "\n  foundState=" + this.f + "\n  coder=" + this.u + "\n  subAlloc=" + this.v + "\n]";
    }
}
