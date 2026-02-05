package com.estrongs.a;

/* loaded from: classes.dex */
final class k extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f224a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(a aVar) {
        this.f224a = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f224a.execute(false);
    }
}
