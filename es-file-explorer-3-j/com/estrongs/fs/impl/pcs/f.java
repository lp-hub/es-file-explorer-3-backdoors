package com.estrongs.fs.impl.pcs;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f3167a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f3167a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Thread.sleep(500L);
        } catch (InterruptedException e) {
        }
        if (FileExplorerActivity.E() == null) {
            return;
        }
        FileExplorerActivity.E().runOnUiThread(new g(this));
    }
}
