package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class jb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ja f1054a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jb(ja jaVar) {
        this.f1054a = jaVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1054a.f1053b.showDialog(6);
    }
}
