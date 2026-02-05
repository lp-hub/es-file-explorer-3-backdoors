package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2272a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(x xVar) {
        this.f2272a = xVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        boolean z;
        String str;
        this.f2272a.D = false;
        z = this.f2272a.e;
        if (z) {
            return;
        }
        x xVar = this.f2272a;
        str = this.f2272a.d;
        xVar.b(str);
    }
}
