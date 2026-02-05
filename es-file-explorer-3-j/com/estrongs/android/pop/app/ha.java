package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.VideoView;

/* loaded from: classes.dex */
class ha extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f864a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ha(PopVideoPlayer popVideoPlayer) {
        this.f864a = popVideoPlayer;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        VideoView videoView;
        try {
            videoView = this.f864a.k;
            videoView.stopPlayback();
            this.f864a.finish();
        } catch (Exception e) {
        }
    }
}
