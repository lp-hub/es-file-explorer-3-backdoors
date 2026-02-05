package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ as f2295a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(as asVar) {
        this.f2295a = asVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        String str;
        as asVar = this.f2295a;
        str = this.f2295a.g;
        asVar.a(str);
    }
}
