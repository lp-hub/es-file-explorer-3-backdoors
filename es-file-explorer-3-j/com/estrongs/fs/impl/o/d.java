package com.estrongs.fs.impl.o;

import java.io.OutputStream;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbRandomAccessFile;

/* loaded from: classes.dex */
public class d extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    private SmbRandomAccessFile f3155a;

    public d(SmbFile smbFile, long j) {
        this.f3155a = null;
        this.f3155a = new SmbRandomAccessFile(smbFile, "rw");
        if (j != 0) {
            this.f3155a.seek(j);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3155a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f3155a.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f3155a.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.f3155a.write(bArr, i, i2);
    }
}
