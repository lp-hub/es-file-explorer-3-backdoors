package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ah implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f2442a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(ag agVar) {
        this.f2442a = agVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
