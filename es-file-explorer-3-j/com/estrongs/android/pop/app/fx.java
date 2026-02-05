package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class fx implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f827a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fw f828b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fx(fw fwVar, boolean z) {
        this.f828b = fwVar;
        this.f827a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar.getFileType().a()) {
            return !gVar.getName().startsWith(".") || this.f827a;
        }
        String name = gVar.getName();
        if (name != null) {
            return com.estrongs.android.util.av.h(name);
        }
        return false;
    }
}
