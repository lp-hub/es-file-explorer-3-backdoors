package com.estrongs.android.ui.preference.fragments;

import com.estrongs.android.util.av;

/* loaded from: classes.dex */
class o implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f2478a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f2479b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar, boolean z) {
        this.f2479b = nVar;
        this.f2478a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar.getFileType().a()) {
            return !gVar.getName().startsWith(".") || this.f2478a;
        }
        String name = gVar.getName();
        if (name != null) {
            return av.h(name);
        }
        return false;
    }
}
