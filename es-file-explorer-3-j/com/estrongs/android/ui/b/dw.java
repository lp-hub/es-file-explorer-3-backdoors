package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dw implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.view.aa f1759a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1760b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dw(dn dnVar, com.estrongs.android.ui.view.aa aaVar) {
        this.f1760b = dnVar;
        this.f1759a = aaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1759a.d();
    }
}
