package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1398a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dd(FileExplorerActivity fileExplorerActivity) {
        this.f1398a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1398a.d(false);
    }
}
