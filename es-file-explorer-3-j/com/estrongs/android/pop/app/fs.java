package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class fs implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.widget.g f819a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fp f820b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fs(fp fpVar, com.estrongs.android.widget.g gVar) {
        this.f820b = fpVar;
        this.f819a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f819a.i();
    }
}
