package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.VideoView;

/* loaded from: classes.dex */
class gz extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f861a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gz(PopVideoPlayer popVideoPlayer) {
        this.f861a = popVideoPlayer;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        VideoView videoView;
        if (this.f861a.f371b) {
            videoView = this.f861a.k;
            videoView.start();
            this.f861a.f371b = false;
        }
        this.f861a.i = true;
    }
}
