package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f2187a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(j jVar) {
        this.f2187a = jVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f2187a.g;
        if (popAudioPlayer != null) {
            popAudioPlayer2 = this.f2187a.g;
            popAudioPlayer2.a(0);
        }
    }
}
