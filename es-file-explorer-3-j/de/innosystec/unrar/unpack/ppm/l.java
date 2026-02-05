package de.innosystec.unrar.unpack.ppm;

import java.util.Arrays;
import jcifs.ntlmssp.NtlmFlags;

/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3434a;

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f3435b;
    private int c;
    private int f;
    private int g;
    private int h;
    private int i;
    private int k;
    private int l;
    private int m;
    private int n;
    private byte[] o;
    private int p;
    private int q;
    private int[] d = new int[38];
    private int[] e = new int[128];
    private final h[] j = new h[38];
    private h r = null;
    private g s = null;
    private g t = null;
    private g u = null;

    static {
        f3435b = !l.class.desiredAssertionStatus();
        f3434a = Math.max(c.f3421a, 12);
    }

    public l() {
        a();
    }

    private void b(int i, int i2, int i3) {
        int i4 = this.d[i2] - this.d[i3];
        int f = f(this.d[i3]) + i;
        int[] iArr = this.d;
        int i5 = this.e[i4 - 1];
        if (iArr[i5] != i4) {
            int i6 = i5 - 1;
            c(f, i6);
            int i7 = this.d[i6];
            f += f(i7);
            i4 -= i7;
        }
        c(f, this.e[i4 - 1]);
    }

    private void c(int i, int i2) {
        h hVar = this.r;
        hVar.c(i);
        hVar.a(this.j[i2].a());
        this.j[i2].a(hVar);
    }

    private int d(int i, int i2) {
        return f(i2) + i;
    }

    private int e(int i) {
        int a2 = this.j[i].a();
        h hVar = this.r;
        hVar.c(a2);
        this.j[i].a(hVar.a());
        return a2;
    }

    private int f(int i) {
        return f3434a * i;
    }

    private int g(int i) {
        if (this.f == 0) {
            this.f = 255;
            k();
            if (this.j[i].a() != 0) {
                return e(i);
            }
        }
        int i2 = i;
        while (true) {
            int i3 = i2 + 1;
            if (i3 == 38) {
                this.f--;
                int f = f(this.d[i]);
                int i4 = this.d[i] * 12;
                if (this.n - this.k <= i4) {
                    return 0;
                }
                this.n -= i4;
                this.l -= f;
                return this.l;
            }
            if (this.j[i3].a() != 0) {
                int e = e(i3);
                b(e, i3, i);
                return e;
            }
            i2 = i3;
        }
    }

    private void k() {
        g gVar = this.s;
        gVar.c(this.q);
        g gVar2 = this.t;
        g gVar3 = this.u;
        if (this.h != this.i) {
            this.o[this.h] = 0;
        }
        gVar.c(gVar);
        gVar.b(gVar);
        for (int i = 0; i < 38; i++) {
            while (this.j[i].a() != 0) {
                gVar2.c(e(i));
                gVar2.a(gVar);
                gVar2.e(65535);
                gVar2.b(this.d[i]);
            }
        }
        gVar2.c(gVar.b());
        while (gVar2.e() != gVar.e()) {
            gVar3.c(d(gVar2.e(), gVar2.c()));
            while (gVar3.f() == 65535 && gVar2.c() + gVar3.c() < 65536) {
                gVar3.a();
                gVar2.b(gVar2.c() + gVar3.c());
                gVar3.c(d(gVar2.e(), gVar2.c()));
            }
            gVar2.c(gVar2.b());
        }
        gVar2.c(gVar.b());
        while (gVar2.e() != gVar.e()) {
            gVar2.a();
            int c = gVar2.c();
            while (c > 128) {
                c(gVar2.e(), 37);
                gVar2.c(d(gVar2.e(), 128));
                c -= 128;
            }
            int[] iArr = this.d;
            int i2 = this.e[c - 1];
            if (iArr[i2] != c) {
                i2--;
                int i3 = c - this.d[i2];
                c(d(gVar2.e(), c - i3), i3 - 1);
            }
            c(gVar2.e(), i2);
            gVar2.c(gVar.b());
        }
    }

    private int l() {
        return this.j.length * 4;
    }

    public int a(int i, int i2) {
        int i3 = this.e[i2 - 1];
        if (i3 == this.e[(i2 - 1) + 1]) {
            return i;
        }
        int b2 = b(i2 + 1);
        if (b2 != 0) {
            System.arraycopy(this.o, i, this.o, b2, f(i2));
            c(i, i3);
        }
        return b2;
    }

    public int a(int i, int i2, int i3) {
        int i4 = this.e[i2 - 1];
        int i5 = this.e[i3 - 1];
        if (i4 == i5) {
            return i;
        }
        if (this.j[i5].a() == 0) {
            b(i, i4, i5);
            return i;
        }
        int e = e(i5);
        System.arraycopy(this.o, i, this.o, e, f(i3));
        c(i, i4);
        return e;
    }

    public void a() {
        this.c = 0;
    }

    public boolean a(int i) {
        int i2 = NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY;
        int i3 = i << 20;
        if (i3 <= 4194304) {
            i2 = i3;
        }
        if (this.c != i2) {
            c();
            int i4 = f3434a + ((i2 / 12) * f3434a);
            int i5 = i4 + 1 + 152;
            this.q = i5;
            int i6 = i5 + 12;
            try {
                this.o = new byte[i6];
            } catch (Throwable th) {
                System.out.println(th.getMessage() + "," + i6);
                th.printStackTrace();
            }
            this.g = 1;
            this.m = (this.g + i4) - f3434a;
            this.c = i2;
            this.p = this.g + i4;
            if (!f3435b && i6 - this.q != 12) {
                throw new AssertionError(i6 + " " + this.q + " 12");
            }
            int i7 = 0;
            int i8 = this.p;
            while (i7 < this.j.length) {
                this.j[i7] = new h(this.o);
                this.j[i7].c(i8);
                i7++;
                i8 += 4;
            }
            this.r = new h(this.o);
            this.s = new g(this.o);
            this.t = new g(this.o);
            this.u = new g(this.o);
        }
        return true;
    }

    public int b(int i) {
        int i2 = this.e[i - 1];
        if (this.j[i2].a() != 0) {
            return e(i2);
        }
        int i3 = this.h;
        this.h += f(this.d[i2]);
        if (this.h <= this.i) {
            return i3;
        }
        this.h -= f(this.d[i2]);
        return g(i2);
    }

    public void b() {
        this.k++;
    }

    public void b(int i, int i2) {
        c(i, this.e[i2 - 1]);
    }

    public void c() {
        if (this.c != 0) {
            this.c = 0;
            this.o = null;
            this.g = 1;
            this.r = null;
            this.s = null;
            this.t = null;
            this.u = null;
        }
    }

    public void c(int i) {
        this.k = i;
    }

    public int d() {
        return this.c;
    }

    public void d(int i) {
        c(h() - i);
    }

    public int e() {
        if (this.i == this.h) {
            return this.j[0].a() != 0 ? e(0) : g(0);
        }
        int i = this.i - f3434a;
        this.i = i;
        return i;
    }

    public int f() {
        return this.n;
    }

    public int g() {
        return this.m;
    }

    public int h() {
        return this.k;
    }

    public void i() {
        Arrays.fill(this.o, this.p, this.p + l(), (byte) 0);
        this.k = this.g;
        int i = ((this.c / 8) / 12) * 7 * 12;
        int i2 = (i / 12) * f3434a;
        int i3 = this.c - i;
        int i4 = ((i3 / 12) * f3434a) + (i3 % 12);
        this.i = this.g + this.c;
        int i5 = i4 + this.g;
        this.l = i5;
        this.h = i5;
        this.n = i3 + this.g;
        this.i = this.h + i2;
        int i6 = 1;
        int i7 = 0;
        while (i7 < 4) {
            this.d[i7] = i6 & 255;
            i7++;
            i6++;
        }
        int i8 = i6 + 1;
        while (i7 < 8) {
            this.d[i7] = i8 & 255;
            i7++;
            i8 += 2;
        }
        int i9 = i8 + 1;
        while (i7 < 12) {
            this.d[i7] = i9 & 255;
            i7++;
            i9 += 3;
        }
        int i10 = i9 + 1;
        while (i7 < 38) {
            this.d[i7] = i10 & 255;
            i7++;
            i10 += 4;
        }
        this.f = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < 128; i12++) {
            i11 += this.d[i11] < i12 + 1 ? 1 : 0;
            this.e[i12] = i11 & 255;
        }
    }

    public byte[] j() {
        return this.o;
    }

    public String toString() {
        return "SubAllocator[\n  subAllocatorSize=" + this.c + "\n  glueCount=" + this.f + "\n  heapStart=" + this.g + "\n  loUnit=" + this.h + "\n  hiUnit=" + this.i + "\n  pText=" + this.k + "\n  unitsStart=" + this.l + "\n]";
    }
}
