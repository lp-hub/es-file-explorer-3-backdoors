package com.estrongs.android.pop.view;

import com.estrongs.android.pop.view.utils.RemoteSynchronizer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1409a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1410b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(FileExplorerActivity fileExplorerActivity, boolean z) {
        this.f1410b = fileExplorerActivity;
        this.f1409a = z;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean z;
        z = this.f1410b.bo;
        if (z) {
            return;
        }
        com.estrongs.android.ui.d.e.a(this.f1410b);
        com.estrongs.android.ui.d.e.d();
        if (this.f1409a) {
            com.estrongs.android.util.ax.c().f();
            com.estrongs.android.util.ax.c().g();
        } else {
            com.estrongs.android.util.ax.c().h();
        }
        com.estrongs.android.util.ax.c().d();
        try {
            if (com.estrongs.fs.impl.c.a.a()) {
                com.estrongs.fs.impl.c.a.b();
            }
        } catch (Exception e) {
        }
        RemoteSynchronizer.e();
    }
}
