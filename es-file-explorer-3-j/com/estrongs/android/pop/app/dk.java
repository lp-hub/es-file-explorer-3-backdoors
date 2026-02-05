package com.estrongs.android.pop.app;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dk implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f685a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dk(PopAudioPlayer popAudioPlayer) {
        this.f685a = popAudioPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f685a.c();
    }
}
