package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class id implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f898a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public id(ShowDialogActivity showDialogActivity) {
        this.f898a = showDialogActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
