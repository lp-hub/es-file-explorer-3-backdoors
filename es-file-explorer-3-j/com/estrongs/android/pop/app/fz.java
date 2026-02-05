package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fz implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f831a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fw f832b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fz(fw fwVar, com.estrongs.android.widget.g gVar) {
        this.f832b = fwVar;
        this.f831a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f831a.i();
    }
}
