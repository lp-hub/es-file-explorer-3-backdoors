package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ep implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ en f2107a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ep(en enVar) {
        this.f2107a = enVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
