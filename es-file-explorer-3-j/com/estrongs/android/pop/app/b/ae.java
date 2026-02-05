package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ae implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f478a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(w wVar) {
        this.f478a = wVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f478a.g.setText(this.f478a.f.get(this.f478a.h));
        this.f478a.a(this.f478a.h, this.f478a.g.getText());
        dialogInterface.dismiss();
    }
}
