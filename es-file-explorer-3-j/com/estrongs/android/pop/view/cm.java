package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1379a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(FileExplorerActivity fileExplorerActivity) {
        this.f1379a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1379a.showNaviPage1(null);
    }
}
