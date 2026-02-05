package com.estrongs.android.ui.pcs;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2341a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bz(bt btVar) {
        this.f2341a = btVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2341a.l = com.estrongs.android.pop.utils.bw.b();
        FileExplorerActivity.E().runOnUiThread(new ca(this));
    }
}
