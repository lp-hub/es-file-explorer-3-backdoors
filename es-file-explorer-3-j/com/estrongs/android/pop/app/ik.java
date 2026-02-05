package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ik implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f907a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ik(ShowDialogActivity showDialogActivity) {
        this.f907a = showDialogActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f907a.finish();
    }
}
