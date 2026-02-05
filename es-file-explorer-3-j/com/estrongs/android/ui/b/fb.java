package com.estrongs.android.ui.b;

/* loaded from: classes.dex */
class fb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ fa f1811a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(fa faVar) {
        this.f1811a = faVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.view.af afVar;
        afVar = this.f1811a.c.f1804a.q;
        afVar.b();
    }
}
