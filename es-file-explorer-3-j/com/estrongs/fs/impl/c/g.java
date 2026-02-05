package com.estrongs.fs.impl.c;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class g extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    private final b.b.d f3064a;

    public g(InputStream inputStream, b.b.d dVar) {
        super(inputStream);
        this.f3064a = dVar;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        if (this.f3064a != null) {
            try {
                this.f3064a.e();
            } catch (IOException e) {
            }
        }
    }
}
