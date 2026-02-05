package com.estrongs.android.widget;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2890a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ah ahVar) {
        this.f2890a = ahVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f2890a.i.a_();
    }
}
