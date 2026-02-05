package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bj implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bh f1662a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bh bhVar) {
        this.f1662a = bhVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        bk bkVar;
        bkVar = this.f1662a.f1660a;
        bkVar.b();
    }
}
