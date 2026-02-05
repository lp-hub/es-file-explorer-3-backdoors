package com.estrongs.android.pop.app.editor;

/* loaded from: classes.dex */
class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f759a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar) {
        this.f759a = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar;
        this.f759a.f758a.f();
        cVar = this.f759a.f758a.P;
        cVar.i();
        this.f759a.f758a.g = null;
        this.f759a.f758a.finish();
    }
}
