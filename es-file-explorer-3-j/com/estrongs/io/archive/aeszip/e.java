package com.estrongs.io.archive.aeszip;

import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e extends InputStream {
    static final /* synthetic */ boolean c;

    /* renamed from: a, reason: collision with root package name */
    private long f3197a;

    /* renamed from: b, reason: collision with root package name */
    private long f3198b;
    final /* synthetic */ a d;
    private boolean e;

    static {
        c = !a.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar, long j, long j2) {
        this.d = aVar;
        if (!c && j < 0) {
            throw new AssertionError();
        }
        if (!c && j2 < 0) {
            throw new AssertionError();
        }
        this.f3197a = j2;
        this.f3198b = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.e = true;
    }

    @Override // java.io.InputStream
    public int available() {
        this.d.f();
        long j = this.f3197a;
        if (this.e) {
            j++;
        }
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    @Override // java.io.InputStream
    public int read() {
        this.d.f();
        if (this.f3197a <= 0) {
            if (!this.e) {
                return -1;
            }
            this.e = false;
            return 0;
        }
        this.d.f3192b.d(this.f3198b);
        int b2 = this.d.f3192b.b();
        if (b2 < 0) {
            return b2;
        }
        this.f3198b++;
        this.f3197a--;
        return b2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            if (i2 < 0) {
                throw new IndexOutOfBoundsException();
            }
            return 0;
        }
        this.d.f();
        if (this.f3197a <= 0) {
            if (!this.e) {
                return -1;
            }
            this.e = false;
            bArr[i] = 0;
            return 1;
        }
        if (i2 > this.f3197a) {
            i2 = (int) this.f3197a;
        }
        this.d.f3192b.d(this.f3198b);
        int a2 = this.d.f3192b.a(bArr, i, i2);
        if (a2 <= 0) {
            return a2;
        }
        this.f3198b += a2;
        this.f3197a -= a2;
        return a2;
    }
}
