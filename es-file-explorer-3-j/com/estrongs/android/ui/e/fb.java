package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fb implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.a.af f2122a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fa f2123b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(fa faVar, com.estrongs.android.pop.app.a.af afVar) {
        this.f2123b = faVar;
        this.f2122a = afVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2123b.f2121a.b(this.f2122a.f397b, i != 0 ? i == 1 ? 2 : 4 : 1);
        dialogInterface.dismiss();
    }
}
