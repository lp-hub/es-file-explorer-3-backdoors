package com.estrongs.android.pop.utils;

/* loaded from: classes.dex */
class bd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.ar f1222a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bc f1223b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(bc bcVar, com.estrongs.android.view.ar arVar) {
        this.f1223b = bcVar;
        this.f1222a = arVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1222a.e();
    }
}
