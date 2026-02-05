package com.estrongs.android.view;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ca implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f2797a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bv f2798b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(bv bvVar, com.estrongs.fs.g gVar) {
        this.f2798b = bvVar;
        this.f2797a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.d dVar = new com.estrongs.android.ui.pcs.d(this.f2798b.f2789a.ad);
        dVar.a(new cb(this));
        dVar.a();
        dialogInterface.dismiss();
    }
}
