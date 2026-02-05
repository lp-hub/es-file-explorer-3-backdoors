package com.estrongs.io.archive.rar;

import java.io.File;

/* loaded from: classes.dex */
public class e implements de.innosystec.unrar.d {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.io.a.d f3228a;

    public e(com.estrongs.io.a.d dVar) {
        this.f3228a = dVar;
    }

    @Override // de.innosystec.unrar.d
    public void a(long j, long j2) {
        this.f3228a.a(j);
    }

    @Override // de.innosystec.unrar.d
    public boolean a(File file) {
        return file.exists();
    }
}
