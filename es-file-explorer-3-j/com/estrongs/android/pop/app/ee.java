package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class ee implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ed f771a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ee(ed edVar) {
        this.f771a = edVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        new Thread(new ef(this)).start();
    }
}
