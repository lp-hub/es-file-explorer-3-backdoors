package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f627a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(l lVar) {
        this.f627a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        as asVar;
        com.estrongs.io.a.a.a aVar;
        com.estrongs.io.a.a.a aVar2;
        as asVar2;
        l lVar = this.f627a;
        asVar = this.f627a.p;
        lVar.t = asVar.a();
        aVar = this.f627a.n;
        synchronized (aVar) {
            aVar2 = this.f627a.n;
            aVar2.notify();
            asVar2 = this.f627a.p;
            asVar2.dismiss();
        }
    }
}
