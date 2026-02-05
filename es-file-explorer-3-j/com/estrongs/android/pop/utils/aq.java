package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class aq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1197a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.v f1198b;
    final /* synthetic */ Boolean[] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(Activity activity, com.estrongs.android.ui.pcs.v vVar, Boolean[] boolArr) {
        this.f1197a = activity;
        this.f1198b = vVar;
        this.c = boolArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(this.f1197a);
        aVar.a();
        aVar.a(this.f1198b);
        this.c[0] = false;
        dialogInterface.dismiss();
    }
}
