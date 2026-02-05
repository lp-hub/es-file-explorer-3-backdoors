package com.estrongs.android.a;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f243a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar) {
        this.f243a = iVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f243a.e = i.f241a;
        this.f243a.dismiss();
    }
}
