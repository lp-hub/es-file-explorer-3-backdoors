package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dj implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f684a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(PopAudioPlayer popAudioPlayer) {
        this.f684a = popAudioPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f684a.finish();
    }
}
