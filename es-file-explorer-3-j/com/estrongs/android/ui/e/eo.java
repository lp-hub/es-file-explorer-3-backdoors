package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class eo implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ en f2106a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eo(en enVar) {
        this.f2106a = enVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
