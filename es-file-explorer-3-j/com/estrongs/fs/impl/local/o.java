package com.estrongs.fs.impl.local;

import android.net.LocalSocket;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
class o extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    private LocalSocket f3110a;

    /* renamed from: b, reason: collision with root package name */
    private InputStream f3111b;
    private OutputStream c;

    public o(LocalSocket localSocket, InputStream inputStream, OutputStream outputStream) {
        this.f3110a = null;
        this.f3111b = null;
        this.c = null;
        this.f3110a = localSocket;
        this.f3111b = inputStream;
        this.c = outputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3111b.close();
        this.c.close();
        this.f3110a.close();
    }

    @Override // java.io.InputStream
    public int read() {
        return this.f3111b.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return this.f3111b.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.f3111b.read(bArr, i, i2);
    }
}
