package com.estrongs.a.b;

/* loaded from: classes.dex */
class h implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f206a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(d dVar) {
        this.f206a = dVar;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return gVar.getFileType().a() && !gVar.getName().startsWith(".");
    }
}
