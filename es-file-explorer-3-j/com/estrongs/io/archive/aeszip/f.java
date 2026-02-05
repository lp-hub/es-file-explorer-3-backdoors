package com.estrongs.io.archive.aeszip;

import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f extends InflaterInputStream {

    /* renamed from: a, reason: collision with root package name */
    private boolean f3199a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public f(InputStream inputStream, int i) {
        super(inputStream, r0, i);
        Inflater g;
        g = a.g();
    }

    @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3199a) {
            return;
        }
        this.f3199a = true;
        try {
            super.close();
        } finally {
            a.b(this.inf);
        }
    }
}
