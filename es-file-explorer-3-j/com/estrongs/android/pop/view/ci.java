package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ci implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1375a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci(FileExplorerActivity fileExplorerActivity) {
        this.f1375a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1375a.d("gallery://local/buckets/");
    }
}
