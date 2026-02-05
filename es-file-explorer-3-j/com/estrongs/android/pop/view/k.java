package com.estrongs.android.pop.view;

/* loaded from: classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f1417a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar) {
        this.f1417a = jVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.b("PCS_Home_Page_UV", "PCS_Home_Page_UV");
        }
        this.f1417a.f1416b.bj = null;
    }
}
