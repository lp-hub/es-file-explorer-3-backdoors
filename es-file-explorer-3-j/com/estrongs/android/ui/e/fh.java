package com.estrongs.android.ui.e;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class fh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ff f2130a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fh(ff ffVar) {
        this.f2130a = ffVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f2130a.c.k;
        popAudioPlayer2 = this.f2130a.c.k;
        com.estrongs.android.ui.view.z.a(popAudioPlayer, popAudioPlayer2.getText(C0000R.string.toast_set_ringtone_s), 0).show();
    }
}
