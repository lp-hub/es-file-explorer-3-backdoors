package de.innosystec.unrar.unpack;

import com.dropbox.client2.exception.DropboxServerException;
import de.innosystec.unrar.unpack.ppm.BlockTypes;
import de.innosystec.unrar.unpack.ppm.l;
import de.innosystec.unrar.unpack.vm.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;
import jcifs.ntlmssp.NtlmFlags;
import org.apache.commons.net.ftp.FTPCommand;

/* loaded from: classes.dex */
public final class b extends d {

    /* renamed from: a, reason: collision with root package name */
    public static int[] f3410a = {4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 14, 0, 12};
    private boolean aA;
    private int aB;
    private int aC;
    private int ao;
    private int at;
    private boolean au;
    private BlockTypes aw;
    private boolean ax;
    private long ay;
    private boolean az;
    private final de.innosystec.unrar.unpack.ppm.b an = new de.innosystec.unrar.unpack.ppm.b();
    private de.innosystec.unrar.unpack.vm.b ap = new de.innosystec.unrar.unpack.vm.b();
    private List<e> aq = new ArrayList();
    private List<e> ar = new ArrayList();
    private List<Integer> as = new ArrayList();
    private byte[] av = new byte[DropboxServerException._404_NOT_FOUND];

    public b(a aVar) {
        this.e = aVar;
        this.i = null;
        this.ax = false;
        this.c = false;
        this.d = false;
        this.f = false;
    }

    private void a(g gVar) {
        if (gVar.f().size() > 0) {
            gVar.g()[6] = (int) this.ay;
            this.ap.a(gVar.f(), 36, (int) this.ay);
            this.ap.a(gVar.f(), 40, (int) (this.ay >>> 32));
            this.ap.a(gVar);
        }
    }

    private void a(byte[] bArr, int i, int i2) {
        if (this.ay >= this.h) {
            return;
        }
        long j = this.h - this.ay;
        this.e.b(bArr, i, ((long) i2) > j ? (int) j : i2);
        this.ay += i2;
    }

    private boolean a(int i, List<Byte> list, int i2) {
        int i3;
        e eVar;
        int a2;
        de.innosystec.unrar.unpack.vm.a aVar = new de.innosystec.unrar.unpack.vm.a();
        aVar.l();
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= Math.min(32768, list.size())) {
                break;
            }
            aVar.o()[i5] = list.get(i5).byteValue();
            i4 = i5 + 1;
        }
        this.ap.a();
        if ((i & 128) != 0) {
            int a3 = de.innosystec.unrar.unpack.vm.b.a(aVar);
            if (a3 == 0) {
                r();
                i3 = a3;
            } else {
                i3 = a3 - 1;
            }
        } else {
            i3 = this.at;
        }
        if (i3 > this.aq.size() || i3 > this.as.size()) {
            return false;
        }
        this.at = i3;
        boolean z = i3 == this.aq.size();
        e eVar2 = new e();
        if (!z) {
            e eVar3 = this.aq.get(i3);
            eVar2.d(i3);
            eVar3.c(eVar3.c() + 1);
            eVar = eVar3;
        } else {
            if (i3 > 1024) {
                return false;
            }
            e eVar4 = new e();
            this.aq.add(eVar4);
            eVar2.d(this.aq.size() - 1);
            this.as.add(0);
            eVar4.c(0);
            eVar = eVar4;
        }
        this.ar.add(eVar2);
        eVar2.c(eVar.c());
        int a4 = de.innosystec.unrar.unpack.vm.b.a(aVar);
        int i6 = (i & 64) != 0 ? a4 + 258 : a4;
        eVar2.b((this.k + i6) & 4194303);
        if ((i & 32) != 0) {
            eVar2.a(de.innosystec.unrar.unpack.vm.b.a(aVar));
        } else {
            eVar2.a(i3 < this.as.size() ? this.as.get(i3).intValue() : 0);
        }
        eVar2.a(this.l != this.k && ((this.l - this.k) & 4194303) <= i6);
        this.as.set(i3, Integer.valueOf(eVar2.a()));
        Arrays.fill(eVar2.f().g(), 0);
        eVar2.f().g()[3] = 245760;
        eVar2.f().g()[4] = eVar2.a();
        eVar2.f().g()[5] = eVar2.c();
        if ((i & 16) != 0) {
            int n = aVar.n() >>> 9;
            aVar.d(7);
            for (int i7 = 0; i7 < 7; i7++) {
                if (((1 << i7) & n) != 0) {
                    eVar2.f().g()[i7] = de.innosystec.unrar.unpack.vm.b.a(aVar);
                }
            }
        }
        if (z) {
            int a5 = de.innosystec.unrar.unpack.vm.b.a(aVar);
            if (a5 >= 65536 || a5 == 0) {
                return false;
            }
            byte[] bArr = new byte[a5];
            for (int i8 = 0; i8 < a5; i8++) {
                if (aVar.e(3)) {
                    return false;
                }
                bArr[i8] = (byte) (aVar.n() >> 8);
                aVar.d(8);
            }
            this.ap.a(bArr, a5, eVar.f());
        }
        eVar2.f().a(eVar.f().b());
        eVar2.f().a(eVar.f().c());
        int size = eVar.f().h().size();
        if (size > 0 && size < 8192) {
            eVar2.f().a(eVar.f().h());
        }
        if (eVar2.f().f().size() < 64) {
            eVar2.f().f().clear();
            eVar2.f().f().setSize(64);
        }
        Vector<Byte> f = eVar2.f().f();
        for (int i9 = 0; i9 < 7; i9++) {
            this.ap.a(f, i9 * 4, eVar2.f().g()[i9]);
        }
        this.ap.a(f, 28, eVar2.a());
        this.ap.a(f, 32, 0);
        this.ap.a(f, 36, 0);
        this.ap.a(f, 40, 0);
        this.ap.a(f, 44, eVar2.c());
        for (int i10 = 0; i10 < 16; i10++) {
            f.set(i10 + 48, (byte) 0);
        }
        if ((i & 8) != 0) {
            if (aVar.e(3) || (a2 = de.innosystec.unrar.unpack.vm.b.a(aVar)) > 8128) {
                return false;
            }
            int size2 = eVar2.f().f().size();
            if (size2 < a2 + 64) {
                eVar2.f().f().setSize((a2 + 64) - size2);
            }
            Vector<Byte> f2 = eVar2.f().f();
            for (int i11 = 0; i11 < a2; i11++) {
                if (aVar.e(3)) {
                    return false;
                }
                f2.set(64 + i11, Byte.valueOf((byte) (aVar.n() >>> 8)));
                aVar.d(8);
            }
        }
        return true;
    }

    private void c(int i, int i2) {
        if (i2 != i) {
            this.f = true;
        }
        if (i2 >= i) {
            a(this.i, i, i2 - i);
            return;
        }
        a(this.i, i, (-i) & 4194303);
        a(this.i, 0, i2);
        this.d = true;
    }

    private void d(int i, int i2) {
        this.M = i2;
        this.N = i;
    }

    private void e(int i, int i2) {
        int i3 = this.k - i2;
        if (i3 < 0 || i3 >= 4194044 || this.k >= 4194044) {
            while (true) {
                int i4 = i - 1;
                if (i == 0) {
                    return;
                }
                this.i[this.k] = this.i[i3 & 4194303];
                this.k = (this.k + 1) & 4194303;
                i3++;
                i = i4;
            }
        } else {
            byte[] bArr = this.i;
            int i5 = this.k;
            this.k = i5 + 1;
            int i6 = i3 + 1;
            bArr[i5] = this.i[i3];
            while (true) {
                int i7 = i6;
                i--;
                if (i <= 0) {
                    return;
                }
                byte[] bArr2 = this.i;
                int i8 = this.k;
                this.k = i8 + 1;
                i6 = i7 + 1;
                bArr2[i8] = this.i[i7];
            }
        }
    }

    private void f(boolean z) {
        int[] iArr = new int[60];
        byte[] bArr = new byte[60];
        if (iArr[1] == 0) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i < f3410a.length) {
                int i5 = f3410a[i];
                int i6 = 0;
                while (i6 < i5) {
                    iArr[i2] = i4;
                    bArr[i2] = (byte) i3;
                    i6++;
                    i2++;
                    i4 += 1 << i3;
                }
                i++;
                i3++;
            }
        }
        this.az = true;
        if (!this.c) {
            a(z);
            if (!c()) {
                return;
            }
            if ((!z || !this.au) && !t()) {
                return;
            }
        }
        if (this.aA) {
            return;
        }
        while (true) {
            this.k &= 4194303;
            if (this.ak > this.f3412b && !c()) {
                break;
            }
            if (((this.l - this.k) & 4194303) < 260 && this.l != this.k) {
                q();
                if (this.ay > this.h) {
                    return;
                }
                if (this.c) {
                    this.az = false;
                    return;
                }
            }
            if (this.aw == BlockTypes.BLOCK_PPM) {
                int b2 = this.an.b();
                if (b2 == -1) {
                    this.aA = true;
                    break;
                }
                if (b2 == this.ao) {
                    int b3 = this.an.b();
                    if (b3 == 0) {
                        if (!t()) {
                            break;
                        }
                    } else {
                        if (b3 == 2 || b3 == -1) {
                            break;
                        }
                        if (b3 == 3) {
                            if (!v()) {
                                break;
                            }
                        } else if (b3 == 4) {
                            boolean z2 = false;
                            int i7 = 0;
                            int i8 = 0;
                            for (int i9 = 0; i9 < 4 && !z2; i9++) {
                                int b4 = this.an.b();
                                if (b4 == -1) {
                                    z2 = true;
                                } else if (i9 == 3) {
                                    i7 = b4 & 255;
                                } else {
                                    i8 = (i8 << 8) + (b4 & 255);
                                }
                            }
                            if (z2) {
                                break;
                            } else {
                                e(i7 + 32, i8 + 2);
                            }
                        } else if (b3 == 5) {
                            int b5 = this.an.b();
                            if (b5 == -1) {
                                break;
                            } else {
                                e(b5 + 4, 1);
                            }
                        }
                    }
                }
                byte[] bArr2 = this.i;
                int i10 = this.k;
                this.k = i10 + 1;
                bArr2[i10] = (byte) b2;
            } else {
                int a2 = a(this.Z);
                if (a2 < 256) {
                    byte[] bArr3 = this.i;
                    int i11 = this.k;
                    this.k = i11 + 1;
                    bArr3[i11] = (byte) a2;
                } else if (a2 >= 271) {
                    int i12 = a2 - 271;
                    int i13 = ae[i12] + 3;
                    byte b6 = af[i12];
                    if (b6 > 0) {
                        i13 += m() >>> (16 - b6);
                        c(b6);
                    }
                    int a3 = a(this.aa);
                    int i14 = iArr[a3] + 1;
                    byte b7 = bArr[a3];
                    if (b7 > 0) {
                        if (a3 > 9) {
                            if (b7 > 4) {
                                i14 += (m() >>> (20 - b7)) << 4;
                                c(b7 - 4);
                            }
                            if (this.aC > 0) {
                                this.aC--;
                                i14 += this.aB;
                            } else {
                                int a4 = a(this.ab);
                                if (a4 == 16) {
                                    this.aC = 15;
                                    i14 += this.aB;
                                } else {
                                    i14 += a4;
                                    this.aB = a4;
                                }
                            }
                        } else {
                            i14 += m() >>> (16 - b7);
                            c(b7);
                        }
                    }
                    if (i14 >= 8192) {
                        i13++;
                        if (i14 >= 262144) {
                            i13++;
                        }
                    }
                    g(i14);
                    d(i13, i14);
                    e(i13, i14);
                } else if (a2 == 256) {
                    if (!s()) {
                        break;
                    }
                } else if (a2 == 257) {
                    if (!u()) {
                        break;
                    }
                } else if (a2 == 258) {
                    if (this.N != 0) {
                        e(this.N, this.M);
                    }
                } else if (a2 < 263) {
                    int i15 = a2 - 259;
                    int i16 = this.j[i15];
                    while (i15 > 0) {
                        this.j[i15] = this.j[i15 - 1];
                        i15--;
                    }
                    this.j[0] = i16;
                    int a5 = a(this.ac);
                    int i17 = ae[a5] + 2;
                    byte b8 = af[a5];
                    if (b8 > 0) {
                        i17 += m() >>> (16 - b8);
                        c(b8);
                    }
                    d(i17, i16);
                    e(i17, i16);
                } else if (a2 < 272) {
                    int i18 = a2 - 263;
                    int i19 = ai[i18] + 1;
                    int i20 = aj[i18];
                    if (i20 > 0) {
                        i19 += m() >>> (16 - i20);
                        c(i20);
                    }
                    g(i19);
                    d(2, i19);
                    e(2, i19);
                }
            }
        }
        q();
    }

    private byte[] f(int i) {
        try {
            return new byte[i];
        } catch (OutOfMemoryError e) {
            return f(i / 2);
        }
    }

    private void g(int i) {
        this.j[3] = this.j[2];
        this.j[2] = this.j[1];
        this.j[1] = this.j[0];
        this.j[0] = i;
    }

    private void p() {
        byte[] bArr = new byte[65536];
        while (true) {
            int a2 = this.e.a(bArr, 0, (int) Math.min(bArr.length, this.h));
            if (a2 == 0 || a2 == -1) {
                return;
            }
            if (a2 >= this.h) {
                a2 = (int) this.h;
            }
            this.e.b(bArr, 0, a2);
            if (this.h >= 0) {
                this.h -= a2;
            }
        }
    }

    private void q() {
        int i;
        int i2;
        e eVar;
        int i3 = this.l;
        int i4 = 0;
        int i5 = i3;
        int i6 = (this.k - i3) & 4194303;
        while (i4 < this.ar.size()) {
            e eVar2 = this.ar.get(i4);
            if (eVar2 == null) {
                i = i4;
                i2 = i5;
            } else if (eVar2.d()) {
                eVar2.a(false);
                i = i4;
                i2 = i5;
            } else {
                int b2 = eVar2.b();
                int a2 = eVar2.a();
                if (((b2 - i5) & 4194303) < i6) {
                    if (i5 != b2) {
                        c(i5, b2);
                        i6 = (this.k - b2) & 4194303;
                        i5 = b2;
                    }
                    if (a2 > i6) {
                        while (i4 < this.ar.size()) {
                            e eVar3 = this.ar.get(i4);
                            if (eVar3 != null && eVar3.d()) {
                                eVar3.a(false);
                            }
                            i4++;
                        }
                        this.l = i5;
                        return;
                    }
                    int i7 = (b2 + a2) & 4194303;
                    if (b2 < i7 || i7 == 0) {
                        this.ap.a(0, this.i, b2, a2);
                    } else {
                        int i8 = NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY - b2;
                        this.ap.a(0, this.i, b2, i8);
                        this.ap.a(i8, this.i, 0, i7);
                    }
                    g f = this.aq.get(eVar2.e()).f();
                    g f2 = eVar2.f();
                    if (f.f().size() > 64) {
                        f2.f().setSize(f.f().size());
                        for (int i9 = 0; i9 < f.f().size() - 64; i9++) {
                            f2.f().set(i9 + 64, f.f().get(i9 + 64));
                        }
                    }
                    a(f2);
                    if (f2.f().size() > 64) {
                        if (f.f().size() < f2.f().size()) {
                            f.f().setSize(f2.f().size());
                        }
                        for (int i10 = 0; i10 < f2.f().size() - 64; i10++) {
                            f.f().set(i10 + 64, f2.f().get(i10 + 64));
                        }
                    } else {
                        f.f().clear();
                    }
                    int d = f2.d();
                    int e = f2.e();
                    byte[] bArr = new byte[e];
                    for (int i11 = 0; i11 < e; i11++) {
                        bArr[i11] = this.ap.b()[d + i11];
                    }
                    this.ar.set(i4, null);
                    int i12 = e;
                    i = i4;
                    byte[] bArr2 = bArr;
                    while (i + 1 < this.ar.size() && (eVar = this.ar.get(i + 1)) != null && eVar.b() == b2 && eVar.a() == i12 && !eVar.d()) {
                        this.ap.a(0, bArr2, 0, i12);
                        g f3 = this.aq.get(eVar.e()).f();
                        g f4 = eVar.f();
                        if (f3.f().size() > 64) {
                            f4.f().setSize(f3.f().size());
                            for (int i13 = 0; i13 < f3.f().size() - 64; i13++) {
                                f4.f().set(i13 + 64, f3.f().get(i13 + 64));
                            }
                        }
                        a(f4);
                        if (f4.f().size() > 64) {
                            if (f3.f().size() < f4.f().size()) {
                                f3.f().setSize(f4.f().size());
                            }
                            for (int i14 = 0; i14 < f4.f().size() - 64; i14++) {
                                f3.f().set(i14 + 64, f4.f().get(i14 + 64));
                            }
                        } else {
                            f3.f().clear();
                        }
                        int d2 = f4.d();
                        int e2 = f4.e();
                        byte[] bArr3 = new byte[e2];
                        for (int i15 = 0; i15 < e2; i15++) {
                            bArr3[i15] = f4.f().get(d2 + i15).byteValue();
                        }
                        int i16 = i + 1;
                        this.ar.set(i16, null);
                        i12 = e2;
                        i = i16;
                        bArr2 = bArr3;
                    }
                    this.e.b(bArr2, 0, i12);
                    this.f = true;
                    this.ay += i12;
                    i6 = (this.k - i7) & 4194303;
                    i2 = i7;
                } else {
                    i = i4;
                    i2 = i5;
                }
            }
            i5 = i2;
            i4 = i + 1;
        }
        c(i5, this.k);
        this.l = this.k;
    }

    private void r() {
        this.as.clear();
        this.at = 0;
        this.aq.clear();
        this.ar.clear();
    }

    private boolean s() {
        boolean z;
        boolean z2;
        int m = m();
        if ((32768 & m) != 0) {
            c(1);
            z = false;
            z2 = true;
        } else {
            boolean z3 = (m & 16384) != 0;
            c(2);
            z = true;
            z2 = z3;
        }
        this.au = !z2;
        return !z && (!z2 || t());
    }

    private boolean t() {
        int i;
        int i2;
        int i3;
        int i4;
        byte[] bArr = new byte[20];
        byte[] bArr2 = new byte[DropboxServerException._404_NOT_FOUND];
        if (this.ak > this.g - 25 && !c()) {
            return false;
        }
        d((8 - this.al) & 7);
        long n = n() & (-1);
        if ((32768 & n) != 0) {
            this.aw = BlockTypes.BLOCK_PPM;
            return this.an.a(this, this.ao);
        }
        this.aw = BlockTypes.BLOCK_LZ;
        this.aB = 0;
        this.aC = 0;
        if ((n & 16384) == 0) {
            Arrays.fill(this.av, (byte) 0);
        }
        d(2);
        int i5 = 0;
        while (i5 < 20) {
            int n2 = (n() >>> 12) & 255;
            d(4);
            if (n2 == 15) {
                int n3 = (n() >>> 12) & 255;
                d(4);
                if (n3 == 0) {
                    bArr[i5] = 15;
                } else {
                    int i6 = n3 + 2;
                    while (true) {
                        i4 = i5;
                        int i7 = i6;
                        i6 = i7 - 1;
                        if (i7 <= 0 || i4 >= bArr.length) {
                            break;
                        }
                        i5 = i4 + 1;
                        bArr[i4] = 0;
                    }
                    i5 = i4 - 1;
                }
            } else {
                bArr[i5] = (byte) n2;
            }
            i5++;
        }
        a(bArr, 0, this.ad, 20);
        for (int i8 = 0; i8 < 404; i8 = i) {
            if (this.ak > this.g - 5 && !c()) {
                return false;
            }
            int a2 = a(this.ad);
            if (a2 < 16) {
                bArr2[i8] = (byte) ((a2 + this.av[i8]) & 15);
                i = i8 + 1;
            } else if (a2 < 18) {
                if (a2 == 16) {
                    int n4 = (n() >>> 13) + 3;
                    d(3);
                    i = i8;
                    i3 = n4;
                } else {
                    int n5 = (n() >>> 9) + 11;
                    d(7);
                    i = i8;
                    i3 = n5;
                }
                while (true) {
                    int i9 = i3 - 1;
                    if (i3 > 0 && i < 404) {
                        bArr2[i] = bArr2[i - 1];
                        i++;
                        i3 = i9;
                    }
                }
            } else {
                if (a2 == 18) {
                    int n6 = (n() >>> 13) + 3;
                    d(3);
                    i = i8;
                    i2 = n6;
                } else {
                    int n7 = (n() >>> 9) + 11;
                    d(7);
                    i = i8;
                    i2 = n7;
                }
                while (true) {
                    int i10 = i2 - 1;
                    if (i2 > 0 && i < 404) {
                        bArr2[i] = 0;
                        i++;
                        i2 = i10;
                    }
                }
            }
        }
        this.au = true;
        if (this.ak > this.g) {
            return false;
        }
        a(bArr2, 0, this.Z, 299);
        a(bArr2, 299, this.aa, 60);
        a(bArr2, 359, this.ab, 17);
        a(bArr2, 376, this.ac, 28);
        for (int i11 = 0; i11 < this.av.length; i11++) {
            this.av[i11] = bArr2[i11];
        }
        return true;
    }

    private boolean u() {
        int m = m() >> 8;
        c(8);
        int i = (m & 7) + 1;
        if (i == 7) {
            i = (m() >> 8) + 7;
            c(8);
        } else if (i == 8) {
            i = m();
            c(16);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            if (this.ak >= this.g - 1 && !c() && i2 < i - 1) {
                return false;
            }
            arrayList.add(Byte.valueOf((byte) (m() >> 8)));
            c(8);
        }
        return a(m, arrayList, i);
    }

    private boolean v() {
        int b2;
        int b3 = this.an.b();
        if (b3 == -1) {
            return false;
        }
        int i = (b3 & 7) + 1;
        if (i == 7) {
            int b4 = this.an.b();
            if (b4 == -1) {
                return false;
            }
            i = b4 + 7;
        } else if (i == 8) {
            int b5 = this.an.b();
            if (b5 != -1 && (b2 = this.an.b()) != -1) {
                i = (b5 * 256) + b2;
            }
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            int b6 = this.an.b();
            if (b6 == -1) {
                return false;
            }
            arrayList.add(Byte.valueOf((byte) b6));
        }
        return a(b3, arrayList, i);
    }

    public int a() {
        if (this.ak > 32738) {
            c();
        }
        byte[] bArr = this.am;
        int i = this.ak;
        this.ak = i + 1;
        return bArr[i] & 255;
    }

    public void a(int i) {
        this.ao = i;
    }

    public void a(int i, boolean z) {
        if (this.e.c().p() == 48) {
            p();
        }
        switch (i) {
            case 15:
                b(z);
                return;
            case 20:
            case FTPCommand.LIST /* 26 */:
                d(z);
                return;
            case 29:
            case FTPCommand.EPSV /* 36 */:
                f(z);
                return;
            default:
                return;
        }
    }

    public void a(long j) {
        this.h = j;
        this.az = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.innosystec.unrar.unpack.c
    public void a(boolean z) {
        if (!z) {
            this.au = false;
            Arrays.fill(this.j, 0);
            this.m = 0;
            this.M = 0;
            this.N = 0;
            Arrays.fill(this.av, (byte) 0);
            this.k = 0;
            this.l = 0;
            this.ao = 2;
            r();
        }
        l();
        this.aA = false;
        this.ay = 0L;
        this.g = 0;
        this.f3412b = 0;
        e(z);
    }

    public void a(byte[] bArr) {
        if (bArr == null) {
            this.i = f(NtlmFlags.NTLMSSP_REQUEST_NON_NT_SESSION_KEY);
        } else {
            this.i = bArr;
            this.ax = true;
        }
        this.ak = 0;
        a(false);
    }

    public void b() {
        l a2;
        if (this.an == null || (a2 = this.an.a()) == null) {
            return;
        }
        a2.c();
    }
}
