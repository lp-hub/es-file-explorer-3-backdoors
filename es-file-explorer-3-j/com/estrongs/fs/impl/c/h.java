package com.estrongs.fs.impl.c;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class h extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    private final b.b.d f3065a;

    public h(OutputStream outputStream, b.b.d dVar) {
        super(outputStream);
        this.f3065a = dVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        if (this.f3065a != null) {
            try {
                this.f3065a.e();
            } catch (IOException e) {
            }
        }
    }
}
