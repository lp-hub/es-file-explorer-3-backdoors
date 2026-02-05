package org.bouncycastle.crypto.a;

/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: a, reason: collision with root package name */
    private int f3455a;

    /* renamed from: b, reason: collision with root package name */
    private int f3456b;
    private int c;
    private int d;
    private int e;
    private int[] f = new int[80];
    private int g;

    public b() {
        c();
    }

    private int a(int i, int i2, int i3) {
        return (i & i2) | ((i ^ (-1)) & i3);
    }

    private int b(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    private int c(int i, int i2, int i3) {
        return (i & i2) | (i & i3) | (i2 & i3);
    }

    @Override // org.bouncycastle.crypto.c
    public int a(byte[] bArr, int i) {
        e();
        org.bouncycastle.crypto.g.a.a(this.f3455a, bArr, i);
        org.bouncycastle.crypto.g.a.a(this.f3456b, bArr, i + 4);
        org.bouncycastle.crypto.g.a.a(this.c, bArr, i + 8);
        org.bouncycastle.crypto.g.a.a(this.d, bArr, i + 12);
        org.bouncycastle.crypto.g.a.a(this.e, bArr, i + 16);
        c();
        return 20;
    }

    @Override // org.bouncycastle.crypto.c
    public String a() {
        return "SHA-1";
    }

    @Override // org.bouncycastle.crypto.a.a
    protected void a(long j) {
        if (this.g > 14) {
            f();
        }
        this.f[14] = (int) (j >>> 32);
        this.f[15] = (int) ((-1) & j);
    }

    @Override // org.bouncycastle.crypto.c
    public int b() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.a.a
    protected void b(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = (bArr[i] << 24) | ((bArr[i2] & 255) << 16);
        int i4 = i2 + 1;
        this.f[this.g] = i3 | ((bArr[i4] & 255) << 8) | (bArr[i4 + 1] & 255);
        int i5 = this.g + 1;
        this.g = i5;
        if (i5 == 16) {
            f();
        }
    }

    @Override // org.bouncycastle.crypto.a.a, org.bouncycastle.crypto.c
    public void c() {
        super.c();
        this.f3455a = 1732584193;
        this.f3456b = -271733879;
        this.c = -1732584194;
        this.d = 271733878;
        this.e = -1009589776;
        this.g = 0;
        for (int i = 0; i != this.f.length; i++) {
            this.f[i] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.a.a
    protected void f() {
        for (int i = 16; i < 80; i++) {
            int i2 = ((this.f[i - 3] ^ this.f[i - 8]) ^ this.f[i - 14]) ^ this.f[i - 16];
            this.f[i] = (i2 >>> 31) | (i2 << 1);
        }
        int i3 = this.f3455a;
        int i4 = this.f3456b;
        int i5 = this.c;
        int i6 = this.d;
        int i7 = this.e;
        int i8 = 0;
        for (int i9 = 0; i9 < 4; i9++) {
            int i10 = i8 + 1;
            int a2 = this.f[i8] + ((i3 << 5) | (i3 >>> 27)) + a(i4, i5, i6) + 1518500249 + i7;
            int i11 = (i4 >>> 2) | (i4 << 30);
            int i12 = i10 + 1;
            int a3 = i6 + ((a2 << 5) | (a2 >>> 27)) + a(i3, i11, i5) + this.f[i10] + 1518500249;
            int i13 = (i3 >>> 2) | (i3 << 30);
            int i14 = i12 + 1;
            int a4 = i5 + ((a3 << 5) | (a3 >>> 27)) + a(a2, i13, i11) + this.f[i12] + 1518500249;
            i7 = (a2 << 30) | (a2 >>> 2);
            int i15 = i14 + 1;
            i4 = i11 + ((a4 << 5) | (a4 >>> 27)) + a(a3, i7, i13) + this.f[i14] + 1518500249;
            i6 = (a3 >>> 2) | (a3 << 30);
            i8 = i15 + 1;
            i3 = i13 + a(a4, i6, i7) + ((i4 << 5) | (i4 >>> 27)) + this.f[i15] + 1518500249;
            i5 = (a4 >>> 2) | (a4 << 30);
        }
        for (int i16 = 0; i16 < 4; i16++) {
            int i17 = i8 + 1;
            int b2 = this.f[i8] + ((i3 << 5) | (i3 >>> 27)) + b(i4, i5, i6) + 1859775393 + i7;
            int i18 = (i4 >>> 2) | (i4 << 30);
            int i19 = i17 + 1;
            int b3 = i6 + ((b2 << 5) | (b2 >>> 27)) + b(i3, i18, i5) + this.f[i17] + 1859775393;
            int i20 = (i3 >>> 2) | (i3 << 30);
            int i21 = i19 + 1;
            int b4 = i5 + ((b3 << 5) | (b3 >>> 27)) + b(b2, i20, i18) + this.f[i19] + 1859775393;
            i7 = (b2 << 30) | (b2 >>> 2);
            int i22 = i21 + 1;
            i4 = i18 + ((b4 << 5) | (b4 >>> 27)) + b(b3, i7, i20) + this.f[i21] + 1859775393;
            i6 = (b3 >>> 2) | (b3 << 30);
            i8 = i22 + 1;
            i3 = i20 + b(b4, i6, i7) + ((i4 << 5) | (i4 >>> 27)) + this.f[i22] + 1859775393;
            i5 = (b4 >>> 2) | (b4 << 30);
        }
        for (int i23 = 0; i23 < 4; i23++) {
            int i24 = i8 + 1;
            int c = ((this.f[i8] + (((i3 << 5) | (i3 >>> 27)) + c(i4, i5, i6))) - 1894007588) + i7;
            int c2 = i6 + (((((c << 5) | (c >>> 27)) + c(i3, r5, i5)) + this.f[i24]) - 1894007588);
            int c3 = i5 + (((((c2 << 5) | (c2 >>> 27)) + c(c, r6, r5)) + this.f[r8]) - 1894007588);
            i7 = (c << 30) | (c >>> 2);
            i4 = ((i4 >>> 2) | (i4 << 30)) + (((((c3 << 5) | (c3 >>> 27)) + c(c2, i7, r6)) + this.f[r9]) - 1894007588);
            i6 = (c2 >>> 2) | (c2 << 30);
            int c4 = c(c3, i6, i7) + ((i4 << 5) | (i4 >>> 27));
            i8 = i24 + 1 + 1 + 1 + 1;
            i3 = ((i3 >>> 2) | (i3 << 30)) + ((c4 + this.f[r8]) - 1894007588);
            i5 = (c3 >>> 2) | (c3 << 30);
        }
        for (int i25 = 0; i25 <= 3; i25++) {
            int i26 = i8 + 1;
            int b5 = ((this.f[i8] + (((i3 << 5) | (i3 >>> 27)) + b(i4, i5, i6))) - 899497514) + i7;
            int b6 = i6 + (((((b5 << 5) | (b5 >>> 27)) + b(i3, r5, i5)) + this.f[i26]) - 899497514);
            int b7 = i5 + (((((b6 << 5) | (b6 >>> 27)) + b(b5, r6, r5)) + this.f[r8]) - 899497514);
            i7 = (b5 << 30) | (b5 >>> 2);
            i4 = ((i4 >>> 2) | (i4 << 30)) + (((((b7 << 5) | (b7 >>> 27)) + b(b6, i7, r6)) + this.f[r9]) - 899497514);
            i6 = (b6 >>> 2) | (b6 << 30);
            int b8 = b(b7, i6, i7) + ((i4 << 5) | (i4 >>> 27));
            i8 = i26 + 1 + 1 + 1 + 1;
            i3 = ((i3 >>> 2) | (i3 << 30)) + ((b8 + this.f[r8]) - 899497514);
            i5 = (b7 >>> 2) | (b7 << 30);
        }
        this.f3455a += i3;
        this.f3456b += i4;
        this.c += i5;
        this.d += i6;
        this.e += i7;
        this.g = 0;
        for (int i27 = 0; i27 < 16; i27++) {
            this.f[i27] = 0;
        }
    }
}
