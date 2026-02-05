package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1373a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cg(FileExplorerActivity fileExplorerActivity) {
        this.f1373a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1373a.ay();
    }
}
