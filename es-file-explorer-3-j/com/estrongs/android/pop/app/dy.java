package com.estrongs.android.pop.app;

import android.os.Handler;

/* loaded from: classes.dex */
class dy implements com.estrongs.android.pop.app.a.ak {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f703a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dy(PopAudioPlayer popAudioPlayer) {
        this.f703a = popAudioPlayer;
    }

    @Override // com.estrongs.android.pop.app.a.ak
    public void a() {
        Handler handler;
        handler = this.f703a.W;
        handler.postDelayed(new dz(this), 500L);
    }
}
