package com.estrongs.android.pop.app;

import com.estrongs.android.widget.RealViewSwitcher;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class eg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f773a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eg(PopAudioPlayer popAudioPlayer) {
        this.f773a = popAudioPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        RealViewSwitcher realViewSwitcher;
        realViewSwitcher = this.f773a.i;
        realViewSwitcher.a(0);
        this.f773a.A = new ei(this.f773a);
    }
}
