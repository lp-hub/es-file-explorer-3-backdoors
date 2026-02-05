package com.estrongs.android.pop.app.editor;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f739a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(an anVar) {
        this.f739a = anVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        an anVar = this.f739a;
        i2 = this.f739a.d;
        anVar.e = i2;
        dialogInterface.dismiss();
    }
}
