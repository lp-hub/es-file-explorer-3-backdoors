package com.estrongs.io.archive.aeszip;

import java.io.OutputStream;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
class l extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    long f3205a;
    OutputStream c;
    de.a.a.a.a.d d;
    final /* synthetic */ k e;
    private byte[] f = new byte[0];

    /* renamed from: b, reason: collision with root package name */
    CRC32 f3206b = new CRC32();

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar, OutputStream outputStream, de.a.a.a.a.d dVar) {
        this.e = kVar;
        this.c = outputStream;
        this.d = dVar;
    }

    private void a(byte[] bArr, int i) {
        this.d.a(bArr, i);
        this.c.write(bArr, 0, i);
        if (this.f3206b != null) {
            this.f3206b.update(bArr, 0, i);
        }
        this.f3205a += i;
    }

    public long a() {
        if (this.f3206b != null) {
            return this.f3206b.getValue();
        }
        return 0L;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f.length > 0) {
            a(this.f, this.f.length);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.c.write(new byte[]{(byte) (i & 255)}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (this.f.length > 0) {
            byte[] bArr2 = new byte[this.f.length + i2];
            System.arraycopy(this.f, 0, bArr2, 0, this.f.length);
            System.arraycopy(bArr, 0, bArr2, this.f.length, i2);
            this.f = new byte[0];
            write(bArr2, 0, bArr2.length);
            return;
        }
        int i3 = i2 % 16;
        if (i3 == 0) {
            a(bArr, i2);
        } else {
            if (i2 < 16) {
                a(bArr, i2);
                return;
            }
            this.f = new byte[i3];
            System.arraycopy(bArr, i2 - i3, this.f, 0, i3);
            a(bArr, i2 - i3);
        }
    }
}
