package de.innosystec.unrar.unpack;

import de.innosystec.unrar.unpack.decode.f;
import de.innosystec.unrar.unpack.decode.g;
import de.innosystec.unrar.unpack.decode.h;
import java.util.Arrays;
import jcifs.smb.SmbNamedPipe;

/* loaded from: classes.dex */
public abstract class d extends c {
    public static final int[] ae = {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224};
    public static final byte[] af = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5};
    public static final int[] ag = {0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024, SmbNamedPipe.PIPE_TYPE_DCE_TRANSACT, 2048, 3072, 4096, 6144, 8192, 12288, 16384, 24576, 32768, 49152, 65536, 98304, 131072, 196608, 262144, 327680, 393216, 458752, 524288, 589824, 655360, 720896, 786432, 851968, 917504, 983040};
    public static final int[] ah = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16};
    public static final int[] ai = {0, 4, 8, 16, 32, 64, 128, 192};
    public static final int[] aj = {2, 2, 3, 4, 5, 6, 6, 6};
    protected int U;
    protected int V;
    protected int W;
    protected int X;
    protected g[] S = new g[4];
    protected byte[] T = new byte[1028];
    protected de.innosystec.unrar.unpack.decode.a[] Y = new de.innosystec.unrar.unpack.decode.a[4];
    protected de.innosystec.unrar.unpack.decode.e Z = new de.innosystec.unrar.unpack.decode.e();
    protected de.innosystec.unrar.unpack.decode.d aa = new de.innosystec.unrar.unpack.decode.d();
    protected f ab = new f();
    protected h ac = new h();
    protected de.innosystec.unrar.unpack.decode.b ad = new de.innosystec.unrar.unpack.decode.b();

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(de.innosystec.unrar.unpack.decode.c cVar) {
        int i = 1;
        long m = m() & 65534;
        int[] a2 = cVar.a();
        if (m >= a2[8]) {
            i = m < ((long) a2[12]) ? m < ((long) a2[10]) ? m < ((long) a2[9]) ? 9 : 10 : m < ((long) a2[11]) ? 11 : 12 : m < ((long) a2[14]) ? m < ((long) a2[13]) ? 13 : 14 : 15;
        } else if (m >= a2[4]) {
            i = m < ((long) a2[6]) ? m < ((long) a2[5]) ? 5 : 6 : m < ((long) a2[7]) ? 7 : 8;
        } else if (m >= a2[2]) {
            i = m < ((long) a2[3]) ? 3 : 4;
        } else if (m >= a2[1]) {
            i = 2;
        }
        c(i);
        int i2 = ((((int) m) - a2[i - 1]) >>> (16 - i)) + cVar.c()[i];
        if (i2 >= cVar.d()) {
            i2 = 0;
        }
        return cVar.b()[i2];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(byte[] bArr, int i, de.innosystec.unrar.unpack.decode.c cVar, int i2) {
        int[] iArr = new int[16];
        int[] iArr2 = new int[16];
        Arrays.fill(iArr, 0);
        Arrays.fill(cVar.b(), 0);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i + i3] & 15;
            iArr[i4] = iArr[i4] + 1;
        }
        iArr[0] = 0;
        iArr2[0] = 0;
        cVar.c()[0] = 0;
        cVar.a()[0] = 0;
        long j = 0;
        int i5 = 1;
        while (i5 < 16) {
            long j2 = 2 * (j + iArr[i5]);
            long j3 = j2 << (15 - i5);
            if (j3 > 65535) {
                j3 = 65535;
            }
            cVar.a()[i5] = (int) j3;
            int[] c = cVar.c();
            int i6 = cVar.c()[i5 - 1] + iArr[i5 - 1];
            c[i5] = i6;
            iArr2[i5] = i6;
            i5++;
            j = j2;
        }
        for (int i7 = 0; i7 < i2; i7++) {
            if (bArr[i + i7] != 0) {
                int[] b2 = cVar.b();
                int i8 = bArr[i + i7] & 15;
                int i9 = iArr2[i8];
                iArr2[i8] = i9 + 1;
                b2[i9] = i7;
            }
        }
        cVar.a(i2);
    }

    protected byte b(int i) {
        de.innosystec.unrar.unpack.decode.a aVar = this.Y[this.W];
        aVar.a(aVar.a() + 1);
        aVar.e(aVar.d());
        aVar.d(aVar.c());
        aVar.c(aVar.m() - aVar.b());
        aVar.b(aVar.m());
        int l = ((((((aVar.l() * 8) + (aVar.g() * aVar.b())) + ((aVar.h() * aVar.c()) + (aVar.i() * aVar.d()))) + ((aVar.j() * aVar.e()) + (aVar.k() * this.X))) >>> 3) & 255) - i;
        int i2 = ((byte) i) << 3;
        int[] f = aVar.f();
        f[0] = f[0] + Math.abs(i2);
        int[] f2 = aVar.f();
        f2[1] = f2[1] + Math.abs(i2 - aVar.b());
        int[] f3 = aVar.f();
        f3[2] = f3[2] + Math.abs(aVar.b() + i2);
        int[] f4 = aVar.f();
        f4[3] = f4[3] + Math.abs(i2 - aVar.c());
        int[] f5 = aVar.f();
        f5[4] = f5[4] + Math.abs(aVar.c() + i2);
        int[] f6 = aVar.f();
        f6[5] = f6[5] + Math.abs(i2 - aVar.d());
        int[] f7 = aVar.f();
        f7[6] = f7[6] + Math.abs(aVar.d() + i2);
        int[] f8 = aVar.f();
        f8[7] = f8[7] + Math.abs(i2 - aVar.e());
        int[] f9 = aVar.f();
        f9[8] = f9[8] + Math.abs(aVar.e() + i2);
        int[] f10 = aVar.f();
        f10[9] = f10[9] + Math.abs(i2 - this.X);
        int[] f11 = aVar.f();
        f11[10] = Math.abs(i2 + this.X) + f11[10];
        aVar.l((byte) (l - aVar.l()));
        this.X = aVar.m();
        aVar.k(l);
        if ((aVar.a() & 31) == 0) {
            int i3 = aVar.f()[0];
            aVar.f()[0] = 0;
            int i4 = i3;
            int i5 = 0;
            for (int i6 = 1; i6 < aVar.f().length; i6++) {
                if (aVar.f()[i6] < i4) {
                    i4 = aVar.f()[i6];
                    i5 = i6;
                }
                aVar.f()[i6] = 0;
            }
            switch (i5) {
                case 1:
                    if (aVar.g() >= -16) {
                        aVar.f(aVar.g() - 1);
                        break;
                    }
                    break;
                case 2:
                    if (aVar.g() < 16) {
                        aVar.f(aVar.g() + 1);
                        break;
                    }
                    break;
                case 3:
                    if (aVar.h() >= -16) {
                        aVar.g(aVar.h() - 1);
                        break;
                    }
                    break;
                case 4:
                    if (aVar.h() < 16) {
                        aVar.g(aVar.h() + 1);
                        break;
                    }
                    break;
                case 5:
                    if (aVar.i() >= -16) {
                        aVar.h(aVar.i() - 1);
                        break;
                    }
                    break;
                case 6:
                    if (aVar.i() < 16) {
                        aVar.h(aVar.i() + 1);
                        break;
                    }
                    break;
                case 7:
                    if (aVar.j() >= -16) {
                        aVar.i(aVar.j() - 1);
                        break;
                    }
                    break;
                case 8:
                    if (aVar.j() < 16) {
                        aVar.i(aVar.j() + 1);
                        break;
                    }
                    break;
                case 9:
                    if (aVar.k() >= -16) {
                        aVar.j(aVar.k() - 1);
                        break;
                    }
                    break;
                case 10:
                    if (aVar.k() < 16) {
                        aVar.j(aVar.k() + 1);
                        break;
                    }
                    break;
            }
        }
        return (byte) l;
    }

    protected void b(int i, int i2) {
        int[] iArr = this.j;
        int i3 = this.m;
        this.m = i3 + 1;
        iArr[i3 & 3] = i2;
        this.M = i2;
        this.N = i;
        this.h -= i;
        int i4 = this.k - i2;
        if (i4 < 4194004 && this.k < 4194004) {
            byte[] bArr = this.i;
            int i5 = this.k;
            this.k = i5 + 1;
            int i6 = i4 + 1;
            bArr[i5] = this.i[i4];
            byte[] bArr2 = this.i;
            int i7 = this.k;
            this.k = i7 + 1;
            int i8 = i6 + 1;
            bArr2[i7] = this.i[i6];
            while (i > 2) {
                i--;
                byte[] bArr3 = this.i;
                int i9 = this.k;
                this.k = i9 + 1;
                bArr3[i9] = this.i[i8];
                i8++;
            }
            return;
        }
        while (true) {
            int i10 = i - 1;
            if (i == 0) {
                return;
            }
            this.i[this.k] = this.i[i4 & 4194303];
            this.k = (this.k + 1) & 4194303;
            i4++;
            i = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(boolean z) {
        if (this.c) {
            this.k = this.l;
        } else {
            a(z);
            if (!c()) {
                return;
            }
            if (!z && !j()) {
                return;
            } else {
                this.h--;
            }
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
            if (this.U != 0) {
                int a2 = a(this.S[this.W]);
                if (a2 != 256) {
                    byte[] bArr = this.i;
                    int i = this.k;
                    this.k = i + 1;
                    bArr[i] = b(a2);
                    int i2 = this.W + 1;
                    this.W = i2;
                    if (i2 == this.V) {
                        this.W = 0;
                    }
                    this.h--;
                } else if (!j()) {
                    break;
                }
            } else {
                int a3 = a(this.Z);
                if (a3 < 256) {
                    byte[] bArr2 = this.i;
                    int i3 = this.k;
                    this.k = i3 + 1;
                    bArr2[i3] = (byte) a3;
                    this.h--;
                } else if (a3 > 269) {
                    int i4 = a3 - 270;
                    int i5 = ae[i4] + 3;
                    byte b2 = af[i4];
                    if (b2 > 0) {
                        i5 += m() >>> (16 - b2);
                        c(b2);
                    }
                    int a4 = a(this.aa);
                    int i6 = ag[a4] + 1;
                    int i7 = ah[a4];
                    if (i7 > 0) {
                        i6 += m() >>> (16 - i7);
                        c(i7);
                    }
                    if (i6 >= 8192) {
                        i5++;
                        if (i6 >= 262144) {
                            i5++;
                        }
                    }
                    b(i5, i6);
                } else if (a3 == 269) {
                    if (!j()) {
                        break;
                    }
                } else if (a3 == 256) {
                    b(this.N, this.M);
                } else if (a3 < 261) {
                    int i8 = this.j[(this.m - (a3 - 256)) & 3];
                    int a5 = a(this.ac);
                    int i9 = ae[a5] + 2;
                    byte b3 = af[a5];
                    if (b3 > 0) {
                        i9 += m() >>> (16 - b3);
                        c(b3);
                    }
                    if (i8 >= 257) {
                        i9++;
                        if (i8 >= 8192) {
                            i9++;
                            if (i8 >= 262144) {
                                i9++;
                            }
                        }
                    }
                    b(i9, i8);
                } else if (a3 < 270) {
                    int i10 = a3 - 261;
                    int i11 = ai[i10] + 1;
                    int i12 = aj[i10];
                    if (i12 > 0) {
                        i11 += m() >>> (16 - i12);
                        c(i12);
                    }
                    b(2, i11);
                }
            }
        }
        k();
        i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(boolean z) {
        if (z) {
            return;
        }
        this.W = 0;
        this.X = 0;
        this.V = 1;
        Arrays.fill(this.Y, new de.innosystec.unrar.unpack.decode.a());
        Arrays.fill(this.T, (byte) 0);
    }

    protected boolean j() {
        int i;
        int m;
        byte[] bArr = new byte[19];
        byte[] bArr2 = new byte[1028];
        if (this.ak > this.g - 25 && !c()) {
            return false;
        }
        int m2 = m();
        this.U = 32768 & m2;
        if ((m2 & 16384) == 0) {
            Arrays.fill(this.T, (byte) 0);
        }
        c(2);
        if (this.U != 0) {
            this.V = ((m2 >>> 12) & 3) + 1;
            if (this.W >= this.V) {
                this.W = 0;
            }
            c(2);
            i = this.V * 257;
        } else {
            i = 374;
        }
        for (int i2 = 0; i2 < 19; i2++) {
            bArr[i2] = (byte) (m() >>> 12);
            c(4);
        }
        a(bArr, 0, this.ad, 19);
        int i3 = 0;
        while (i3 < i) {
            if (this.ak > this.g - 5 && !c()) {
                return false;
            }
            int a2 = a(this.ad);
            if (a2 < 16) {
                bArr2[i3] = (byte) ((a2 + this.T[i3]) & 15);
                i3++;
            } else if (a2 == 16) {
                int m3 = (m() >>> 14) + 3;
                c(2);
                while (true) {
                    int i4 = m3 - 1;
                    if (m3 > 0 && i3 < i) {
                        bArr2[i3] = bArr2[i3 - 1];
                        i3++;
                        m3 = i4;
                    }
                }
            } else {
                if (a2 == 17) {
                    m = (m() >>> 13) + 3;
                    c(3);
                } else {
                    m = (m() >>> 9) + 11;
                    c(7);
                }
                while (true) {
                    int i5 = m - 1;
                    if (m > 0 && i3 < i) {
                        bArr2[i3] = 0;
                        i3++;
                        m = i5;
                    }
                }
            }
        }
        if (this.ak > this.g) {
            return true;
        }
        if (this.U != 0) {
            for (int i6 = 0; i6 < this.V; i6++) {
                a(bArr2, i6 * 257, this.S[i6], 257);
            }
        } else {
            a(bArr2, 0, this.Z, 298);
            a(bArr2, 298, this.aa, 48);
            a(bArr2, 346, this.ac, 28);
        }
        for (int i7 = 0; i7 < this.T.length; i7++) {
            this.T[i7] = bArr2[i7];
        }
        return true;
    }

    protected void k() {
        if (this.g >= this.ak + 5) {
            if (this.U != 0) {
                if (a(this.S[this.W]) == 256) {
                    j();
                }
            } else if (a(this.Z) == 269) {
                j();
            }
        }
    }
}
