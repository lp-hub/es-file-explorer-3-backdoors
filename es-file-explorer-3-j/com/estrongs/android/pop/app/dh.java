package com.estrongs.android.pop.app;

import android.view.View;
import android.view.WindowManager;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dh implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f657a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dh(PopAudioPlayer popAudioPlayer) {
        this.f657a = popAudioPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        z = this.f657a.z;
        if (z) {
        }
        com.estrongs.android.ui.g.e a2 = com.estrongs.android.ui.g.e.a(view, this.f657a.getString(C0000R.string.playlist_title), 0, this.f657a.q(), false);
        a2.a(new di(this, a2));
        try {
            a2.c();
        } catch (WindowManager.BadTokenException e) {
            e.printStackTrace();
        }
    }
}
