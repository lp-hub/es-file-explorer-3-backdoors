package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.eo f518a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ az f519b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(az azVar, com.estrongs.android.ui.b.eo eoVar) {
        this.f519b = azVar;
        this.f518a = eoVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        String a2 = this.f518a.a();
        if (a2 == null) {
            return;
        }
        com.estrongs.android.ui.b.cd cdVar = new com.estrongs.android.ui.b.cd(this.f519b.f470a, a2);
        cdVar.a();
        cdVar.a(new bb(this));
    }
}
