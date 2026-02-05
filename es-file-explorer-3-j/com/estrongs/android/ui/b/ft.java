package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ft implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1831a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fr f1832b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ft(fr frVar, com.estrongs.a.a aVar) {
        this.f1832b = frVar;
        this.f1831a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f1831a.canCancel()) {
            this.f1832b.dismiss();
            this.f1831a.requestStop();
        }
    }
}
