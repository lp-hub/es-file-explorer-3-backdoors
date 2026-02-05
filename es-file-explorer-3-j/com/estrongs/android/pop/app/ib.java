package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ib implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ hz f896a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ib(hz hzVar) {
        this.f896a = hzVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f896a.f892b.finish();
    }
}
