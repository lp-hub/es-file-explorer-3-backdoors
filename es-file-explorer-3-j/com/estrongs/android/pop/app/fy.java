package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class fy implements com.estrongs.android.view.bt {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f829a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fw f830b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fy(fw fwVar, com.estrongs.android.widget.g gVar) {
        this.f830b = fwVar;
        this.f829a = gVar;
    }

    @Override // com.estrongs.android.view.bt
    public void a(com.estrongs.fs.g gVar) {
        this.f830b.f825a.setText(gVar.getPath());
        this.f829a.i();
    }
}
