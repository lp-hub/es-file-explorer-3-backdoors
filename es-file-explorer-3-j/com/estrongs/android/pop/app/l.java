package com.estrongs.android.pop.app;

import android.media.MediaPlayer;

/* loaded from: classes.dex */
class l implements MediaPlayer.OnCompletionListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AudioPlayerService f1061a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(AudioPlayerService audioPlayerService) {
        this.f1061a = audioPlayerService;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        ek ekVar;
        int F;
        com.estrongs.android.pop.app.a.ah ahVar;
        ek ekVar2;
        com.estrongs.android.pop.app.a.ah ahVar2;
        ekVar = this.f1061a.x;
        if (ekVar != null) {
            ekVar2 = this.f1061a.x;
            ahVar2 = this.f1061a.r;
            ekVar2.f(ahVar2.f());
        }
        if (this.f1061a.a(mediaPlayer)) {
            return;
        }
        F = this.f1061a.F();
        ahVar = this.f1061a.r;
        ahVar.d(F);
        this.f1061a.d(F);
    }
}
