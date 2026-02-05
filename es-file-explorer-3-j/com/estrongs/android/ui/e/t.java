package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ o f2192a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(o oVar) {
        this.f2192a = oVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2192a.g;
        popAudioPlayer.l();
    }
}
