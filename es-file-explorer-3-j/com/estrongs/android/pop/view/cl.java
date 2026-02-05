package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cl implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1378a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cl(FileExplorerActivity fileExplorerActivity) {
        this.f1378a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1378a.d("book://");
    }
}
