package com.estrongs.android.ui.h;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f2252a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(h hVar) {
        this.f2252a = hVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        c cVar;
        cVar = this.f2252a.f2249b;
        cVar.h();
        dialogInterface.dismiss();
    }
}
