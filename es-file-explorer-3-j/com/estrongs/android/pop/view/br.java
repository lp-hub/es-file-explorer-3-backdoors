package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class br implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bq f1354a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(bq bqVar) {
        this.f1354a = bqVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
