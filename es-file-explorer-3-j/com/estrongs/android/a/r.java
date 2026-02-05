package com.estrongs.android.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class r implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f251a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(p pVar) {
        this.f251a = pVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f251a.c = 2;
        this.f251a.dismiss();
    }
}
