package com.estrongs.android.pop.view;

/* loaded from: classes.dex */
class bj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(FileExplorerActivity fileExplorerActivity) {
        this.f1344a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1344a.I.c();
    }
}
