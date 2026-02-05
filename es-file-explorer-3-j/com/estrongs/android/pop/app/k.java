package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class k extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AudioPlayerService f1060a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(AudioPlayerService audioPlayerService) {
        this.f1060a = audioPlayerService;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f1060a.s();
    }
}
