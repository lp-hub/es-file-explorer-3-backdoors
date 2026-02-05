package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2376a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(d dVar) {
        this.f2376a = dVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        String str;
        this.f2376a.k = false;
        d dVar = this.f2376a;
        str = this.f2376a.f2358a;
        dVar.b((String) null, str);
    }
}
