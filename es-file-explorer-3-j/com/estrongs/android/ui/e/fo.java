package com.estrongs.android.ui.e;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class fo implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.ag f2139a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fo(com.estrongs.android.ui.b.ag agVar) {
        this.f2139a = agVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2139a.dismiss();
    }
}
