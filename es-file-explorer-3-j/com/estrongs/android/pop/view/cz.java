package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1392a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cz(FileExplorerActivity fileExplorerActivity) {
        this.f1392a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1392a.c("remote://");
    }
}
