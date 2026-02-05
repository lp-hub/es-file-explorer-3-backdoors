package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* renamed from: com.estrongs.android.pop.app.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f900a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cif(ShowDialogActivity showDialogActivity) {
        this.f900a = showDialogActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f900a.finish();
    }
}
