package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ o f2190a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(o oVar) {
        this.f2190a = oVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2190a.g;
        popAudioPlayer.j();
    }
}
