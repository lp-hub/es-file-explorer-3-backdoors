package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class y implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f515a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(x xVar) {
        this.f515a = xVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f515a.f514b.setText(this.f515a.c.f.get(i));
        this.f515a.c.a(i, this.f515a.c.f.get(i));
        dialogInterface.dismiss();
    }
}
