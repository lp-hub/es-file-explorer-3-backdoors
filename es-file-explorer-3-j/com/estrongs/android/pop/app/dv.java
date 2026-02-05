package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class dv extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f699a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ds f700b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dv(ds dsVar, int i) {
        this.f700b = dsVar;
        this.f699a = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        AudioPlayerService audioPlayerService;
        audioPlayerService = this.f700b.f694a.B;
        audioPlayerService.d(this.f699a);
    }
}
