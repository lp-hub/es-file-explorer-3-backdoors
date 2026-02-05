package com.jcraft.jsch;

/* loaded from: classes.dex */
public class Buffer {

    /* renamed from: a, reason: collision with root package name */
    final byte[] f3289a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f3290b;
    int c;
    int d;

    public Buffer() {
        this(20480);
    }

    public Buffer(int i) {
        this.f3289a = new byte[4];
        this.f3290b = new byte[i];
        this.c = 0;
        this.d = 0;
    }

    public Buffer(byte[] bArr) {
        this.f3289a = new byte[4];
        this.f3290b = bArr;
        this.c = 0;
        this.d = 0;
    }

    public int a() {
        return this.c - this.d;
    }

    public void a(byte b2) {
        byte[] bArr = this.f3290b;
        int i = this.c;
        this.c = i + 1;
        bArr[i] = b2;
    }

    public void a(int i) {
        this.f3289a[0] = (byte) (i >>> 24);
        this.f3289a[1] = (byte) (i >>> 16);
        this.f3289a[2] = (byte) (i >>> 8);
        this.f3289a[3] = (byte) i;
        System.arraycopy(this.f3289a, 0, this.f3290b, this.c, 4);
        this.c += 4;
    }

    public void a(long j) {
        this.f3289a[0] = (byte) (j >>> 56);
        this.f3289a[1] = (byte) (j >>> 48);
        this.f3289a[2] = (byte) (j >>> 40);
        this.f3289a[3] = (byte) (j >>> 32);
        System.arraycopy(this.f3289a, 0, this.f3290b, this.c, 4);
        this.f3289a[0] = (byte) (j >>> 24);
        this.f3289a[1] = (byte) (j >>> 16);
        this.f3289a[2] = (byte) (j >>> 8);
        this.f3289a[3] = (byte) j;
        System.arraycopy(this.f3289a, 0, this.f3290b, this.c + 4, 4);
        this.c += 8;
    }

    public void a(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }

    public void a(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.f3290b, this.c, i2);
        this.c += i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a(int[] iArr, int[] iArr2) {
        int c = c();
        iArr[0] = d(c);
        iArr2[0] = c;
        return this.f3290b;
    }

    public long b() {
        return ((c() & 4294967295L) << 32) | (c() & 4294967295L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.c += i;
    }

    public void b(byte[] bArr) {
        b(bArr, 0, bArr.length);
    }

    public void b(byte[] bArr, int i, int i2) {
        a(i2);
        a(bArr, i, i2);
    }

    public int c() {
        return ((e() << 16) & (-65536)) | (e() & 65535);
    }

    public void c(int i) {
        this.d = i;
    }

    public void c(byte[] bArr) {
        int length = bArr.length;
        if ((bArr[0] & 128) != 0) {
            a(length + 1);
            a((byte) 0);
        } else {
            a(length);
        }
        a(bArr);
    }

    void c(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f3290b, this.d, bArr, i, i2);
        this.d += i2;
    }

    public int d(int i) {
        int i2 = this.d;
        this.d += i;
        return i2;
    }

    public long d() {
        return (((((f() << 8) & 65280) | (f() & 255)) << 16) & (-65536)) | ((((f() << 8) & 65280) | (f() & 255)) & 65535);
    }

    public void d(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return ((f() << 8) & 65280) | (f() & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i) {
        if (this.f3290b.length < this.c + i) {
            byte[] bArr = new byte[this.f3290b.length * 2];
            System.arraycopy(this.f3290b, 0, bArr, 0, this.c);
            this.f3290b = bArr;
        }
    }

    public int f() {
        byte[] bArr = this.f3290b;
        int i = this.d;
        this.d = i + 1;
        return bArr[i] & 255;
    }

    public byte[] g() {
        int c = c();
        if (c < 0 || c > 8192) {
            c = 8192;
        }
        byte[] bArr = new byte[c];
        c(bArr, 0, c);
        return bArr;
    }

    public byte[] h() {
        int c = (c() + 7) / 8;
        byte[] bArr = new byte[c];
        c(bArr, 0, c);
        if ((bArr[0] & 128) == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[bArr.length + 1];
        bArr2[0] = 0;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        return bArr2;
    }

    public byte[] i() {
        int c = c();
        if (c < 0 || c > 262144) {
            c = 262144;
        }
        byte[] bArr = new byte[c];
        c(bArr, 0, c);
        return bArr;
    }

    public void j() {
        this.c = 0;
        this.d = 0;
    }

    public void k() {
        if (this.d == 0) {
            return;
        }
        System.arraycopy(this.f3290b, this.d, this.f3290b, 0, this.c - this.d);
        this.c -= this.d;
        this.d = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.d = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte m() {
        return this.f3290b[5];
    }
}
