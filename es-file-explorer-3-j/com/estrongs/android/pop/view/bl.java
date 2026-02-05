package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1347a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(FileExplorerActivity fileExplorerActivity) {
        this.f1347a = fileExplorerActivity;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return !gVar.getName().startsWith(".") || this.f1347a.X;
    }
}
