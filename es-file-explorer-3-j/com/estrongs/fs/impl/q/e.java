package com.estrongs.fs.impl.q;

import de.aflx.sardine.Sardine;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class e extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    private Sardine f3181a;

    /* renamed from: b, reason: collision with root package name */
    private OutputStream f3182b;
    private String c;
    private String d;
    private String e;
    private boolean f = false;

    public e(OutputStream outputStream, Sardine sardine, String str, String str2, String str3) {
        this.f3182b = null;
        this.f3182b = outputStream;
        this.f3181a = sardine;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            try {
                this.f3182b.close();
            } catch (IOException e) {
                b.f3175a = e.getMessage();
                this.f3181a.abort();
                throw e;
            }
        } finally {
            this.f3181a.destroy();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            this.f3182b.flush();
        } catch (IOException e) {
            b.f3175a = e.getMessage();
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        try {
            this.f3182b.write(i);
        } catch (IOException e) {
            b.f3175a = e.getMessage();
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        try {
            this.f3182b.write(bArr);
        } catch (IOException e) {
            b.f3175a = e.getMessage();
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        try {
            this.f3182b.write(bArr, i, i2);
        } catch (IOException e) {
            b.f3175a = e.getMessage();
            this.f = true;
            throw e;
        }
    }
}
