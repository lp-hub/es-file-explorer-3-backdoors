package com.estrongs.android.ui.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class r implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f1602a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar) {
        this.f1602a = qVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1602a.f1601b.notifyDataSetChanged();
    }
}
