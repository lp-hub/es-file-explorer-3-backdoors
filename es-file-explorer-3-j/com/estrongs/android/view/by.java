package com.estrongs.android.view;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class by implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f2793a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bv f2794b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(bv bvVar, com.estrongs.fs.g gVar) {
        this.f2794b = bvVar;
        this.f2793a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.x xVar = new com.estrongs.android.ui.pcs.x(this.f2794b.f2789a.ad);
        xVar.a(new bz(this));
        xVar.a();
        dialogInterface.dismiss();
    }
}
