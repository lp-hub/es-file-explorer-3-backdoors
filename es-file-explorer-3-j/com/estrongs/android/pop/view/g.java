package com.estrongs.android.pop.view;

import android.os.Handler;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f1411a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Runnable f1412b;
    final /* synthetic */ FileExplorerActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(FileExplorerActivity fileExplorerActivity, Handler handler, Runnable runnable) {
        this.c = fileExplorerActivity;
        this.f1411a = handler;
        this.f1412b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        File[] listFiles = new File(com.estrongs.android.pop.a.f327a, ".thumbnails").listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                file.delete();
            }
        }
        File[] listFiles2 = new File(com.estrongs.android.pop.a.f327a, ".apps").listFiles();
        if (listFiles2 != null) {
            for (File file2 : listFiles2) {
                file2.delete();
            }
        }
        File[] listFiles3 = new File(com.estrongs.android.pop.a.c).listFiles();
        if (listFiles3 != null) {
            com.estrongs.fs.c.d.a(listFiles3);
        }
        if (this.f1411a == null || this.f1412b == null) {
            return;
        }
        this.c.h.post(this.f1412b);
    }
}
