package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ij implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f906a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ij(ShowDialogActivity showDialogActivity) {
        this.f906a = showDialogActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f906a.finish();
    }
}
