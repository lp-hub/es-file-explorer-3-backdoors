package com.b.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
class g extends e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(h hVar, j jVar) {
        super(hVar, (char) 2, jVar);
    }

    @Override // b.a.a.c
    public InputStream a() {
        g();
        if (this.j) {
            throw new IOException("input stream already open");
        }
        com.b.a.a.a("openInputStream");
        this.j = true;
        this.e = true;
        return this.i;
    }

    @Override // b.a.a.d
    public OutputStream c() {
        g();
        if (this.h) {
            throw new IOException("output already open");
        }
        this.h = true;
        this.g = new n(this.f100a.d, this);
        this.e = true;
        return this.g;
    }
}
