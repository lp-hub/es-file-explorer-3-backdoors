package com.estrongs.android.a;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f244a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(i iVar) {
        this.f244a = iVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f244a.e = i.c;
        this.f244a.dismiss();
    }
}
