package com.estrongs.android.ui.b;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ad implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1620a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ac f1621b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ac acVar, FileExplorerActivity fileExplorerActivity) {
        this.f1621b = acVar;
        this.f1620a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.view.ar t = this.f1620a.t();
        if (t == null || t.m()) {
            return;
        }
        t.b(true);
    }
}
