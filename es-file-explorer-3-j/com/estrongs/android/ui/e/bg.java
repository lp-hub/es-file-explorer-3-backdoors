package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bg implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bf f2005a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(bf bfVar) {
        this.f2005a = bfVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (i == 0) {
            this.f2005a.f2004a.k.a(this.f2005a.f2004a.k.u(), false);
        } else {
            this.f2005a.f2004a.k.a(this.f2005a.f2004a.k.u(), true);
        }
    }
}
