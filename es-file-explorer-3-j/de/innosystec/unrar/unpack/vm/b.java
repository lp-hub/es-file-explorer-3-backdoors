package de.innosystec.unrar.unpack.vm;

import java.util.List;
import java.util.Vector;
import org.apache.commons.net.ftp.FTPCommand;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class b extends a {
    private int c;
    private int e;
    private int f;

    /* renamed from: b, reason: collision with root package name */
    private int[] f3437b = new int[8];
    private int d = 25000000;

    /* renamed from: a, reason: collision with root package name */
    private byte[] f3436a = null;

    private int a(int i, int i2, int i3) {
        int i4 = i2 / 8;
        int i5 = i4 + 1;
        int i6 = i5 + 1;
        return (((((this.f3436a[i4 + i] & 255) | ((this.f3436a[i5 + i] & 255) << 8)) | ((this.f3436a[i6 + i] & 255) << 16)) | ((this.f3436a[(i6 + 1) + i] & 255) << 24)) >>> (i2 & 7)) & ((-1) >>> (32 - i3));
    }

    public static int a(a aVar) {
        int n = aVar.n();
        switch (49152 & n) {
            case 0:
                aVar.d(6);
                return (n >> 10) & 15;
            case 16384:
                if ((n & 15360) == 0) {
                    int i = ((n >> 2) & 255) | (-256);
                    aVar.d(14);
                    return i;
                }
                int i2 = (n >> 6) & 255;
                aVar.d(10);
                return i2;
            case 32768:
                aVar.d(2);
                int n2 = aVar.n();
                aVar.d(16);
                return n2;
            default:
                aVar.d(2);
                int n3 = aVar.n() << 16;
                aVar.d(16);
                int n4 = n3 | aVar.n();
                aVar.d(16);
                return n4;
        }
    }

    private int a(f fVar) {
        if (fVar.c() == VMOpType.VM_OPREGMEM) {
            return de.innosystec.unrar.b.b.c(this.f3436a, (fVar.d() + fVar.a()) & 262143);
        }
        return de.innosystec.unrar.b.b.c(this.f3436a, fVar.d());
    }

    private int a(boolean z, byte[] bArr, int i) {
        return z ? a(bArr) ? bArr[i] : bArr[i] & 255 : a(bArr) ? de.innosystec.unrar.b.b.c(bArr, i) : de.innosystec.unrar.b.b.a(bArr, i);
    }

    private VMStandardFilters a(byte[] bArr, int i) {
        h[] hVarArr = {new h(53, -1386780537, VMStandardFilters.VMSF_E8), new h(57, 1020781950, VMStandardFilters.VMSF_E8E9), new h(FTPReply.SERVICE_NOT_READY, 929663295, VMStandardFilters.VMSF_ITANIUM), new h(29, 235276157, VMStandardFilters.VMSF_DELTA), new h(149, 472669640, VMStandardFilters.VMSF_RGB), new h(216, -1132075263, VMStandardFilters.VMSF_AUDIO), new h(40, 1186579808, VMStandardFilters.VMSF_UPCASE)};
        int a2 = de.innosystec.unrar.a.a.a(-1, bArr, 0, bArr.length) ^ (-1);
        for (int i2 = 0; i2 < hVarArr.length; i2++) {
            if (hVarArr[i2].a() == a2 && hVarArr[i2].b() == bArr.length) {
                return hVarArr[i2].c();
            }
        }
        return VMStandardFilters.VMSF_NONE;
    }

    private void a(int i, int i2, int i3, int i4) {
        int i5 = i3 / 8;
        int i6 = i3 & 7;
        int i7 = (((-1) >>> (32 - i4)) << i6) ^ (-1);
        int i8 = i2 << i6;
        for (int i9 = 0; i9 < 4; i9++) {
            byte[] bArr = this.f3436a;
            int i10 = i + i5 + i9;
            bArr[i10] = (byte) (bArr[i10] & i7);
            byte[] bArr2 = this.f3436a;
            int i11 = i + i5 + i9;
            bArr2[i11] = (byte) (bArr2[i11] | i8);
            i7 = (i7 >>> 8) | (-16777216);
            i8 >>>= 8;
        }
    }

    private void a(VMStandardFilters vMStandardFilters) {
        int i;
        int i2;
        int i3;
        byte b2;
        switch (vMStandardFilters) {
            case VMSF_E8:
            case VMSF_E8E9:
                int i4 = this.f3437b[4];
                long j = this.f3437b[6] & (-1);
                if (i4 >= 245760) {
                    return;
                }
                byte b3 = (byte) (vMStandardFilters == VMStandardFilters.VMSF_E8E9 ? -23 : -24);
                int i5 = 0;
                while (true) {
                    int i6 = i5;
                    if (i6 >= i4 - 4) {
                        return;
                    }
                    i5 = i6 + 1;
                    byte b4 = this.f3436a[i6];
                    if (b4 == -24 || b4 == b3) {
                        long j2 = i5 + j;
                        long a2 = a(false, this.f3436a, i5);
                        if (((-2147483648L) & a2) != 0) {
                            if (((j2 + a2) & (-2147483648L)) == 0) {
                                a(false, this.f3436a, i5, ((int) a2) + 16777216);
                            }
                        } else if (((a2 - 16777216) & (-2147483648L)) != 0) {
                            a(false, this.f3436a, i5, (int) (a2 - j2));
                        }
                        i5 += 4;
                    }
                }
            case VMSF_ITANIUM:
                int i7 = this.f3437b[4];
                long j3 = this.f3437b[6] & (-1);
                if (i7 >= 245760) {
                    return;
                }
                int i8 = 0;
                byte[] bArr = {4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 0, 0, 4, 4, 0, 0};
                long j4 = j3 >>> 4;
                while (true) {
                    long j5 = j4;
                    int i9 = i8;
                    if (i9 >= i7 - 21) {
                        return;
                    }
                    int i10 = (this.f3436a[i9] & 31) - 16;
                    if (i10 >= 0 && (b2 = bArr[i10]) != 0) {
                        for (int i11 = 0; i11 <= 2; i11++) {
                            if (((1 << i11) & b2) != 0) {
                                int i12 = (i11 * 41) + 5;
                                if (a(i9, i12 + 37, 4) == 5) {
                                    a(i9, ((int) (a(i9, i12 + 13, 20) - j5)) & 1048575, i12 + 13, 20);
                                }
                            }
                        }
                    }
                    i8 = i9 + 16;
                    j4 = j5 + 1;
                }
                break;
            case VMSF_DELTA:
                int i13 = this.f3437b[4] & (-1);
                int i14 = this.f3437b[0] & (-1);
                int i15 = 0;
                int i16 = (i13 * 2) & (-1);
                a(false, this.f3436a, 245792, i13);
                if (i13 < 122880) {
                    for (int i17 = 0; i17 < i14; i17++) {
                        byte b5 = 0;
                        int i18 = i13 + i17;
                        while (i18 < i16) {
                            byte[] bArr2 = this.f3436a;
                            b5 = (byte) (b5 - this.f3436a[i15]);
                            bArr2[i18] = b5;
                            i18 += i14;
                            i15++;
                        }
                    }
                    return;
                }
                return;
            case VMSF_RGB:
                int i19 = this.f3437b[4];
                int i20 = this.f3437b[0] - 3;
                int i21 = this.f3437b[1];
                int i22 = 0;
                a(false, this.f3436a, 245792, i19);
                if (i19 >= 122880 || i21 < 0) {
                    return;
                }
                int i23 = 0;
                while (i23 < 3) {
                    long j6 = 0;
                    int i24 = i22;
                    int i25 = i23;
                    while (i25 < i19) {
                        int i26 = i25 - i20;
                        if (i26 >= 3) {
                            int i27 = i26 + i19;
                            int i28 = this.f3436a[i27] & 255;
                            int i29 = this.f3436a[i27 - 3] & 255;
                            long j7 = (i28 + j6) - i29;
                            int abs = Math.abs((int) (j7 - j6));
                            int abs2 = Math.abs((int) (j7 - i28));
                            int abs3 = Math.abs((int) (j7 - i29));
                            if (abs > abs2 || abs > abs3) {
                                j6 = abs2 <= abs3 ? i28 : i29;
                            }
                        }
                        this.f3436a[i19 + i25] = (byte) (255 & r7);
                        i25 += 3;
                        j6 = 255 & (j6 - this.f3436a[i24]) & 255;
                        i24++;
                    }
                    i23++;
                    i22 = i24;
                }
                int i30 = i19 - 2;
                for (int i31 = i21; i31 < i30; i31 += 3) {
                    byte b6 = this.f3436a[i19 + i31 + 1];
                    byte[] bArr3 = this.f3436a;
                    int i32 = i19 + i31;
                    bArr3[i32] = (byte) (bArr3[i32] + b6);
                    byte[] bArr4 = this.f3436a;
                    int i33 = i19 + i31 + 2;
                    bArr4[i33] = (byte) (b6 + bArr4[i33]);
                }
                return;
            case VMSF_AUDIO:
                int i34 = this.f3437b[4];
                int i35 = this.f3437b[0];
                int i36 = 0;
                a(false, this.f3436a, 245792, i34);
                if (i34 < 122880) {
                    int i37 = 0;
                    while (i37 < i35) {
                        long[] jArr = new long[7];
                        int i38 = 0;
                        int i39 = 0;
                        int i40 = 0;
                        long j8 = 0;
                        int i41 = i37;
                        int i42 = 0;
                        int i43 = 0;
                        int i44 = 0;
                        long j9 = 0;
                        int i45 = i36;
                        while (i41 < i34) {
                            int i46 = ((int) j9) - i44;
                            int i47 = (int) j9;
                            int i48 = i45 + 1;
                            long j10 = this.f3436a[i45] & 255;
                            long j11 = (-1) & (((((((8 * j8) + (i38 * i47)) + (i39 * i46)) + (i40 * i43)) >>> 3) & 255) - j10);
                            this.f3436a[i34 + i41] = (byte) j11;
                            long j12 = (byte) (j11 - j8);
                            int i49 = ((byte) j10) << 3;
                            jArr[0] = jArr[0] + Math.abs(i49);
                            jArr[1] = jArr[1] + Math.abs(i49 - i47);
                            jArr[2] = jArr[2] + Math.abs(i49 + i47);
                            jArr[3] = jArr[3] + Math.abs(i49 - i46);
                            jArr[4] = jArr[4] + Math.abs(i49 + i46);
                            jArr[5] = jArr[5] + Math.abs(i49 - i43);
                            jArr[6] = Math.abs(i43 + i49) + jArr[6];
                            if ((i42 & 31) == 0) {
                                long j13 = jArr[0];
                                long j14 = 0;
                                jArr[0] = 0;
                                for (int i50 = 1; i50 < jArr.length; i50++) {
                                    if (jArr[i50] < j13) {
                                        j13 = jArr[i50];
                                        j14 = i50;
                                    }
                                    jArr[i50] = 0;
                                }
                                switch ((int) j14) {
                                    case 1:
                                        if (i38 >= -16) {
                                            i2 = i39;
                                            i3 = i38 - 1;
                                            i = i40;
                                            break;
                                        }
                                        break;
                                    case 2:
                                        if (i38 < 16) {
                                            i2 = i39;
                                            i3 = i38 + 1;
                                            i = i40;
                                            break;
                                        }
                                        break;
                                    case 3:
                                        if (i39 >= -16) {
                                            i2 = i39 - 1;
                                            i3 = i38;
                                            i = i40;
                                            break;
                                        }
                                        break;
                                    case 4:
                                        if (i39 < 16) {
                                            i2 = i39 + 1;
                                            i3 = i38;
                                            i = i40;
                                            break;
                                        }
                                        break;
                                    case 5:
                                        if (i40 >= -16) {
                                            i = i40 - 1;
                                            i2 = i39;
                                            i3 = i38;
                                            break;
                                        }
                                        break;
                                    case 6:
                                        if (i40 < 16) {
                                            i = i40 + 1;
                                            i2 = i39;
                                            i3 = i38;
                                            break;
                                        }
                                        break;
                                }
                            }
                            i = i40;
                            i2 = i39;
                            i3 = i38;
                            i42++;
                            i41 += i35;
                            i40 = i;
                            i39 = i2;
                            i38 = i3;
                            i43 = i46;
                            i44 = i47;
                            j9 = j12;
                            i45 = i48;
                            j8 = j11;
                        }
                        i37++;
                        i36 = i45;
                    }
                    return;
                }
                return;
            case VMSF_UPCASE:
                int i51 = this.f3437b[4];
                int i52 = 0;
                if (i51 < 122880) {
                    int i53 = i51;
                    while (i52 < i51) {
                        int i54 = i52 + 1;
                        byte b7 = this.f3436a[i52];
                        if (b7 == 2) {
                            i52 = i54 + 1;
                            b7 = this.f3436a[i54];
                            if (b7 != 2) {
                                b7 = (byte) (b7 - 32);
                            }
                        } else {
                            i52 = i54;
                        }
                        this.f3436a[i53] = b7;
                        i53++;
                    }
                    a(false, this.f3436a, 245788, i53 - i51);
                    a(false, this.f3436a, 245792, i51);
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void a(f fVar, boolean z) {
        int n = n();
        if ((32768 & n) != 0) {
            fVar.a(VMOpType.VM_OPREG);
            fVar.b((n >> 12) & 7);
            fVar.c(fVar.b());
            d(4);
            return;
        }
        if ((49152 & n) == 0) {
            fVar.a(VMOpType.VM_OPINT);
            if (z) {
                fVar.b((n >> 6) & 255);
                d(10);
                return;
            } else {
                d(2);
                fVar.b(a(this));
                return;
            }
        }
        fVar.a(VMOpType.VM_OPREGMEM);
        if ((n & 8192) == 0) {
            fVar.b((n >> 10) & 7);
            fVar.c(fVar.b());
            fVar.a(0);
            d(6);
            return;
        }
        if ((n & 4096) == 0) {
            fVar.b((n >> 9) & 7);
            fVar.c(fVar.b());
            d(7);
        } else {
            fVar.b(0);
            d(4);
        }
        fVar.a(a(this));
    }

    private void a(boolean z, byte[] bArr, int i, int i2) {
        if (z) {
            if (a(bArr)) {
                bArr[i] = (byte) i2;
                return;
            } else {
                bArr[i] = (byte) ((bArr[i] & 0) | ((byte) (i2 & 255)));
                return;
            }
        }
        if (a(bArr)) {
            de.innosystec.unrar.b.b.c(bArr, i, i2);
        } else {
            de.innosystec.unrar.b.b.a(bArr, i, i2);
        }
    }

    private boolean a(int i) {
        if (i >= this.e) {
            return true;
        }
        int i2 = this.d - 1;
        this.d = i2;
        if (i2 <= 0) {
            return false;
        }
        this.f = i;
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x002e. Please report as an issue. */
    private boolean a(List<e> list, int i) {
        int i2;
        int i3;
        int flag;
        int i4;
        int flag2;
        this.d = 25000000;
        this.e = i;
        this.f = 0;
        while (true) {
            e eVar = list.get(this.f);
            int a2 = a(eVar.b());
            int a3 = a(eVar.c());
            switch (c.f3438a[eVar.d().ordinal()]) {
                case 1:
                    a(eVar.a(), this.f3436a, a2, a(eVar.a(), this.f3436a, a3));
                    this.f++;
                    this.d--;
                case 2:
                    a(true, this.f3436a, a2, a(true, this.f3436a, a3));
                    this.f++;
                    this.d--;
                case 3:
                    a(false, this.f3436a, a2, a(false, this.f3436a, a3));
                    this.f++;
                    this.d--;
                case 4:
                    int a4 = a(eVar.a(), this.f3436a, a2);
                    int a5 = a4 - a(eVar.a(), this.f3436a, a3);
                    if (a5 == 0) {
                        this.c = VMFlags.VM_FZ.getFlag();
                    } else {
                        this.c = a5 > a4 ? 1 : (a5 & VMFlags.VM_FS.getFlag()) | 0;
                    }
                    this.f++;
                    this.d--;
                case 5:
                    int a6 = a(true, this.f3436a, a2);
                    int a7 = a6 - a(true, this.f3436a, a3);
                    if (a7 == 0) {
                        this.c = VMFlags.VM_FZ.getFlag();
                    } else {
                        this.c = a7 > a6 ? 1 : (VMFlags.VM_FS.getFlag() & a7) | 0;
                    }
                    this.f++;
                    this.d--;
                case 6:
                    int a8 = a(false, this.f3436a, a2);
                    int a9 = a8 - a(false, this.f3436a, a3);
                    if (a9 == 0) {
                        this.c = VMFlags.VM_FZ.getFlag();
                    } else {
                        this.c = a9 > a8 ? 1 : (VMFlags.VM_FS.getFlag() & a9) | 0;
                    }
                    this.f++;
                    this.d--;
                case 7:
                    int a10 = a(eVar.a(), this.f3436a, a2);
                    int a11 = (int) ((a(eVar.a(), this.f3436a, a3) + a10) & (-1));
                    if (eVar.a()) {
                        int i5 = a11 & 255;
                        if (i5 < a10) {
                            flag2 = 1;
                        } else {
                            flag2 = (i5 == 0 ? VMFlags.VM_FZ.getFlag() : (i5 & 128) != 0 ? VMFlags.VM_FS.getFlag() : 0) | 0;
                        }
                        this.c = flag2;
                        i4 = i5;
                    } else {
                        if (a11 < a10) {
                            flag = 1;
                        } else {
                            flag = (a11 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & a11) | 0;
                        }
                        this.c = flag;
                        i4 = a11;
                    }
                    a(eVar.a(), this.f3436a, a2, i4);
                    this.f++;
                    this.d--;
                case 8:
                    a(true, this.f3436a, a2, (int) (a(true, this.f3436a, a2) & ((-1) + a(true, this.f3436a, a3)) & (-1)));
                    this.f++;
                    this.d--;
                case 9:
                    a(false, this.f3436a, a2, (int) (a(false, this.f3436a, a2) & ((-1) + a(false, this.f3436a, a3)) & (-1)));
                    this.f++;
                    this.d--;
                case 10:
                    int a12 = a(eVar.a(), this.f3436a, a2);
                    int a13 = (int) (a12 & ((-1) - a(eVar.a(), this.f3436a, a3)) & (-1));
                    this.c = a13 == 0 ? VMFlags.VM_FZ.getFlag() : a13 > a12 ? 1 : (VMFlags.VM_FS.getFlag() & a13) | 0;
                    a(eVar.a(), this.f3436a, a2, a13);
                    this.f++;
                    this.d--;
                case 11:
                    a(true, this.f3436a, a2, (int) (a(true, this.f3436a, a2) & ((-1) - a(true, this.f3436a, a3)) & (-1)));
                    this.f++;
                    this.d--;
                case 12:
                    a(false, this.f3436a, a2, (int) (a(false, this.f3436a, a2) & ((-1) - a(false, this.f3436a, a3)) & (-1)));
                    this.f++;
                    this.d--;
                case 13:
                    if ((this.c & VMFlags.VM_FZ.getFlag()) != 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case 14:
                    if ((this.c & VMFlags.VM_FZ.getFlag()) == 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case 15:
                    int a14 = (int) (a(eVar.a(), this.f3436a, a2) & 0);
                    if (eVar.a()) {
                        a14 &= 255;
                    }
                    a(eVar.a(), this.f3436a, a2, a14);
                    this.c = a14 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & a14;
                    this.f++;
                    this.d--;
                case 16:
                    a(true, this.f3436a, a2, (int) (a(true, this.f3436a, a2) & 0));
                    this.f++;
                    this.d--;
                case 17:
                    a(false, this.f3436a, a2, (int) (a(false, this.f3436a, a2) & 0));
                    this.f++;
                    this.d--;
                case 18:
                    int a15 = (int) (a(eVar.a(), this.f3436a, a2) & (-2));
                    a(eVar.a(), this.f3436a, a2, a15);
                    this.c = a15 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & a15;
                    this.f++;
                    this.d--;
                case 19:
                    a(true, this.f3436a, a2, (int) (a(true, this.f3436a, a2) & (-2)));
                    this.f++;
                    this.d--;
                case 20:
                    a(false, this.f3436a, a2, (int) (a(false, this.f3436a, a2) & (-2)));
                    this.f++;
                    this.d--;
                case 21:
                    a(a(false, this.f3436a, a2));
                case 22:
                    int a16 = a(eVar.a(), this.f3436a, a2) ^ a(eVar.a(), this.f3436a, a3);
                    this.c = a16 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & a16;
                    a(eVar.a(), this.f3436a, a2, a16);
                    this.f++;
                    this.d--;
                case 23:
                    int a17 = a(eVar.a(), this.f3436a, a2) & a(eVar.a(), this.f3436a, a3);
                    this.c = a17 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & a17;
                    a(eVar.a(), this.f3436a, a2, a17);
                    this.f++;
                    this.d--;
                case 24:
                    int a18 = a(eVar.a(), this.f3436a, a2) | a(eVar.a(), this.f3436a, a3);
                    this.c = a18 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & a18;
                    a(eVar.a(), this.f3436a, a2, a18);
                    this.f++;
                    this.d--;
                case 25:
                    int a19 = a(eVar.a(), this.f3436a, a3) & a(eVar.a(), this.f3436a, a2);
                    this.c = a19 == 0 ? VMFlags.VM_FZ.getFlag() : a19 & VMFlags.VM_FS.getFlag();
                    this.f++;
                    this.d--;
                case FTPCommand.LIST /* 26 */:
                    if ((this.c & VMFlags.VM_FS.getFlag()) != 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case 27:
                    if ((this.c & VMFlags.VM_FS.getFlag()) == 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case 28:
                    if ((this.c & VMFlags.VM_FC.getFlag()) != 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case 29:
                    if ((this.c & (VMFlags.VM_FC.getFlag() | VMFlags.VM_FZ.getFlag())) != 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case 30:
                    if ((this.c & (VMFlags.VM_FC.getFlag() | VMFlags.VM_FZ.getFlag())) == 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case FTPCommand.HELP /* 31 */:
                    if ((this.c & VMFlags.VM_FC.getFlag()) == 0) {
                        a(a(false, this.f3436a, a2));
                    } else {
                        this.f++;
                        this.d--;
                    }
                case 32:
                    this.f3437b[7] = r0[7] - 4;
                    a(false, this.f3436a, this.f3437b[7] & 262143, a(false, this.f3436a, a2));
                    this.f++;
                    this.d--;
                case 33:
                    a(false, this.f3436a, a2, a(false, this.f3436a, this.f3437b[7] & 262143));
                    int[] iArr = this.f3437b;
                    iArr[7] = iArr[7] + 4;
                    this.f++;
                    this.d--;
                case 34:
                    this.f3437b[7] = r0[7] - 4;
                    a(false, this.f3436a, this.f3437b[7] & 262143, this.f + 1);
                    a(a(false, this.f3436a, a2));
                case 35:
                    a(eVar.a(), this.f3436a, a2, a(eVar.a(), this.f3436a, a2) ^ (-1));
                    this.f++;
                    this.d--;
                case FTPCommand.EPSV /* 36 */:
                    int a20 = a(eVar.a(), this.f3436a, a2);
                    int a21 = a(eVar.a(), this.f3436a, a3);
                    int i6 = a20 << a21;
                    this.c = (((a20 << (a21 + (-1))) & Integer.MIN_VALUE) != 0 ? VMFlags.VM_FC.getFlag() : 0) | (i6 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & i6);
                    a(eVar.a(), this.f3436a, a2, i6);
                    this.f++;
                    this.d--;
                case FTPCommand.EPRT /* 37 */:
                    int a22 = a(eVar.a(), this.f3436a, a2);
                    int a23 = a(eVar.a(), this.f3436a, a3);
                    int i7 = a22 >>> a23;
                    this.c = (i7 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & i7) | ((a22 >>> (a23 - 1)) & VMFlags.VM_FC.getFlag());
                    a(eVar.a(), this.f3436a, a2, i7);
                    this.f++;
                    this.d--;
                case FTPCommand.MLSD /* 38 */:
                    int a24 = a(eVar.a(), this.f3436a, a2);
                    int a25 = a(eVar.a(), this.f3436a, a3);
                    int i8 = a24 >> a25;
                    this.c = (i8 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & i8) | ((a24 >> (a25 - 1)) & VMFlags.VM_FC.getFlag());
                    a(eVar.a(), this.f3436a, a2, i8);
                    this.f++;
                    this.d--;
                case FTPCommand.MLST /* 39 */:
                    int i9 = -a(eVar.a(), this.f3436a, a2);
                    this.c = i9 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FC.getFlag() | (VMFlags.VM_FS.getFlag() & i9);
                    a(eVar.a(), this.f3436a, a2, i9);
                    this.f++;
                    this.d--;
                case 40:
                    a(true, this.f3436a, a2, -a(true, this.f3436a, a2));
                    this.f++;
                    this.d--;
                case 41:
                    a(false, this.f3436a, a2, -a(false, this.f3436a, a2));
                    this.f++;
                    this.d--;
                case 42:
                    int i10 = 0;
                    int i11 = this.f3437b[7];
                    while (true) {
                        i11 -= 4;
                        if (i10 < 8) {
                            a(false, this.f3436a, 262143 & i11, this.f3437b[i10]);
                            i10++;
                        } else {
                            this.f3437b[7] = r0[7] - 32;
                            this.f++;
                            this.d--;
                        }
                    }
                case 43:
                    int i12 = 0;
                    int i13 = this.f3437b[7];
                    while (i12 < 8) {
                        this.f3437b[7 - i12] = a(false, this.f3436a, 262143 & i13);
                        i12++;
                        i13 += 4;
                    }
                    this.f++;
                    this.d--;
                case 44:
                    this.f3437b[7] = r0[7] - 4;
                    a(false, this.f3436a, this.f3437b[7] & 262143, this.c);
                    this.f++;
                    this.d--;
                case 45:
                    this.c = a(false, this.f3436a, this.f3437b[7] & 262143);
                    int[] iArr2 = this.f3437b;
                    iArr2[7] = iArr2[7] + 4;
                    this.f++;
                    this.d--;
                case 46:
                    a(false, this.f3436a, a2, a(true, this.f3436a, a3));
                    this.f++;
                    this.d--;
                case 47:
                    a(false, this.f3436a, a2, (int) ((byte) a(true, this.f3436a, a3)));
                    this.f++;
                    this.d--;
                case 48:
                    int a26 = a(eVar.a(), this.f3436a, a2);
                    a(eVar.a(), this.f3436a, a2, a(eVar.a(), this.f3436a, a3));
                    a(eVar.a(), this.f3436a, a3, a26);
                    this.f++;
                    this.d--;
                case 49:
                    a(eVar.a(), this.f3436a, a2, (int) ((a(eVar.a(), this.f3436a, a3) * (-1)) & a(eVar.a(), this.f3436a, a2) & (-1) & (-1)));
                    this.f++;
                    this.d--;
                case 50:
                    int a27 = a(eVar.a(), this.f3436a, a3);
                    if (a27 != 0) {
                        a(eVar.a(), this.f3436a, a2, a(eVar.a(), this.f3436a, a2) / a27);
                    }
                    this.f++;
                    this.d--;
                case 51:
                    int a28 = a(eVar.a(), this.f3436a, a2);
                    int flag3 = VMFlags.VM_FC.getFlag() & this.c;
                    int a29 = (int) ((a(eVar.a(), this.f3436a, a3) - 1) & a28 & ((-1) + flag3) & (-1));
                    int i14 = eVar.a() ? a29 & 255 : a29;
                    if (i14 < a28 || (i14 == a28 && flag3 != 0)) {
                        i3 = 1;
                    } else {
                        i3 = (i14 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & i14) | 0;
                    }
                    this.c = i3;
                    a(eVar.a(), this.f3436a, a2, i14);
                    this.f++;
                    this.d--;
                case 52:
                    int a30 = a(eVar.a(), this.f3436a, a2);
                    int flag4 = VMFlags.VM_FC.getFlag() & this.c;
                    int a31 = (int) (((-1) - a(eVar.a(), this.f3436a, a3)) & a30 & ((-1) - flag4) & (-1));
                    int i15 = eVar.a() ? a31 & 255 : a31;
                    if (i15 > a30 || (i15 == a30 && flag4 != 0)) {
                        i2 = 1;
                    } else {
                        i2 = (i15 == 0 ? VMFlags.VM_FZ.getFlag() : VMFlags.VM_FS.getFlag() & i15) | 0;
                    }
                    this.c = i2;
                    a(eVar.a(), this.f3436a, a2, i15);
                    this.f++;
                    this.d--;
                case 53:
                    break;
                case 54:
                    a(VMStandardFilters.findFilter(eVar.b().b()));
                    this.f++;
                    this.d--;
                default:
                    this.f++;
                    this.d--;
            }
            if (this.f3437b[7] >= 262144) {
                return true;
            }
            a(a(false, this.f3436a, this.f3437b[7] & 262143));
            int[] iArr3 = this.f3437b;
            iArr3[7] = iArr3[7] + 4;
        }
    }

    private boolean a(byte[] bArr) {
        return this.f3436a == bArr;
    }

    private void b(g gVar) {
        boolean z;
        List<e> b2 = gVar.b();
        for (e eVar : b2) {
            switch (eVar.d()) {
                case VM_MOV:
                    eVar.a(eVar.a() ? VMCommands.VM_MOVB : VMCommands.VM_MOVD);
                    break;
                case VM_MOVB:
                case VM_MOVD:
                default:
                    if ((d.f3440a[eVar.d().getVMCommand()] & 64) != 0) {
                        int indexOf = b2.indexOf(eVar) + 1;
                        while (true) {
                            int i = indexOf;
                            if (i < b2.size()) {
                                byte b3 = d.f3440a[b2.get(i).d().getVMCommand()];
                                if ((b3 & 56) != 0) {
                                    z = true;
                                } else if ((b3 & 64) != 0) {
                                    z = false;
                                } else {
                                    indexOf = i + 1;
                                }
                            } else {
                                z = false;
                            }
                        }
                        if (z) {
                            break;
                        } else {
                            switch (c.f3438a[eVar.d().ordinal()]) {
                                case 7:
                                    eVar.a(eVar.a() ? VMCommands.VM_ADDB : VMCommands.VM_ADDD);
                                    break;
                                case 10:
                                    eVar.a(eVar.a() ? VMCommands.VM_SUBB : VMCommands.VM_SUBD);
                                    break;
                                case 15:
                                    eVar.a(eVar.a() ? VMCommands.VM_INCB : VMCommands.VM_INCD);
                                    break;
                                case 18:
                                    eVar.a(eVar.a() ? VMCommands.VM_DECB : VMCommands.VM_DECD);
                                    break;
                                case FTPCommand.MLST /* 39 */:
                                    eVar.a(eVar.a() ? VMCommands.VM_NEGB : VMCommands.VM_NEGD);
                                    break;
                            }
                        }
                    } else {
                        break;
                    }
                case VM_CMP:
                    eVar.a(eVar.a() ? VMCommands.VM_CMPB : VMCommands.VM_CMPD);
                    break;
            }
        }
    }

    public void a() {
        if (this.f3436a == null) {
            this.f3436a = new byte[262148];
        }
    }

    public void a(int i, byte[] bArr, int i2, int i3) {
        if (i < 262144) {
            for (int i4 = 0; i4 < Math.min(bArr.length - i2, i3) && 262144 - i >= i4; i4++) {
                this.f3436a[i + i4] = bArr[i2 + i4];
            }
        }
    }

    public void a(g gVar) {
        for (int i = 0; i < gVar.g().length; i++) {
            this.f3437b[i] = gVar.g()[i];
        }
        long min = Math.min(gVar.f().size(), 8192) & (-1);
        if (min != 0) {
            for (int i2 = 0; i2 < min; i2++) {
                this.f3436a[245760 + i2] = gVar.f().get(i2).byteValue();
            }
        }
        long min2 = Math.min(gVar.h().size(), 8192 - min) & (-1);
        if (min2 != 0) {
            for (int i3 = 0; i3 < min2; i3++) {
                this.f3436a[((int) min) + 245760 + i3] = gVar.h().get(i3).byteValue();
            }
        }
        this.f3437b[7] = 262144;
        this.c = 0;
        List<e> a2 = gVar.a().size() != 0 ? gVar.a() : gVar.b();
        if (!a(a2, gVar.c())) {
            a2.get(0).a(VMCommands.VM_RET);
        }
        int a3 = a(false, this.f3436a, 245792) & 262143;
        int a4 = a(false, this.f3436a, 245788) & 262143;
        if (a3 + a4 >= 262144) {
            a4 = 0;
            a3 = 0;
        }
        gVar.b(a3);
        gVar.c(a4);
        gVar.f().clear();
        int min3 = Math.min(a(false, this.f3436a, 245808), 8128);
        if (min3 != 0) {
            gVar.f().setSize(min3 + 64);
            for (int i4 = 0; i4 < min3 + 64; i4++) {
                gVar.f().set(i4, Byte.valueOf(this.f3436a[245760 + i4]));
            }
        }
    }

    public void a(Vector<Byte> vector, int i, int i2) {
        vector.set(i + 0, Byte.valueOf((byte) (i2 & 255)));
        vector.set(i + 1, Byte.valueOf((byte) ((i2 >>> 8) & 255)));
        vector.set(i + 2, Byte.valueOf((byte) ((i2 >>> 16) & 255)));
        vector.set(i + 3, Byte.valueOf((byte) ((i2 >>> 24) & 255)));
    }

    public void a(byte[] bArr, int i, g gVar) {
        int c;
        l();
        int min = Math.min(32768, i);
        for (int i2 = 0; i2 < min; i2++) {
            byte[] bArr2 = this.am;
            bArr2[i2] = (byte) (bArr2[i2] | bArr[i2]);
        }
        byte b2 = 0;
        for (int i3 = 1; i3 < i; i3++) {
            b2 = (byte) (b2 ^ bArr[i3]);
        }
        d(8);
        gVar.a(0);
        if (b2 == bArr[0]) {
            VMStandardFilters a2 = a(bArr, i);
            if (a2 != VMStandardFilters.VMSF_NONE) {
                e eVar = new e();
                eVar.a(VMCommands.VM_STANDARD);
                eVar.b().b(a2.getFilter());
                eVar.b().a(VMOpType.VM_OPNONE);
                eVar.c().a(VMOpType.VM_OPNONE);
                gVar.b().add(eVar);
                gVar.a(gVar.c() + 1);
                i = 0;
            }
            int n = n();
            d(1);
            if ((n & 32768) != 0) {
                long a3 = a(this) & 0;
                for (int i4 = 0; this.ak < i && i4 < a3; i4++) {
                    gVar.h().add(Byte.valueOf((byte) (n() >> 8)));
                    d(8);
                }
            }
            while (this.ak < i) {
                e eVar2 = new e();
                int n2 = n();
                if ((n2 & 32768) == 0) {
                    eVar2.a(VMCommands.findVMCommand(n2 >> 12));
                    d(4);
                } else {
                    eVar2.a(VMCommands.findVMCommand((n2 >> 10) - 24));
                    d(6);
                }
                if ((d.f3440a[eVar2.d().getVMCommand()] & 4) != 0) {
                    eVar2.a((n() >> 15) == 1);
                    d(1);
                } else {
                    eVar2.a(false);
                }
                eVar2.b().a(VMOpType.VM_OPNONE);
                eVar2.c().a(VMOpType.VM_OPNONE);
                int i5 = d.f3440a[eVar2.d().getVMCommand()] & 3;
                if (i5 > 0) {
                    a(eVar2.b(), eVar2.a());
                    if (i5 == 2) {
                        a(eVar2.c(), eVar2.a());
                    } else if (eVar2.b().c() == VMOpType.VM_OPINT && (d.f3440a[eVar2.d().getVMCommand()] & 24) != 0) {
                        int b3 = eVar2.b().b();
                        if (b3 >= 256) {
                            c = b3 - 256;
                        } else {
                            if (b3 >= 136) {
                                b3 -= 264;
                            } else if (b3 >= 16) {
                                b3 -= 8;
                            } else if (b3 >= 8) {
                                b3 -= 16;
                            }
                            c = b3 + gVar.c();
                        }
                        eVar2.b().b(c);
                    }
                }
                gVar.a(gVar.c() + 1);
                gVar.b().add(eVar2);
            }
        }
        e eVar3 = new e();
        eVar3.a(VMCommands.VM_RET);
        eVar3.b().a(VMOpType.VM_OPNONE);
        eVar3.c().a(VMOpType.VM_OPNONE);
        gVar.b().add(eVar3);
        gVar.a(gVar.c() + 1);
        if (i != 0) {
            b(gVar);
        }
    }

    public byte[] b() {
        return this.f3436a;
    }
}
