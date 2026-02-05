package de.innosystec.unrar.unpack;

import java.util.Arrays;
import jcifs.smb.WinError;

/* loaded from: classes.dex */
public abstract class c extends de.innosystec.unrar.unpack.vm.a {
    protected int A;
    protected int B;
    protected int C;
    protected int D;
    protected int E;
    protected int F;
    protected int G;
    protected int H;
    protected int I;
    protected int J;
    protected int K;
    protected int L;
    protected int M;
    protected int N;

    /* renamed from: b, reason: collision with root package name */
    protected int f3412b;
    protected boolean c;
    protected boolean d;
    protected a e;
    protected boolean f;
    protected int g;
    protected long h;
    protected byte[] i;
    protected int k;
    protected int l;
    protected int m;
    protected int y;
    protected int z;

    /* renamed from: a, reason: collision with root package name */
    private static int[] f3411a = {32768, 40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 61952, 65535};
    private static int[] S = {0, 0, 0, 2, 3, 5, 7, 11, 16, 20, 24, 32, 32};
    private static int[] T = {40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 62016, 65535};
    private static int[] U = {0, 0, 0, 0, 5, 7, 9, 13, 18, 22, 26, 34, 36};
    private static int[] V = {32768, 49152, 57344, 61952, 61952, 61952, 61952, 61952, 65535};
    private static int[] W = {0, 0, 0, 0, 0, 8, 16, 24, 33, 33, 33, 33, 33};
    private static int[] X = {8192, 49152, 57344, 61440, 61952, 61952, 63456, 65535};
    private static int[] Y = {0, 0, 0, 0, 0, 0, 4, 44, 60, 76, 80, 80, 127};
    private static int[] Z = {4096, 9216, 32768, 49152, 64000, 65535, 65535, 65535};
    private static int[] aa = {0, 0, 0, 0, 0, 0, 2, 7, 53, 117, WinError.ERROR_PIPE_NOT_CONNECTED, 0, 0};
    private static int[] ab = {2048, 9216, 60928, 65152, 65535, 65535, 65535};
    private static int[] ac = {0, 0, 0, 0, 0, 0, 0, 2, 16, 218, 251, 0, 0};
    private static int[] ad = {65280, 65535, 65535, 65535, 65535, 65535};
    private static int[] ae = {0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0};
    static int[] O = {1, 3, 4, 4, 5, 6, 7, 8, 8, 4, 4, 5, 6, 6, 4, 0};
    static int[] P = {0, 160, 208, 224, 240, 248, 252, 254, 255, 192, 128, 144, 152, 156, 176};
    static int[] Q = {2, 3, 3, 3, 4, 4, 5, 6, 6, 4, 4, 5, 6, 6, 4, 0};
    static int[] R = {0, 64, 96, 160, 208, 224, 240, 248, 252, 192, 128, 144, 152, 156, 176};
    protected int[] j = new int[4];
    protected int[] n = new int[256];
    protected int[] o = new int[256];
    protected int[] p = new int[256];
    protected int[] q = new int[256];
    protected int[] r = new int[256];
    protected int[] s = new int[256];
    protected int[] t = new int[256];
    protected int[] u = new int[256];
    protected int[] v = new int[256];
    protected int[] w = new int[256];
    protected int[] x = new int[256];

    private int a(int i) {
        return i == 1 ? this.E + 3 : O[i];
    }

    private int b(int i) {
        return i == 3 ? this.E + 3 : Q[i];
    }

    protected int a(int i, int i2, int[] iArr, int[] iArr2) {
        int i3 = i & 65520;
        int i4 = 0;
        while (iArr[i4] <= i3) {
            i2++;
            i4++;
        }
        d(i2);
        return ((i3 - (i4 != 0 ? iArr[i4 - 1] : 0)) >>> (16 - i2)) + iArr2[i2];
    }

    protected void a(int i, int i2) {
        this.h -= i2;
        while (true) {
            int i3 = i2 - 1;
            if (i2 == 0) {
                return;
            }
            this.i[this.k] = this.i[(this.k - i) & 4194303];
            this.k = (this.k + 1) & 4194303;
            i2 = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(boolean z);

    protected void a(int[] iArr, int[] iArr2) {
        int i = 0;
        for (int i2 = 7; i2 >= 0; i2--) {
            int i3 = 0;
            while (i3 < 32) {
                iArr[i] = (iArr[i] & (-256)) | i2;
                i3++;
                i++;
            }
        }
        Arrays.fill(iArr2, 0);
        for (int i4 = 6; i4 >= 0; i4--) {
            iArr2[i4] = (7 - i4) * 32;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z) {
        if (this.c) {
            this.k = this.l;
        } else {
            a(z);
            c(z);
            c();
            if (z) {
                this.k = this.l;
            } else {
                h();
                this.k = 0;
            }
            this.h--;
        }
        if (this.h >= 0) {
            g();
            this.I = 8;
        }
        while (this.h >= 0) {
            this.k &= 4194303;
            if (this.ak > this.g - 30 && !c()) {
                break;
            }
            if (((this.l - this.k) & 4194303) < 270 && this.l != this.k) {
                i();
                if (this.c) {
                    return;
                }
            }
            if (this.G != 0) {
                f();
            } else {
                int i = this.I - 1;
                this.I = i;
                if (i < 0) {
                    g();
                    this.I = 7;
                }
                if ((this.y & 128) != 0) {
                    this.y <<= 1;
                    if (this.K > this.J) {
                        e();
                    } else {
                        f();
                    }
                } else {
                    this.y <<= 1;
                    int i2 = this.I - 1;
                    this.I = i2;
                    if (i2 < 0) {
                        g();
                        this.I = 7;
                    }
                    if ((this.y & 128) != 0) {
                        this.y <<= 1;
                        if (this.K > this.J) {
                            f();
                        } else {
                            e();
                        }
                    } else {
                        this.y <<= 1;
                        d();
                    }
                }
            }
        }
        i();
    }

    protected void c(boolean z) {
        if (!z) {
            this.E = 0;
            this.F = 0;
            this.D = 0;
            this.C = 0;
            this.B = 0;
            this.A = 0;
            this.z = 13568;
            this.L = 8193;
            this.K = 128;
            this.J = 128;
        }
        this.I = 0;
        this.y = 0;
        this.G = 0;
        this.H = 0;
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c() {
        int i = this.g - this.ak;
        if (i < 0) {
            return false;
        }
        if (this.ak > 16384) {
            if (i > 0) {
                System.arraycopy(this.am, this.ak, this.am, 0, i);
            }
            this.ak = 0;
            this.g = i;
        } else {
            i = this.g;
        }
        int a2 = this.e.a(this.am, i, (32768 - i) & (-16));
        if (a2 > 0) {
            this.g += a2;
        }
        this.f3412b = this.g - 30;
        return a2 != -1;
    }

    protected void d() {
        int i;
        this.F = 0;
        int n = n();
        if (this.H == 2) {
            d(1);
            if (n >= 32768) {
                a(this.M, this.N);
                return;
            } else {
                n <<= 1;
                this.H = 0;
            }
        }
        int i2 = n >>> 8;
        if (this.B < 37) {
            int i3 = 0;
            while (((P[i3] ^ i2) & ((255 >>> a(i3)) ^ (-1))) != 0) {
                i3++;
            }
            d(a(i3));
            i = i3;
        } else {
            int i4 = 0;
            while (((R[i4] ^ i2) & ((255 >> b(i4)) ^ (-1))) != 0) {
                i4++;
            }
            d(b(i4));
            i = i4;
        }
        if (i < 9) {
            this.H = 0;
            this.B += i;
            this.B -= this.B >> 4;
            int a2 = a(n(), 5, Z, aa) & 255;
            int i5 = this.o[a2];
            int i6 = a2 - 1;
            if (i6 != -1) {
                this.s[i5] = r3[i5] - 1;
                int i7 = this.o[i6];
                int[] iArr = this.s;
                iArr[i7] = iArr[i7] + 1;
                this.o[i6 + 1] = i7;
                this.o[i6] = i5;
            }
            int i8 = i + 2;
            int[] iArr2 = this.j;
            int i9 = this.m;
            this.m = i9 + 1;
            int i10 = i5 + 1;
            iArr2[i9] = i10;
            this.m &= 3;
            this.N = i8;
            this.M = i10;
            a(i10, i8);
            return;
        }
        if (i == 9) {
            this.H++;
            a(this.M, this.N);
            return;
        }
        if (i == 14) {
            this.H = 0;
            int a3 = a(n(), 3, T, U) + 5;
            int n2 = (n() >> 1) | 32768;
            d(15);
            this.N = a3;
            this.M = n2;
            a(n2, a3);
            return;
        }
        this.H = 0;
        int i11 = this.j[(this.m - (i - 9)) & 3];
        int a4 = a(n(), 2, f3411a, S) + 2;
        if (a4 == 257 && i == 10) {
            this.E ^= 1;
            return;
        }
        if (i11 > 256) {
            a4++;
        }
        if (i11 >= this.L) {
            a4++;
        }
        int[] iArr3 = this.j;
        int i12 = this.m;
        this.m = i12 + 1;
        iArr3[i12] = i11;
        this.m &= 3;
        this.N = a4;
        this.M = i11;
        a(i11, a4);
    }

    protected void e() {
        int i;
        int i2;
        int i3 = 0;
        this.F = 0;
        this.K += 16;
        if (this.K > 255) {
            this.K = 144;
            this.J >>>= 1;
        }
        int i4 = this.C;
        int n = n();
        if (this.C >= 122) {
            n = a(n, 3, T, U);
        } else if (this.C >= 64) {
            n = a(n, 2, f3411a, S);
        } else if (n < 256) {
            d(16);
        } else {
            while (((n << i3) & 32768) == 0) {
                i3++;
            }
            d(i3 + 1);
            n = i3;
        }
        this.C += n;
        this.C -= this.C >>> 5;
        int n2 = n();
        int a2 = this.A > 10495 ? a(n2, 5, Z, aa) : this.A > 1791 ? a(n2, 5, X, Y) : a(n2, 4, V, W);
        this.A += a2;
        this.A -= this.A >> 8;
        while (true) {
            int i5 = this.p[a2 & 255];
            int[] iArr = this.w;
            i = i5 + 1;
            int i6 = i5 & 255;
            i2 = iArr[i6];
            iArr[i6] = i2 + 1;
            if ((i & 255) != 0) {
                break;
            } else {
                a(this.p, this.w);
            }
        }
        this.p[a2] = this.p[i2];
        this.p[i2] = i;
        int n3 = ((65280 & i) | (n() >>> 8)) >>> 1;
        d(7);
        int i7 = this.D;
        if (n != 1 && n != 4) {
            if (n == 0 && n3 <= this.L) {
                this.D++;
                this.D -= this.D >> 8;
            } else if (this.D > 0) {
                this.D--;
            }
        }
        int i8 = n + 3;
        if (n3 >= this.L) {
            i8++;
        }
        if (n3 <= 256) {
            i8 += 8;
        }
        if (i7 > 176 || (this.z >= 10752 && i4 < 64)) {
            this.L = 32512;
        } else {
            this.L = 8193;
        }
        int[] iArr2 = this.j;
        int i9 = this.m;
        this.m = i9 + 1;
        iArr2[i9] = n3;
        this.m &= 3;
        this.N = i8;
        this.M = n3;
        a(n3, i8);
    }

    protected void f() {
        int n = n();
        int a2 = (this.z > 30207 ? a(n, 8, ad, ae) : this.z > 24063 ? a(n, 6, ab, ac) : this.z > 13823 ? a(n, 5, Z, aa) : this.z > 3583 ? a(n, 5, X, Y) : a(n, 4, V, W)) & 255;
        if (this.G != 0) {
            if (a2 == 0 && n > 4095) {
                a2 = 256;
            }
            a2--;
            if (a2 == -1) {
                int n2 = n();
                d(1);
                if ((32768 & n2) != 0) {
                    this.G = 0;
                    this.F = 0;
                    return;
                }
                int i = (n2 & 16384) != 0 ? 4 : 3;
                d(1);
                int a3 = (a(n(), 5, Z, aa) << 5) | (n() >>> 11);
                d(5);
                a(a3, i);
                return;
            }
        } else {
            int i2 = this.F;
            this.F = i2 + 1;
            if (i2 >= 16 && this.I == 0) {
                this.G = 1;
            }
        }
        this.z += a2;
        this.z -= this.z >>> 8;
        this.J += 16;
        if (this.J > 255) {
            this.J = 144;
            this.K >>>= 1;
        }
        byte[] bArr = this.i;
        int i3 = this.k;
        this.k = i3 + 1;
        bArr[i3] = (byte) (this.n[a2] >>> 8);
        this.h--;
        while (true) {
            int i4 = this.n[a2];
            int[] iArr = this.v;
            int i5 = i4 + 1;
            int i6 = i4 & 255;
            int i7 = iArr[i6];
            iArr[i6] = i7 + 1;
            if ((i5 & 255) <= 161) {
                this.n[a2] = this.n[i7];
                this.n[i7] = i5;
                return;
            }
            a(this.n, this.v);
        }
    }

    protected void g() {
        int a2 = a(n(), 5, Z, aa);
        while (true) {
            int i = this.q[a2];
            this.y = i >>> 8;
            int[] iArr = this.x;
            int i2 = i + 1;
            int i3 = i & 255;
            int i4 = iArr[i3];
            iArr[i3] = i4 + 1;
            if ((i2 & 255) != 0) {
                this.q[a2] = this.q[i4];
                this.q[i4] = i2;
                return;
            }
            a(this.q, this.x);
        }
    }

    protected void h() {
        for (int i = 0; i < 256; i++) {
            int[] iArr = this.r;
            int[] iArr2 = this.s;
            this.t[i] = i;
            iArr2[i] = i;
            iArr[i] = i;
            this.u[i] = ((i ^ (-1)) + 1) & 255;
            int[] iArr3 = this.n;
            int i2 = i << 8;
            this.p[i] = i2;
            iArr3[i] = i2;
            this.o[i] = i;
            this.q[i] = (((i ^ (-1)) + 1) & 255) << 8;
        }
        Arrays.fill(this.v, 0);
        Arrays.fill(this.w, 0);
        Arrays.fill(this.x, 0);
        a(this.p, this.w);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
        if (this.k != this.l) {
            this.f = true;
        }
        if (this.k < this.l) {
            this.e.b(this.i, this.l, (-this.l) & 4194303);
            this.e.b(this.i, 0, this.k);
            this.d = true;
        } else {
            this.e.b(this.i, this.l, this.k - this.l);
        }
        this.l = this.k;
    }
}
