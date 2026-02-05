package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.widget.VideoView;

/* loaded from: classes.dex */
class hc implements MediaPlayer.OnCompletionListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f866a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hc(PopVideoPlayer popVideoPlayer) {
        this.f866a = popVideoPlayer;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        VideoView videoView;
        if ("Market".equals("Spreadtrum_cmcc")) {
            return;
        }
        videoView = this.f866a.k;
        videoView.stopPlayback();
        com.estrongs.android.util.m.b();
        this.f866a.finish();
    }
}
