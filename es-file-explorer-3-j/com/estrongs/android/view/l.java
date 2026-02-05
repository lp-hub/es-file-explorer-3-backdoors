package com.estrongs.android.view;

/* loaded from: classes.dex */
class l implements com.estrongs.android.pop.app.compress.am {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2842a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(e eVar) {
        this.f2842a = eVar;
    }

    @Override // com.estrongs.android.pop.app.compress.am
    public void a() {
        this.f2842a.c = true;
    }

    @Override // com.estrongs.android.pop.app.compress.am
    public void b() {
        this.f2842a.c = false;
        if (this.f2842a.U()) {
            this.f2842a.n();
        }
    }
}
