package com.estrongs.android.view;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2839a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(e eVar) {
        this.f2839a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.pop.app.compress.as asVar;
        asVar = this.f2839a.ar;
        asVar.dismiss();
    }
}
