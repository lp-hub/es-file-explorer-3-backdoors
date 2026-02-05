package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1401a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dg(FileExplorerActivity fileExplorerActivity) {
        this.f1401a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        Thread thread = new Thread(new dh(this));
        this.f1401a.ar();
        this.f1401a.a(thread);
    }
}
