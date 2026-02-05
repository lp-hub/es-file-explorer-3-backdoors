package com.estrongs.android.ui.b;

/* loaded from: classes.dex */
class cn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cl f1705a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(cl clVar) {
        this.f1705a = clVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ag agVar;
        com.estrongs.android.a.t.a();
        agVar = this.f1705a.f.f1694a;
        agVar.dismiss();
    }
}
