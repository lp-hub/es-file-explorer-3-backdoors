package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ck implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1377a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(FileExplorerActivity fileExplorerActivity) {
        this.f1377a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1377a.d("video://");
    }
}
