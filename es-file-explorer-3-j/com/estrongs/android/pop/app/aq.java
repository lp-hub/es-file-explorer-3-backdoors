package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class aq implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f460a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileChooserActivity f461b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(FileChooserActivity fileChooserActivity, boolean z) {
        this.f461b = fileChooserActivity;
        this.f460a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar.getFileType().a()) {
            return !gVar.getName().startsWith(".") || this.f460a;
        }
        return false;
    }
}
