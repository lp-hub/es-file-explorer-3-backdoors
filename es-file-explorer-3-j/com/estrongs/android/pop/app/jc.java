package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class jc implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ja f1055a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jc(ja jaVar) {
        this.f1055a = jaVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        z = this.f1055a.f1053b.l;
        if (z) {
            return;
        }
        this.f1055a.f1053b.showDialog(3);
    }
}
