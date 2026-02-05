package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class i implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f2468a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2469b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar, com.estrongs.android.widget.g gVar2) {
        this.f2469b = gVar;
        this.f2468a = gVar2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2468a.i();
        this.f2469b.f2465b.setText(this.f2468a.e());
    }
}
