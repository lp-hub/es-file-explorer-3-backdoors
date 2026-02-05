package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fd implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ fa f1813a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fd(fa faVar) {
        this.f1813a = faVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1813a.c.f1804a.dismiss();
    }
}
