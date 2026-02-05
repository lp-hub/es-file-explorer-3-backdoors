package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1372a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(FileExplorerActivity fileExplorerActivity) {
        this.f1372a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.view.ar t = this.f1372a.t();
        String u = this.f1372a.u();
        if (t == null || u == null || t.P()) {
            return;
        }
        if (com.estrongs.android.util.ak.aL(this.f1372a.u())) {
            this.f1372a.t().a(0L);
            this.f1372a.t().k("all");
        }
        t.f();
    }
}
