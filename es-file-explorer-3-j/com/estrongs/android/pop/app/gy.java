package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
class gy extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f860a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gy(PopVideoPlayer popVideoPlayer) {
        this.f860a = popVideoPlayer;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f860a.i = false;
    }
}
