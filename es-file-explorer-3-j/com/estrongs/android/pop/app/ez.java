package com.estrongs.android.pop.app;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ez implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ey f792a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(ey eyVar) {
        this.f792a = eyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.d();
        }
        try {
            FileExplorerActivity.E().N();
        } catch (Exception e) {
        }
        this.f792a.f791a.finish();
    }
}
