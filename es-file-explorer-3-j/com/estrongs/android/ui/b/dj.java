package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class dj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.util.n f1738a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ df f1739b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(df dfVar, com.estrongs.android.util.n nVar) {
        this.f1739b = dfVar;
        this.f1738a = nVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f1738a.isAlive()) {
            this.f1738a.a();
        }
        dialogInterface.dismiss();
    }
}
