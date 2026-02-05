package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class je implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1057a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public je(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1057a = streamingMediaPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1057a.showDialog(2);
    }
}
