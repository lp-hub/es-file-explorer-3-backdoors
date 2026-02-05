package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class im implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ il f910a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public im(il ilVar) {
        this.f910a = ilVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f910a.c.finish();
    }
}
