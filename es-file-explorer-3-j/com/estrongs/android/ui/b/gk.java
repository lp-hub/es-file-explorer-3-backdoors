package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class gk implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gi f1857a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gk(gi giVar) {
        this.f1857a = giVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1857a.dismiss();
    }
}
