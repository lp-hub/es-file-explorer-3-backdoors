package com.estrongs.android.widget;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class q implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f2932a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar) {
        this.f2932a = pVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
