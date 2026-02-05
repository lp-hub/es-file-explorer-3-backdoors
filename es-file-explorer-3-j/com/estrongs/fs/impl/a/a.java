package com.estrongs.fs.impl.a;

import com.estrongs.fs.g;
import com.estrongs.fs.l;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private g f3047a;

    public a(g gVar) {
        super("apk://" + gVar.getAbsolutePath().substring(1, gVar.getAbsolutePath().length()), gVar.getAbsolutePath());
        this.f3047a = null;
        this.f3047a = gVar;
        setName(gVar.getName());
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.f3047a.getFileType().a() ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return this.f3047a.exists();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3047a.lastModified();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3047a.length();
    }
}
