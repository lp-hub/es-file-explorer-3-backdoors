package com.estrongs.io.archive.compressor;

import com.estrongs.io.archive.h;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.InputStream;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class a extends h {
    private InputStream g;

    public a(String str) {
        super(str);
    }

    @Override // com.estrongs.io.archive.h
    public InputStream a(String str) {
        if (this.g == null) {
            this.g = k();
        }
        return this.g;
    }

    @Override // com.estrongs.io.archive.h
    public void b() {
    }

    @Override // com.estrongs.io.archive.h
    public void c() {
        if (this.g != null) {
            this.g.close();
        }
    }

    @Override // com.estrongs.io.archive.h
    protected Iterator<ArchiveEntryFile> i() {
        return new b(this);
    }

    protected abstract InputStream k();
}
