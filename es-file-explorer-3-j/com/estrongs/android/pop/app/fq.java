package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class fq implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f815a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fp f816b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fq(fp fpVar, boolean z) {
        this.f816b = fpVar;
        this.f815a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return !gVar.getName().startsWith(".") || this.f815a;
    }
}
