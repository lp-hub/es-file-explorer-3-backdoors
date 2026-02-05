package com.estrongs.fs.b;

/* loaded from: classes.dex */
class ap implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ao f2981a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(ao aoVar) {
        this.f2981a = aoVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.a.a.e eVar;
        com.estrongs.a.a.e eVar2;
        com.estrongs.a.a.e eVar3;
        com.estrongs.a.a.e eVar4;
        try {
            Thread.sleep(500L);
        } catch (InterruptedException e) {
        }
        eVar = this.f2981a.f2980a.h;
        synchronized (eVar) {
            eVar2 = this.f2981a.f2980a.h;
            eVar2.g = 1;
            eVar3 = this.f2981a.f2980a.h;
            eVar3.f = true;
            eVar4 = this.f2981a.f2980a.h;
            eVar4.notify();
        }
    }
}
