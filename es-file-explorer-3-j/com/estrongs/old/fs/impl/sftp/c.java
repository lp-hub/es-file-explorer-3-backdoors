package com.estrongs.old.fs.impl.sftp;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    private d f3245a;

    /* renamed from: b, reason: collision with root package name */
    private OutputStream f3246b;
    private String c;
    private String d;
    private String e;
    private boolean f = false;

    public c(OutputStream outputStream, d dVar, String str, String str2, String str3) {
        this.f3246b = null;
        this.f3246b = outputStream;
        this.f3245a = dVar;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f3246b.close();
            if (!this.f) {
                OldSFtpFileSystem.b(this.c, this.d, this.e, this.f3245a);
            } else {
                this.f3245a.f3248b.j();
                this.f3245a.f3247a.b();
            }
        } catch (IOException e) {
            this.f3245a.f3248b.j();
            this.f3245a.f3247a.b();
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            this.f3246b.flush();
        } catch (IOException e) {
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        try {
            this.f3246b.write(i);
        } catch (IOException e) {
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        try {
            this.f3246b.write(bArr);
        } catch (IOException e) {
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        try {
            this.f3246b.write(bArr, i, i2);
        } catch (IOException e) {
            this.f = true;
            throw e;
        }
    }
}
