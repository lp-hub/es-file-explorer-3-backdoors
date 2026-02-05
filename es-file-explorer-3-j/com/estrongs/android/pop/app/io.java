package com.estrongs.android.pop.app;

import android.media.MediaPlayer;

/* loaded from: classes.dex */
class io implements MediaPlayer.OnPreparedListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1037a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public io(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1037a = streamingMediaPlayer;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f1037a.n = mediaPlayer;
    }
}
