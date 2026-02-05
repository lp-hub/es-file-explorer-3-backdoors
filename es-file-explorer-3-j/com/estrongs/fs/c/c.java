package com.estrongs.fs.c;

import java.io.File;

/* loaded from: classes.dex */
public class c extends a {
    private long k;

    public c(b bVar, long j) {
        super(bVar);
        this.k = j;
    }

    public c(File file, long j) {
        super(file);
        this.k = j;
    }

    @Override // com.estrongs.fs.c.a
    protected long b(File file) {
        if (this.k == 0) {
            return file.length();
        }
        long length = file.length();
        return length % this.k != 0 ? ((length / this.k) + 1) * this.k : length;
    }
}
