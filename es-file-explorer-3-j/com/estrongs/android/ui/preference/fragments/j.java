package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class j implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f2470a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2471b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(g gVar, com.estrongs.android.widget.g gVar2) {
        this.f2471b = gVar;
        this.f2470a = gVar2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2470a.i();
    }
}
