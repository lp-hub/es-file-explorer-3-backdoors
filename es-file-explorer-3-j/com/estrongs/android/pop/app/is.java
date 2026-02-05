package com.estrongs.android.pop.app;

import android.widget.VideoView;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class is implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1041a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public is(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1041a = streamingMediaPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        VideoView videoView;
        File file;
        this.f1041a.dismissDialog(6);
        videoView = this.f1041a.f382b;
        file = this.f1041a.j;
        videoView.setVideoPath(file.getAbsolutePath());
        this.f1041a.h();
    }
}
