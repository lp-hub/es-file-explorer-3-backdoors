package com.estrongs.android.ui.theme;

import com.estrongs.android.util.av;

/* loaded from: classes.dex */
class g implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f2543a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f2544b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar, boolean z) {
        this.f2544b = fVar;
        this.f2543a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar.getFileType().a()) {
            return !gVar.getName().startsWith(".") || this.f2543a;
        }
        String name = gVar.getName();
        if (name != null) {
            return av.b(name);
        }
        return false;
    }
}
