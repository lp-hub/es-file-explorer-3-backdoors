package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cw implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1389a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cw(FileExplorerActivity fileExplorerActivity) {
        this.f1389a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1389a.c("download://");
    }
}
