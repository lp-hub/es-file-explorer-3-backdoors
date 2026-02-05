package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.utils.br;
import java.util.List;

/* loaded from: classes.dex */
class o implements br {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f423a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar) {
        this.f423a = nVar;
    }

    @Override // com.estrongs.android.pop.utils.br
    public void a(List<com.estrongs.fs.g> list) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        popAudioPlayer = this.f423a.f422a.p;
        popAudioPlayer.m();
        popAudioPlayer2 = this.f423a.f422a.p;
        af t = popAudioPlayer2.t();
        popAudioPlayer3 = this.f423a.f422a.p;
        popAudioPlayer3.a(t);
    }
}
