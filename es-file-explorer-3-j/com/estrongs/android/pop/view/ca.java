package com.estrongs.android.pop.view;

import java.io.File;
import java.io.FileFilter;

/* loaded from: classes.dex */
class ca implements FileFilter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f1365a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(bz bzVar) {
        this.f1365a = bzVar;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return file.isFile() && file.getName().endsWith(".apk");
    }
}
