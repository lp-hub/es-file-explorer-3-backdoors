package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cz implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f647a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cz(PopAudioPlayer popAudioPlayer) {
        this.f647a = popAudioPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.ui.view.az azVar;
        azVar = this.f647a.q;
        azVar.a(true);
        this.f647a.r();
    }
}
