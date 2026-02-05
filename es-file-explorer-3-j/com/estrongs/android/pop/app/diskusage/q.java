package com.estrongs.android.pop.app.diskusage;

import java.io.File;

/* loaded from: classes.dex */
public class q extends com.estrongs.fs.impl.local.b {

    /* renamed from: a, reason: collision with root package name */
    protected File f683a;

    public q(File file) {
        super(file);
        this.f683a = null;
        this.f683a = file;
    }

    public File a() {
        return this.f683a;
    }

    @Override // com.estrongs.fs.a
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof q)) {
            return false;
        }
        return this.f683a.equals(((q) obj).f683a);
    }

    public int hashCode() {
        return this.f683a.hashCode();
    }
}
