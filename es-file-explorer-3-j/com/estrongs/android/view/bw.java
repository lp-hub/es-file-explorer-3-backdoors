package com.estrongs.android.view;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bw implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f2790a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bv f2791b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(bv bvVar, com.estrongs.fs.g gVar) {
        this.f2791b = bvVar;
        this.f2790a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(this.f2791b.f2789a.ad);
        aVar.a();
        aVar.a(new bx(this));
        dialogInterface.dismiss();
    }
}
