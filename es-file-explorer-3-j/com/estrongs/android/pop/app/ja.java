package com.estrongs.android.pop.app;

import android.os.Handler;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ja implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1052a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1053b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ja(StreamingMediaPlayer streamingMediaPlayer, String str) {
        this.f1053b = streamingMediaPlayer;
        this.f1052a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler;
        Handler handler2;
        try {
            handler2 = this.f1053b.i;
            handler2.post(new jb(this));
            this.f1053b.a(this.f1052a);
        } catch (IOException e) {
            handler = this.f1053b.i;
            handler.post(new jc(this));
        }
    }
}
