package com.estrongs.android.pop.utils;

/* loaded from: classes.dex */
class ba implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.ar f1216a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ az f1217b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(az azVar, com.estrongs.android.view.ar arVar) {
        this.f1217b = azVar;
        this.f1216a = arVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1216a.e();
    }
}
