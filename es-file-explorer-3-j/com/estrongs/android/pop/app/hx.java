package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class hx implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f888a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hx(ShowDialogActivity showDialogActivity) {
        this.f888a = showDialogActivity;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f888a.finish();
    }
}
