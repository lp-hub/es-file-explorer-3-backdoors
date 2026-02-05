package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import android.os.Handler;

/* loaded from: classes.dex */
class iw implements MediaPlayer.OnErrorListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1046a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iw(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1046a = streamingMediaPlayer;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Handler handler;
        this.f1046a.x = true;
        handler = this.f1046a.i;
        handler.post(new ix(this, i2));
        return true;
    }
}
