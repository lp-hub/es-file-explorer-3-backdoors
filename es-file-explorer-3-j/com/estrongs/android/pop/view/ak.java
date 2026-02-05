package com.estrongs.android.pop.view;

/* loaded from: classes.dex */
class ak implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    boolean f1307a = true;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1308b = false;
    final /* synthetic */ FileExplorerActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(FileExplorerActivity fileExplorerActivity) {
        this.c = fileExplorerActivity;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar == null) {
            this.f1308b = false;
            return true;
        }
        if (!this.f1308b) {
            this.f1308b = true;
            this.f1307a = this.c.m.p();
        }
        return this.f1307a || gVar.getName() == null || !gVar.getName().startsWith(".");
    }
}
