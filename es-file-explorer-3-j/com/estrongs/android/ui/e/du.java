package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class du implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dt f2080a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public du(dt dtVar) {
        this.f2080a = dtVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
