package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class ef implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ee f772a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ef(ee eeVar) {
        this.f772a = eeVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.pop.q qVar;
        this.f772a.f771a.f712a.B();
        if (com.estrongs.android.pop.utils.bs.a()) {
            qVar = this.f772a.f771a.f712a.h;
            qVar.b();
        }
        try {
            com.estrongs.android.e.c.a().close();
        } catch (Exception e) {
        }
    }
}
