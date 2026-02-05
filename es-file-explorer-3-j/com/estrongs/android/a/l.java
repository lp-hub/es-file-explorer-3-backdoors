package com.estrongs.android.a;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f245a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(i iVar) {
        this.f245a = iVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f245a.e = i.f242b;
        this.f245a.dismiss();
    }
}
