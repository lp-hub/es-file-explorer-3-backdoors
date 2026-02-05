package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import android.widget.MediaController;
import android.widget.VideoView;

/* loaded from: classes.dex */
class gp extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f850a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gp(PopVideoPlayer popVideoPlayer) {
        this.f850a = popVideoPlayer;
    }

    @Override // android.os.Handler
    public synchronized void handleMessage(Message message) {
        VideoView videoView;
        VideoView videoView2;
        MediaController mediaController;
        Handler handler;
        Handler handler2;
        VideoView videoView3;
        MediaController mediaController2;
        Handler handler3;
        Handler handler4;
        VideoView videoView4;
        MediaController mediaController3;
        Handler handler5;
        Handler handler6;
        MediaController mediaController4;
        VideoView videoView5;
        VideoView videoView6;
        if (message.what == 1) {
            videoView5 = this.f850a.k;
            if (videoView5.isPlaying()) {
                videoView6 = this.f850a.k;
                videoView6.pause();
            }
        } else if (message.what == 2) {
            try {
                videoView = this.f850a.k;
                videoView.setVideoURI(this.f850a.getIntent().getData());
                videoView2 = this.f850a.k;
                videoView2.start();
                com.estrongs.android.util.m.a();
                if (message.arg1 > 0) {
                    videoView4 = this.f850a.k;
                    videoView4.seekTo(message.arg1);
                }
                if (message.arg2 == 1 && "Market".startsWith("Spreadtrum")) {
                    videoView3 = this.f850a.k;
                    videoView3.pause();
                    mediaController2 = this.f850a.l;
                    mediaController2.invalidate();
                    handler3 = this.f850a.r;
                    Message obtainMessage = handler3.obtainMessage(4);
                    handler4 = this.f850a.r;
                    handler4.sendMessageDelayed(obtainMessage, 100L);
                    message.arg1 = 1;
                }
                if (message.arg1 == 0 && this.f850a.getIntent().getData().toString().endsWith("3gpp")) {
                    mediaController = this.f850a.l;
                    mediaController.show();
                    handler = this.f850a.r;
                    Message obtainMessage2 = handler.obtainMessage(3);
                    handler2 = this.f850a.r;
                    handler2.sendMessageDelayed(obtainMessage2, 3000L);
                }
            } catch (Exception e) {
            }
        } else if (message.what == 3) {
            mediaController4 = this.f850a.l;
            mediaController4.hide();
        } else if (message.what == 4) {
            mediaController3 = this.f850a.l;
            mediaController3.show();
            handler5 = this.f850a.r;
            Message obtainMessage3 = handler5.obtainMessage(3);
            handler6 = this.f850a.r;
            handler6.sendMessageDelayed(obtainMessage3, 3000L);
        }
    }
}
