package com.estrongs.android.pop.view;

/* loaded from: classes.dex */
class db implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.ar f1395a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ da f1396b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public db(da daVar, com.estrongs.android.view.ar arVar) {
        this.f1396b = daVar;
        this.f1395a = arVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1395a.g();
    }
}
