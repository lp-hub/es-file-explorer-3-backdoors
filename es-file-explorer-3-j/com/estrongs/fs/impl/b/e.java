package com.estrongs.fs.impl.b;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes.dex */
class e implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f3054a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.f3054a = dVar;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.endsWith(".apk");
    }
}
