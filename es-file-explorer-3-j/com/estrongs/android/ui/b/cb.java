package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class cb implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f1688a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(bz bzVar) {
        this.f1688a = bzVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
