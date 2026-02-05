package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class dt extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f695a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f696b;
    final /* synthetic */ ds c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dt(ds dsVar, int i, int i2) {
        this.c = dsVar;
        this.f695a = i;
        this.f696b = i2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        AudioPlayerService audioPlayerService;
        AudioPlayerService audioPlayerService2;
        AudioPlayerService audioPlayerService3;
        ei eiVar;
        try {
            audioPlayerService = this.c.f694a.B;
            audioPlayerService.f(this.f695a);
            audioPlayerService2 = this.c.f694a.B;
            audioPlayerService2.c(this.f696b);
            audioPlayerService3 = this.c.f694a.B;
            audioPlayerService3.u();
            eiVar = this.c.f694a.A;
            eiVar.b(this.f696b);
        } catch (Exception e) {
        }
    }
}
