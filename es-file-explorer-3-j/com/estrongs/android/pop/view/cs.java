package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cs implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1385a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cs(FileExplorerActivity fileExplorerActivity) {
        this.f1385a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1385a.d("pcs://");
    }
}
