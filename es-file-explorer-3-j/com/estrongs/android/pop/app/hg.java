package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class hg extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f870a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hg(PopVideoPlayer popVideoPlayer) {
        this.f870a = popVideoPlayer;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Thread.sleep(3000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.f870a.runOnUiThread(new hh(this));
    }
}
