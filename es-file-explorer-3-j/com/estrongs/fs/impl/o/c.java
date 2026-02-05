package com.estrongs.fs.impl.o;

import java.io.InputStream;
import jcifs.smb.SmbRandomAccessFile;

/* loaded from: classes.dex */
public class c extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    private SmbRandomAccessFile f3153a;
    private long c;

    /* renamed from: b, reason: collision with root package name */
    private long f3154b = 0;
    private long d = 0;

    public c(SmbRandomAccessFile smbRandomAccessFile, long j) {
        this.f3153a = null;
        this.c = 0L;
        this.f3153a = smbRandomAccessFile;
        this.c = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3153a.close();
        super.close();
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.c - this.d == 0) {
            return -1;
        }
        int read = this.f3153a.read();
        if (read < 0) {
            return read;
        }
        this.d++;
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (this.c == 0) {
            int read = this.f3153a.read(bArr, i, i2);
            if (read < 0) {
                return read;
            }
            this.d += read;
            return read;
        }
        long j = this.c - this.d;
        if (j == 0) {
            return -1;
        }
        int read2 = ((long) i2) < j ? this.f3153a.read(bArr, i, i2) : this.f3153a.read(bArr, i, (int) j);
        if (read2 < 0) {
            return read2;
        }
        this.d += read2;
        return read2;
    }
}
