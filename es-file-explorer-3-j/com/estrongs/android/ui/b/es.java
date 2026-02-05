package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class es implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f1795a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ eq f1796b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public es(eq eqVar, com.estrongs.android.widget.g gVar) {
        this.f1796b = eqVar;
        this.f1795a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1796b.f1792a.c = "open_folder" + this.f1795a.d().getAbsolutePath();
        dialogInterface.dismiss();
        this.f1796b.f1792a.c();
    }
}
