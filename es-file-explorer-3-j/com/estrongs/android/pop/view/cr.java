package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cr implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1384a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cr(FileExplorerActivity fileExplorerActivity) {
        this.f1384a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1384a.d("net://");
    }
}
