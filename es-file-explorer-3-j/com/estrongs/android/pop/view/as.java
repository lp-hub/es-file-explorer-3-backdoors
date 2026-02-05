package com.estrongs.android.pop.view;

/* loaded from: classes.dex */
class as implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1319a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(FileExplorerActivity fileExplorerActivity) {
        this.f1319a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1319a.w = false;
    }
}
