package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ci implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ch f1699a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci(ch chVar) {
        this.f1699a = chVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
