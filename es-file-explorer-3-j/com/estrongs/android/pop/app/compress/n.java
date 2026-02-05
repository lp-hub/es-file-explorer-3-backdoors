package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f618a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(l lVar) {
        this.f618a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.io.archive.h hVar;
        com.estrongs.io.a.a.a aVar;
        com.estrongs.io.archive.h hVar2;
        hVar = this.f618a.z;
        if (hVar != null) {
            hVar2 = this.f618a.z;
            hVar2.d();
        }
        aVar = this.f618a.n;
        aVar.d();
        this.f618a.c();
    }
}
