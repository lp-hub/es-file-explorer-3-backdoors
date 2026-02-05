package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1383a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cq(FileExplorerActivity fileExplorerActivity) {
        this.f1383a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1383a.d("smb://");
    }
}
