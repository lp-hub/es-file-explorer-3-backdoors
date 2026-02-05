package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class jd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1056a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jd(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1056a = streamingMediaPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1056a != null) {
            this.f1056a.showDialog(1);
        }
    }
}
