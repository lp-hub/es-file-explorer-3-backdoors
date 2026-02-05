package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class da implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f649a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public da(PopAudioPlayer popAudioPlayer) {
        this.f649a = popAudioPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.ui.view.v vVar;
        vVar = this.f649a.U;
        vVar.e();
    }
}
