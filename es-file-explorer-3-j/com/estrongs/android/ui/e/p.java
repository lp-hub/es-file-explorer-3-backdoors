package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ o f2188a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar) {
        this.f2188a = oVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2188a.g;
        popAudioPlayer.g();
    }
}
