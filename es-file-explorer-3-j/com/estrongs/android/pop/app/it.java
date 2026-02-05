package com.estrongs.android.pop.app;

import android.app.ProgressDialog;
import android.widget.VideoView;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class it implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1042a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1043b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public it(StreamingMediaPlayer streamingMediaPlayer, boolean z) {
        this.f1043b = streamingMediaPlayer;
        this.f1042a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        ProgressDialog progressDialog;
        ProgressDialog progressDialog2;
        VideoView videoView;
        VideoView videoView2;
        VideoView videoView3;
        File file;
        VideoView videoView4;
        VideoView videoView5;
        VideoView videoView6;
        VideoView videoView7;
        VideoView videoView8;
        ProgressDialog progressDialog3;
        ProgressDialog progressDialog4;
        boolean f;
        z = this.f1043b.x;
        if (z) {
            f = this.f1043b.f();
            if (!f) {
                return;
            }
        }
        progressDialog = this.f1043b.v;
        if (progressDialog != null) {
            progressDialog4 = this.f1043b.v;
            if (progressDialog4.isShowing()) {
                this.f1043b.dismissDialog(5);
            }
        }
        progressDialog2 = this.f1043b.w;
        if (progressDialog2 != null) {
            progressDialog3 = this.f1043b.w;
            if (progressDialog3.isShowing()) {
                this.f1043b.dismissDialog(6);
            }
        }
        videoView = this.f1043b.f382b;
        boolean isPlaying = videoView.isPlaying();
        videoView2 = this.f1043b.f382b;
        int currentPosition = videoView2.getCurrentPosition();
        if (isPlaying) {
            videoView8 = this.f1043b.f382b;
            videoView8.pause();
        }
        videoView3 = this.f1043b.f382b;
        file = this.f1043b.j;
        videoView3.setVideoPath(file.getAbsolutePath());
        videoView4 = this.f1043b.f382b;
        videoView4.seekTo(currentPosition);
        videoView5 = this.f1043b.f382b;
        int duration = videoView5.getDuration();
        videoView6 = this.f1043b.f382b;
        boolean z2 = duration - videoView6.getCurrentPosition() <= 0;
        if (this.f1042a || isPlaying || z2) {
            videoView7 = this.f1043b.f382b;
            videoView7.start();
            this.f1043b.h = 0L;
        }
    }
}
