package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class cy implements ek {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f646a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy(PopAudioPlayer popAudioPlayer) {
        this.f646a = popAudioPlayer;
    }

    @Override // com.estrongs.android.pop.app.ek
    public void a() {
        if ("Market".startsWith("Spreadtrum") || "Market".equalsIgnoreCase("Huawei")) {
            this.f646a.N();
            this.f646a.B = null;
        }
    }

    @Override // com.estrongs.android.pop.app.ek
    public void a(int i) {
        this.f646a.h(3, i);
    }

    @Override // com.estrongs.android.pop.app.ek
    public void b(int i) {
        this.f646a.h(0, i);
    }

    @Override // com.estrongs.android.pop.app.ek
    public void c(int i) {
        this.f646a.h(4, i);
    }

    @Override // com.estrongs.android.pop.app.ek
    public void d(int i) {
        this.f646a.h(2, i);
    }

    @Override // com.estrongs.android.pop.app.ek
    public void e(int i) {
        this.f646a.h(1, i);
    }

    @Override // com.estrongs.android.pop.app.ek
    public void f(int i) {
        this.f646a.h(0, i);
    }

    @Override // com.estrongs.android.pop.app.ek
    public void g(int i) {
        AudioPlayerService audioPlayerService;
        AudioPlayerService audioPlayerService2;
        AudioPlayerService audioPlayerService3;
        AudioPlayerService audioPlayerService4;
        try {
            Thread.sleep(1000L);
        } catch (Exception e) {
        }
        audioPlayerService = this.f646a.B;
        if (audioPlayerService.n()) {
            return;
        }
        audioPlayerService2 = this.f646a.B;
        if (audioPlayerService2.k()) {
            return;
        }
        audioPlayerService3 = this.f646a.B;
        int d = audioPlayerService3.d();
        if (d == -1) {
            audioPlayerService4 = this.f646a.B;
            audioPlayerService4.t();
        } else if (d != i) {
            this.f646a.e(d);
        }
    }
}
