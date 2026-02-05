package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cy implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1391a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy(FileExplorerActivity fileExplorerActivity) {
        this.f1391a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1391a.c("du://");
    }
}
