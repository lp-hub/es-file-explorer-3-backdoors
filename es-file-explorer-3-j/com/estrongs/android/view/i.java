package com.estrongs.android.view;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2838a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(e eVar) {
        this.f2838a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.pop.app.compress.an anVar;
        com.estrongs.android.pop.app.compress.as asVar;
        com.estrongs.android.pop.app.compress.an anVar2;
        com.estrongs.android.pop.app.compress.as asVar2;
        anVar = this.f2838a.ap;
        asVar = this.f2838a.ar;
        anVar.a(asVar.a());
        anVar2 = this.f2838a.ap;
        anVar2.show();
        asVar2 = this.f2838a.ar;
        asVar2.dismiss();
    }
}
