package com.estrongs.android.ui.b;

/* loaded from: classes.dex */
class er implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1793a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ eq f1794b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public er(eq eqVar, boolean z) {
        this.f1794b = eqVar;
        this.f1793a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return (!gVar.getName().startsWith(".") || this.f1793a) && gVar.getFileType().a();
    }
}
