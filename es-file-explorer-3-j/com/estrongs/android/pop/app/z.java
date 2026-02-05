package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1092a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f1093b;
    final /* synthetic */ DialogInterface.OnCancelListener c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(Activity activity, com.estrongs.android.ui.pcs.v vVar, DialogInterface.OnCancelListener onCancelListener) {
        this.f1092a = activity;
        this.f1093b = vVar;
        this.c = onCancelListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.x xVar = new com.estrongs.android.ui.pcs.x(this.f1092a);
        xVar.a(new aa(this));
        xVar.a(this.c);
        xVar.a();
        dialogInterface.dismiss();
    }
}
