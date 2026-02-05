package com.estrongs.android.a;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f246a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(i iVar) {
        this.f246a = iVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f246a.e = i.f241a;
        this.f246a.dismiss();
    }
}
