package com.estrongs.old.fs.impl.sftp;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class b extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    private d f3243a;

    /* renamed from: b, reason: collision with root package name */
    private InputStream f3244b;
    private String c;
    private String d;
    private String e;
    private boolean f = false;

    public b(InputStream inputStream, d dVar, String str, String str2, String str3) {
        this.f3244b = null;
        this.f3244b = inputStream;
        this.f3243a = dVar;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f3244b.close();
            if (!this.f) {
                OldSFtpFileSystem.b(this.c, this.d, this.e, this.f3243a);
            } else {
                this.f3243a.f3248b.j();
                this.f3243a.f3247a.b();
            }
        } catch (IOException e) {
            this.f3243a.f3248b.j();
            this.f3243a.f3247a.b();
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f3244b.read();
        } catch (IOException e) {
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f3244b.read(bArr);
        } catch (IOException e) {
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f3244b.read(bArr, i, i2);
        } catch (IOException e) {
            this.f = true;
            throw e;
        }
    }
}
