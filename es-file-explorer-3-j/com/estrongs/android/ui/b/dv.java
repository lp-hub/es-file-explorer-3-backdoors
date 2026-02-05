package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dv implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.view.aa f1757a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1758b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dv(dn dnVar, com.estrongs.android.ui.view.aa aaVar) {
        this.f1758b = dnVar;
        this.f1757a = aaVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f1757a.e();
    }
}
