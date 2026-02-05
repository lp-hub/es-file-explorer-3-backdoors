package com.estrongs.android.pop.app.compress;

/* loaded from: classes.dex */
class g implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f608a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f609b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar, boolean z) {
        this.f609b = fVar;
        this.f608a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return !gVar.getName().startsWith(".") || this.f608a;
    }
}
