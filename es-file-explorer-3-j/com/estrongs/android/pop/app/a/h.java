package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f414a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        this.f414a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f414a.c.p;
        popAudioPlayer2 = this.f414a.c.p;
        com.estrongs.android.ui.view.z.a(popAudioPlayer, popAudioPlayer2.getText(C0000R.string.toast_set_ringtone_f), 0).show();
    }
}
