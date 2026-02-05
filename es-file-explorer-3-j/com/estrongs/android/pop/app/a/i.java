package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f415a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar) {
        this.f415a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f415a.c.p;
        popAudioPlayer2 = this.f415a.c.p;
        com.estrongs.android.ui.view.z.a(popAudioPlayer, popAudioPlayer2.getText(C0000R.string.toast_set_ringtone_s), 0).show();
    }
}
