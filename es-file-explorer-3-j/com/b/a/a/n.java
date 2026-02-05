package com.b.a.a;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
class n extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    private final l f109a;

    /* renamed from: b, reason: collision with root package name */
    private byte[] f110b;
    private Object d = new Object();
    private boolean e = false;
    private int c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(int i, l lVar) {
        this.f109a = lVar;
        this.f110b = new byte[i - 11];
    }

    void a(boolean z) {
        synchronized (this.d) {
            byte[] bArr = new byte[this.c];
            System.arraycopy(this.f110b, 0, bArr, 0, this.c);
            this.f109a.a(z, bArr);
            this.c = 0;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.e) {
            return;
        }
        synchronized (this.d) {
            this.e = true;
            if (!this.f109a.j()) {
                a(true);
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        if (this.c > 0) {
            a(false);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (this.f109a.j() || this.e) {
            throw new IOException("stream closed");
        }
        if (bArr == null) {
            throw new NullPointerException();
        }
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        synchronized (this.d) {
            int i3 = 0;
            while (i3 < i2) {
                int length = this.f110b.length - this.c;
                if (i2 - i3 < length) {
                    length = i2 - i3;
                }
                System.arraycopy(bArr, i + i3, this.f110b, this.c, length);
                this.c += length;
                int i4 = length + i3;
                if (this.c == this.f110b.length) {
                    this.f109a.a(false, this.f110b);
                    this.c = 0;
                }
                i3 = i4;
            }
        }
    }
}
