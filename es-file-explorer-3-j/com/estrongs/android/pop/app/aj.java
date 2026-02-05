package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class aj implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f449a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ag agVar) {
        this.f449a = agVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        boolean aj = com.estrongs.android.pop.q.a(this.f449a.f446a).aj();
        this.f449a.f446a.f344b.setChecked(!aj);
        this.f449a.f446a.c.setChecked(aj);
    }
}
