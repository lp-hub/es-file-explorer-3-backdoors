package com.estrongs.fs.impl.local;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class a extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    long f3092a;

    /* renamed from: b, reason: collision with root package name */
    private RandomAccessFile f3093b;

    public a(File file, long j) {
        this.f3092a = 0L;
        try {
            this.f3093b = new RandomAccessFile(file, "r");
            this.f3093b.seek(j);
            this.f3092a = file.length();
        } catch (Exception e) {
            e.printStackTrace();
            this.f3093b = null;
        }
    }

    @Override // java.io.InputStream
    public int available() {
        if (this.f3093b == null) {
            return 0;
        }
        try {
            return (int) (this.f3092a - this.f3093b.getFilePointer());
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3093b != null) {
            try {
                this.f3093b.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f3093b == null) {
            return -1;
        }
        return this.f3093b.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        if (this.f3093b == null) {
            return -1;
        }
        try {
            return this.f3093b.read(bArr);
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (this.f3093b == null) {
            return -1;
        }
        try {
            return this.f3093b.read(bArr, i, i2);
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        if (this.f3093b != null) {
            try {
                this.f3093b.seek(0L);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        if (this.f3093b != null) {
            try {
                return this.f3093b.skipBytes((int) j);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return 0L;
    }
}
