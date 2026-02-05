package com.estrongs.android.ui.e;

import android.os.Handler;

/* loaded from: classes.dex */
class ah extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f1978a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.de[] f1979b;
    final /* synthetic */ af c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(af afVar, Handler handler, com.estrongs.android.ui.b.de[] deVarArr) {
        this.c = afVar;
        this.f1978a = handler;
        this.f1979b = deVarArr;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        com.estrongs.android.pop.app.a.aj.a().e();
        this.f1978a.post(new ai(this));
    }
}
