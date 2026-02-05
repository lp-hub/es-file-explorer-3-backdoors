package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f628a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(l lVar) {
        this.f628a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.io.a.a.a aVar;
        com.estrongs.io.a.a.a aVar2;
        com.estrongs.io.a.a.a aVar3;
        as asVar;
        this.f628a.t = null;
        aVar = this.f628a.n;
        synchronized (aVar) {
            aVar2 = this.f628a.n;
            aVar2.d();
            aVar3 = this.f628a.n;
            aVar3.notify();
            asVar = this.f628a.p;
            asVar.dismiss();
        }
    }
}
