package com.estrongs.android.ui.b;

/* loaded from: classes.dex */
class dh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dg f1735a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dh(dg dgVar) {
        this.f1735a = dgVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1735a.f1733a.isShowing()) {
            this.f1735a.f1733a.dismiss();
        }
    }
}
