package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class ea extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.a.aj f706a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f707b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ea(PopAudioPlayer popAudioPlayer, com.estrongs.android.pop.app.a.aj ajVar) {
        this.f707b = popAudioPlayer;
        this.f706a = ajVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f706a.i();
    }
}
