package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dx implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.view.aa f1761a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1762b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dx(dn dnVar, com.estrongs.android.ui.view.aa aaVar) {
        this.f1762b = dnVar;
        this.f1761a = aaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1761a.c();
        this.f1762b.q = true;
    }
}
