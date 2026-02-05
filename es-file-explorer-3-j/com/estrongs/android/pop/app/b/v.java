package com.estrongs.android.pop.app.b;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements FileFilter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f510a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(q qVar) {
        this.f510a = qVar;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return file.isDirectory();
    }
}
