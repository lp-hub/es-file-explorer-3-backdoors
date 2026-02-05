package com.estrongs.android.pop.view;

import com.estrongs.android.pop.view.utils.RemoteSynchronizer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1359a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(FileExplorerActivity fileExplorerActivity) {
        this.f1359a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        RemoteSynchronizer.d();
    }
}
