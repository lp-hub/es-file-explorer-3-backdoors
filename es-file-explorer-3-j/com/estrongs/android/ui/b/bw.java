package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bw implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bv f1682a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(bv bvVar) {
        this.f1682a = bvVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1682a.f1680a.a();
        dialogInterface.dismiss();
    }
}
