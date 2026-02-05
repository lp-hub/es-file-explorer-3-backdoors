package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ef implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ee f2095a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ef(ee eeVar) {
        this.f2095a = eeVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f2095a.f2094a.f2093a.l;
        fileExplorerActivity.W();
    }
}
