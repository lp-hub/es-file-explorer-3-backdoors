package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ab implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f439a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f440b;
    final /* synthetic */ DialogInterface.OnCancelListener c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(Activity activity, com.estrongs.android.ui.pcs.v vVar, DialogInterface.OnCancelListener onCancelListener) {
        this.f439a = activity;
        this.f440b = vVar;
        this.c = onCancelListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.d dVar = new com.estrongs.android.ui.pcs.d(this.f439a);
        dVar.a(this.f440b);
        dVar.a(this.c);
        dVar.a();
        com.estrongs.android.ui.pcs.aw.a().a(dVar);
        dialogInterface.dismiss();
    }
}
