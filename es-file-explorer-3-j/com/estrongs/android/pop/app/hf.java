package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class hf implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f869a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hf(PopVideoPlayer popVideoPlayer) {
        this.f869a = popVideoPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f869a.a();
    }
}
