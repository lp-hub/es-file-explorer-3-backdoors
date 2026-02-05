package com.estrongs.android.ui.b;

/* loaded from: classes.dex */
class cw implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cu f1717a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cw(cu cuVar) {
        this.f1717a = cuVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ag agVar;
        agVar = this.f1717a.f1715b.f1709a;
        agVar.dismiss();
    }
}
