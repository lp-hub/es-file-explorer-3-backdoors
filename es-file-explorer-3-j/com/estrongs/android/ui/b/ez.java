package com.estrongs.android.ui.b;

/* loaded from: classes.dex */
class ez implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1805a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ey f1806b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(ey eyVar, com.estrongs.a.a aVar) {
        this.f1806b = eyVar;
        this.f1805a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        com.estrongs.android.ui.notification.e eVar;
        com.estrongs.android.ui.notification.e eVar2;
        z = this.f1806b.f1804a.k;
        if (z) {
            return;
        }
        eVar = this.f1806b.f1804a.t;
        if (eVar != null) {
            ew.e.remove(Long.valueOf(this.f1805a.getTaskId()));
            eVar2 = this.f1806b.f1804a.t;
            eVar2.a();
            this.f1806b.f1804a.t = null;
        }
    }
}
