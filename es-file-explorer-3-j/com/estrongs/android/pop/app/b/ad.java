package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ad implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f477a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(w wVar) {
        this.f477a = wVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f477a.g.setText(this.f477a.f.get(this.f477a.h));
        this.f477a.a(this.f477a.h, this.f477a.g.getText());
    }
}
