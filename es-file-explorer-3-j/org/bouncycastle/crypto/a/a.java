package org.bouncycastle.crypto.a;

import org.bouncycastle.crypto.d;

/* loaded from: classes.dex */
public abstract class a implements d {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f3453a = new byte[4];

    /* renamed from: b, reason: collision with root package name */
    private int f3454b = 0;
    private long c;

    public void a(byte b2) {
        byte[] bArr = this.f3453a;
        int i = this.f3454b;
        this.f3454b = i + 1;
        bArr[i] = b2;
        if (this.f3454b == this.f3453a.length) {
            b(this.f3453a, 0);
            this.f3454b = 0;
        }
        this.c++;
    }

    protected abstract void a(long j);

    @Override // org.bouncycastle.crypto.c
    public void a(byte[] bArr, int i, int i2) {
        while (this.f3454b != 0 && i2 > 0) {
            a(bArr[i]);
            i++;
            i2--;
        }
        while (i2 > this.f3453a.length) {
            b(bArr, i);
            i += this.f3453a.length;
            i2 -= this.f3453a.length;
            this.c += this.f3453a.length;
        }
        while (i2 > 0) {
            a(bArr[i]);
            i++;
            i2--;
        }
    }

    protected abstract void b(byte[] bArr, int i);

    @Override // org.bouncycastle.crypto.c
    public void c() {
        this.c = 0L;
        this.f3454b = 0;
        for (int i = 0; i < this.f3453a.length; i++) {
            this.f3453a[i] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.d
    public int d() {
        return 64;
    }

    public void e() {
        long j = this.c << 3;
        a(Byte.MIN_VALUE);
        while (this.f3454b != 0) {
            a((byte) 0);
        }
        a(j);
        f();
    }

    protected abstract void f();
}
