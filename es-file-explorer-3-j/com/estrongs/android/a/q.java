package com.estrongs.android.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class q implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f250a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar) {
        this.f250a = pVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f250a.c = 3;
        this.f250a.dismiss();
    }
}
