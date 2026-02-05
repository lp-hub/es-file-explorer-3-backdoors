package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ar implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1199a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f1200b;
    final /* synthetic */ Boolean[] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(Activity activity, com.estrongs.android.ui.pcs.v vVar, Boolean[] boolArr) {
        this.f1199a = activity;
        this.f1200b = vVar;
        this.c = boolArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.x xVar = new com.estrongs.android.ui.pcs.x(this.f1199a);
        xVar.a(new as(this));
        xVar.a();
        this.c[0] = false;
        dialogInterface.dismiss();
    }
}
