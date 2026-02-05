package com.estrongs.android.ui.preference;

/* loaded from: classes.dex */
class b implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f2405a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ DirChoosePreference f2406b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(DirChoosePreference dirChoosePreference, boolean z) {
        this.f2406b = dirChoosePreference;
        this.f2405a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return !gVar.getName().startsWith(".") || this.f2405a;
    }
}
