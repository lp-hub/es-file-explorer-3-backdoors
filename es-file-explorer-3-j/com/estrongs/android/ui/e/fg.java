package com.estrongs.android.ui.e;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class fg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ff f2129a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fg(ff ffVar) {
        this.f2129a = ffVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f2129a.c.k;
        popAudioPlayer2 = this.f2129a.c.k;
        com.estrongs.android.ui.view.z.a(popAudioPlayer, popAudioPlayer2.getText(C0000R.string.toast_set_ringtone_f), 0).show();
    }
}
