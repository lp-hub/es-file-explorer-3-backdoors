package com.estrongs.fs.impl.p;

import com.estrongs.fs.l;
import java.io.File;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private File f3157a;

    public a(File file) {
        super(file.getPath());
        this.f3157a = null;
        this.f3157a = file;
        setName(file.getName());
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.f3157a.isDirectory() ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return this.f3157a.exists();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3157a.lastModified();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3157a.length();
    }
}
