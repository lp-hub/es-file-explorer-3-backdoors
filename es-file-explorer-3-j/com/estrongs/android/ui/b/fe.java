package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fe implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ fa f1814a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fe(fa faVar) {
        this.f1814a = faVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1814a.c.f1804a.dismiss();
    }
}
