package com.estrongs.fs.impl.local;

import java.io.File;
import java.io.OutputStream;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    private RandomAccessFile f3094a;

    public c(File file, long j) {
        this.f3094a = new RandomAccessFile(file, "rw");
        this.f3094a.seek(j);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3094a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f3094a.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f3094a.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.f3094a.write(bArr, i, i2);
    }
}
