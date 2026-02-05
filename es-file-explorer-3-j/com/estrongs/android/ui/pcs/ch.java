package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ch implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2352a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(bt btVar) {
        this.f2352a = btVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.b.ag agVar;
        agVar = this.f2352a.h;
        agVar.dismiss();
    }
}
