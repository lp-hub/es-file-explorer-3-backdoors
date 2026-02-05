package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.view.ae;
import java.io.File;
import java.io.FileFilter;

/* loaded from: classes.dex */
class i implements FileFilter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f673a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f674b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar, ae aeVar) {
        this.f674b = hVar;
        this.f673a = aeVar;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        String absolutePath = file.getAbsolutePath();
        for (String str : this.f674b.f671a) {
            if (str.equalsIgnoreCase(absolutePath)) {
                return false;
            }
            if (str.startsWith("/mnt/") && !absolutePath.startsWith("/mnt/") && str.equalsIgnoreCase("/mnt" + absolutePath)) {
                return false;
            }
            if (absolutePath.startsWith("/mnt/") && !str.startsWith("/mnt/") && absolutePath.equalsIgnoreCase("/mnt" + str)) {
                return false;
            }
        }
        return this.f673a.a(new com.estrongs.fs.impl.local.b(null, file, false));
    }
}
