package com.estrongs.android.a;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f247a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(i iVar) {
        this.f247a = iVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f247a.e = i.f242b;
        this.f247a.dismiss();
    }
}
