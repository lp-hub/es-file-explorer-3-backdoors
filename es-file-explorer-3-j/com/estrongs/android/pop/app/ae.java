package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ae implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ad f444a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ad adVar) {
        this.f444a = adVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f444a.c.finish();
    }
}
