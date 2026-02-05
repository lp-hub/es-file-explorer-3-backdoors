package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class du extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f697a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f698b;
    final /* synthetic */ ds c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public du(ds dsVar, int i, int i2) {
        this.c = dsVar;
        this.f697a = i;
        this.f698b = i2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        AudioPlayerService audioPlayerService;
        audioPlayerService = this.c.f694a.B;
        audioPlayerService.f(this.f697a);
        if (this.f698b == 5) {
            this.c.f694a.M();
        }
    }
}
