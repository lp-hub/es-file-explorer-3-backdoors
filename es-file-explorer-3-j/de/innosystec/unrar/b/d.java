package de.innosystec.unrar.b;

import java.io.InputStream;

/* loaded from: classes.dex */
public class d extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    private a f3402a;

    /* renamed from: b, reason: collision with root package name */
    private long f3403b;
    private final long c;
    private final long d;

    public d(a aVar, long j, long j2) {
        this.f3402a = aVar;
        this.c = j;
        this.f3403b = j;
        this.d = j2;
        aVar.a(this.f3403b);
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f3403b == this.d) {
            return -1;
        }
        int read = this.f3402a.read();
        this.f3403b++;
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.f3403b == this.d) {
            return -1;
        }
        int read = this.f3402a.read(bArr, i, (int) Math.min(i2, this.d - this.f3403b));
        this.f3403b += read;
        return read;
    }
}
