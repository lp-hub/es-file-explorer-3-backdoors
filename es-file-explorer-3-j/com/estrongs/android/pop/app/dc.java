package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f651a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dc(PopAudioPlayer popAudioPlayer) {
        this.f651a = popAudioPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.ui.view.v vVar;
        vVar = this.f651a.U;
        vVar.g();
    }
}
