package com.estrongs.android.pop.app;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class iy extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1049a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iy(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1049a = streamingMediaPlayer;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        Handler handler;
        com.estrongs.fs.d dVar;
        String str2;
        long j = -1;
        com.estrongs.fs.c cVar = null;
        try {
            dVar = this.f1049a.f381a;
            str2 = this.f1049a.m;
            cVar = dVar.c(str2);
            j = cVar.e;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (cVar == null) {
            handler = this.f1049a.i;
            handler.post(new iz(this));
        } else {
            this.f1049a.f = j;
            StreamingMediaPlayer streamingMediaPlayer = this.f1049a;
            str = this.f1049a.m;
            streamingMediaPlayer.a(str, j);
        }
    }
}
