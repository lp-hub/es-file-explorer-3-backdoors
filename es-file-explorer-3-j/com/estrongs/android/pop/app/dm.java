package com.estrongs.android.pop.app;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.a.af f687a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f688b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dm(PopAudioPlayer popAudioPlayer, com.estrongs.android.pop.app.a.af afVar) {
        this.f688b = popAudioPlayer;
        this.f687a = afVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AudioPlayerService audioPlayerService;
        try {
            this.f687a.d();
            com.estrongs.android.pop.app.a.af afVar = this.f687a;
            audioPlayerService = this.f688b.B;
            if (afVar == audioPlayerService.q() && this.f687a.c()) {
                this.f688b.runOnUiThread(new dn(this));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
