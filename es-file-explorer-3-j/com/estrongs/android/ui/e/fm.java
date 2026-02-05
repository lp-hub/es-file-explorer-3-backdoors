package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class fm implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.ag f2136a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fm(com.estrongs.android.ui.b.ag agVar) {
        this.f2136a = agVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2136a.dismiss();
    }
}
