package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class q implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f2482a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f2483b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(n nVar, com.estrongs.android.widget.g gVar) {
        this.f2483b = nVar;
        this.f2482a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2482a.i();
    }
}
