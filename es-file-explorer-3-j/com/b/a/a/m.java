package com.b.a.a;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class m extends InputStream {

    /* renamed from: b, reason: collision with root package name */
    private final k f108b;
    private byte[] c = new byte[16384];
    private int d = 0;
    private int e = 0;
    private Object f = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f107a = false;
    private boolean g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(k kVar) {
        this.f108b = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr, boolean z) {
        if (this.f107a || this.g) {
            return;
        }
        synchronized (this.f) {
            if (z) {
                this.g = true;
            }
            if (bArr != null && bArr.length != 0) {
                if (this.e + bArr.length > this.c.length) {
                    int length = (bArr.length + (this.e - this.d)) * 2;
                    if (length < this.c.length) {
                        length = this.c.length;
                    }
                    byte[] bArr2 = new byte[length];
                    System.arraycopy(this.c, this.d, bArr2, 0, this.e - this.d);
                    this.c = bArr2;
                    this.e -= this.d;
                    this.d = 0;
                }
                System.arraycopy(bArr, 0, this.c, this.e, bArr.length);
                this.e += bArr.length;
            }
            this.f.notifyAll();
        }
    }

    @Override // java.io.InputStream
    public int available() {
        int i;
        synchronized (this.f) {
            i = this.e - this.d;
        }
        return i;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f107a = true;
        synchronized (this.f) {
            this.f.notifyAll();
        }
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f107a) {
            throw new IOException("Stream closed");
        }
        if (this.f108b.j() && this.e == this.d) {
            return -1;
        }
        synchronized (this.f) {
            while (!this.g && (this.f108b instanceof o) && !this.f107a && !this.f108b.j() && this.e == this.d) {
                ((o) this.f108b).a(this);
            }
            if (this.e == this.d) {
                return -1;
            }
            byte[] bArr = this.c;
            int i = this.d;
            this.d = i + 1;
            return bArr[i] & 255;
        }
    }
}
