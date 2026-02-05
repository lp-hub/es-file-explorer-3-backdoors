package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1376a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(FileExplorerActivity fileExplorerActivity) {
        this.f1376a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1376a.d("music://");
    }
}
