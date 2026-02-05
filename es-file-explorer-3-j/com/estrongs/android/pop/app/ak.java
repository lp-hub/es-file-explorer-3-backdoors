package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class ak implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f450a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileChooserActivity f451b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(FileChooserActivity fileChooserActivity, boolean z) {
        this.f451b = fileChooserActivity;
        this.f450a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return !gVar.getName().startsWith(".") || this.f450a;
    }
}
