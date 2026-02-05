package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1387a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cu(FileExplorerActivity fileExplorerActivity) {
        this.f1387a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1387a.d("bt://");
    }
}
