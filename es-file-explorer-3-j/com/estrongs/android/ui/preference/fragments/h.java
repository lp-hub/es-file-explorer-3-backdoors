package com.estrongs.android.ui.preference.fragments;

/* loaded from: classes.dex */
class h implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f2466a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2467b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, boolean z) {
        this.f2467b = gVar;
        this.f2466a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return !gVar.getName().startsWith(".") || this.f2466a;
    }
}
