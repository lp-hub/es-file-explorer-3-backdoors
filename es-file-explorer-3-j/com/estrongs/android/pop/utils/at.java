package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class at implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1202a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f1203b;
    final /* synthetic */ Boolean[] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(Activity activity, com.estrongs.android.ui.pcs.v vVar, Boolean[] boolArr) {
        this.f1202a = activity;
        this.f1203b = vVar;
        this.c = boolArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.d dVar = new com.estrongs.android.ui.pcs.d(this.f1202a);
        dVar.a(this.f1203b);
        dVar.a();
        this.c[0] = false;
        dialogInterface.dismiss();
    }
}
