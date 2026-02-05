package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1351a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1352b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(FileExplorerActivity fileExplorerActivity, boolean z) {
        this.f1352b = fileExplorerActivity;
        this.f1351a = z;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar.getFileType().a()) {
            return !gVar.getName().startsWith(".") || this.f1351a;
        }
        return false;
    }
}
