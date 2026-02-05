package com.estrongs.android.pop.app;

import android.media.MediaPlayer;

/* loaded from: classes.dex */
class iu implements MediaPlayer.OnCompletionListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1044a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iu(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1044a = streamingMediaPlayer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
    
        if (r0 != false) goto L11;
     */
    @Override // android.media.MediaPlayer.OnCompletionListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCompletion(MediaPlayer mediaPlayer) {
        long j;
        long j2;
        long j3;
        boolean z;
        boolean f;
        j = this.f1044a.h;
        if (j == 0) {
            return;
        }
        j2 = this.f1044a.h;
        if (j2 < 262144) {
            j3 = this.f1044a.h;
            if (j3 > 0) {
                f = this.f1044a.f();
            }
            z = this.f1044a.x;
            if (!z) {
                this.f1044a.showDialog(6);
            }
            new Thread(new iv(this)).start();
            return;
        }
        this.f1044a.a(false);
    }
}
