package com.estrongs.fs.impl.q;

import de.aflx.sardine.Sardine;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    private Sardine f3179a;

    /* renamed from: b, reason: collision with root package name */
    private InputStream f3180b;
    private String c;
    private String d;
    private String e;
    private boolean f = false;

    public d(InputStream inputStream, Sardine sardine, String str, String str2, String str3) {
        this.f3180b = null;
        this.f3180b = inputStream;
        this.f3179a = sardine;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            try {
                this.f3180b.close();
            } catch (IOException e) {
                throw e;
            }
        } finally {
            this.f3179a.destroy();
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f3180b.read();
        } catch (IOException e) {
            b.f3175a = e.getMessage();
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f3180b.read(bArr);
        } catch (IOException e) {
            b.f3175a = e.getMessage();
            this.f = true;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f3180b.read(bArr, i, i2);
        } catch (IOException e) {
            b.f3175a = e.getMessage();
            this.f = true;
            throw e;
        }
    }
}
