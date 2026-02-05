package com.estrongs.android.ui.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bk implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bj f1526a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(bj bjVar) {
        this.f1526a = bjVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1526a.c.d.notifyDataSetChanged();
    }
}
