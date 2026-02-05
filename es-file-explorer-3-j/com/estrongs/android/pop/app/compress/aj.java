package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class aj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f586a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ah ahVar) {
        this.f586a = ahVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        z.o(this.f586a.f584a).setText(z.m(this.f586a.f584a)[z.n(this.f586a.f584a)]);
        dialogInterface.dismiss();
    }
}
