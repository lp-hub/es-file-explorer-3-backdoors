package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class z implements com.estrongs.android.ui.b.bc {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ y f2196a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(y yVar) {
        this.f2196a = yVar;
    }

    @Override // com.estrongs.android.ui.b.bc
    public void a(int i) {
        com.estrongs.android.ui.b.ba baVar;
        baVar = this.f2196a.f2195a.K;
        baVar.dismiss();
        new aa(this, i).start();
    }
}
