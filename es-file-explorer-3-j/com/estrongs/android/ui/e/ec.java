package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ec implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ eb f2092a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ec(eb ebVar) {
        this.f2092a = ebVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f2092a.f2091b.f2089a.l;
        com.estrongs.android.view.ar t = fileExplorerActivity.t();
        if (t == null || t.m()) {
            return;
        }
        t.b(true);
    }
}
