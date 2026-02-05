package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1404a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(FileExplorerActivity fileExplorerActivity) {
        this.f1404a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        int j;
        this.f1404a.j();
        j = this.f1404a.j(this.f1404a.u());
        this.f1404a.b(j, 0);
    }
}
