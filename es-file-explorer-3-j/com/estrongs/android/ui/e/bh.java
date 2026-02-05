package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bh implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bf f2006a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(bf bfVar) {
        this.f2006a = bfVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (i == 0) {
            this.f2006a.f2004a.k.a(this.f2006a.f2004a.k.u(), false);
        } else {
            this.f2006a.f2004a.k.a(this.f2006a.f2004a.k.u(), true);
        }
    }
}
