package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class eb extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.a.aj f708a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f709b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(PopAudioPlayer popAudioPlayer, com.estrongs.android.pop.app.a.aj ajVar) {
        this.f709b = popAudioPlayer;
        this.f708a = ajVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f708a.e();
    }
}
