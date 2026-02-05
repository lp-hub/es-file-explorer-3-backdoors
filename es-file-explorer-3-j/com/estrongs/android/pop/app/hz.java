package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hz implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.ag f891a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f892b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hz(ShowDialogActivity showDialogActivity, com.estrongs.android.ui.b.ag agVar) {
        this.f892b = showDialogActivity;
        this.f891a = agVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f891a.setOnDismissListener(null);
        dialogInterface.dismiss();
        com.estrongs.android.ui.pcs.x xVar = new com.estrongs.android.ui.pcs.x(this.f892b, com.estrongs.android.ui.pcs.aw.a().h());
        xVar.a();
        xVar.a(new ia(this));
        xVar.a(new ib(this));
    }
}
