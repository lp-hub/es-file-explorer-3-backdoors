package com.estrongs.fs.impl.local;

import android.net.LocalSocket;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
class p extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    private LocalSocket f3112a;

    /* renamed from: b, reason: collision with root package name */
    private InputStream f3113b;
    private OutputStream c;

    public p(LocalSocket localSocket, InputStream inputStream, OutputStream outputStream) {
        this.f3112a = null;
        this.f3113b = null;
        this.c = null;
        this.f3112a = localSocket;
        this.f3113b = inputStream;
        this.c = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.c.close();
        this.f3113b.close();
        this.f3112a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.c.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.c.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.c.write(bArr, i, i2);
    }
}
