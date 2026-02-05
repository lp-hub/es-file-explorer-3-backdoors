package com.estrongs.fs.b;

/* loaded from: classes.dex */
class ad implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f2965a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ac acVar) {
        this.f2965a = acVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        if (this.f2965a.g != iVar.d) {
            this.f2965a.sendMessage(1, Long.valueOf(iVar.d - this.f2965a.g), iVar.f196a);
            this.f2965a.g = iVar.d;
        }
    }
}
