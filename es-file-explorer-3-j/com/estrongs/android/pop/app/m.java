package com.estrongs.android.pop.app;

import android.media.MediaPlayer;

/* loaded from: classes.dex */
class m implements MediaPlayer.OnErrorListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AudioPlayerService f1062a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(AudioPlayerService audioPlayerService) {
        this.f1062a = audioPlayerService;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        com.estrongs.android.pop.app.a.ah ahVar;
        com.estrongs.android.pop.app.a.ah ahVar2;
        ek ekVar;
        ek ekVar2;
        ahVar = this.f1062a.r;
        int f = ahVar.f();
        ahVar2 = this.f1062a.r;
        ahVar2.a(f, false);
        this.f1062a.t();
        ekVar = this.f1062a.x;
        if (ekVar != null) {
            ekVar2 = this.f1062a.x;
            ekVar2.g(f);
        } else if (!this.f1062a.a(mediaPlayer)) {
        }
        return true;
    }
}
