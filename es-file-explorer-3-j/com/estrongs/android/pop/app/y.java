package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;

/* loaded from: classes.dex */
final class y implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1090a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f1091b;
    final /* synthetic */ DialogInterface.OnCancelListener c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Activity activity, com.estrongs.android.ui.pcs.v vVar, DialogInterface.OnCancelListener onCancelListener) {
        this.f1090a = activity;
        this.f1091b = vVar;
        this.c = onCancelListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(this.f1090a);
        aVar.a();
        aVar.a(this.f1091b);
        aVar.a(this.c);
        dialogInterface.dismiss();
    }
}
