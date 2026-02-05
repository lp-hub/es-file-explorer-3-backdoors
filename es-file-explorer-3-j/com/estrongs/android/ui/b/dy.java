package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dy implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.view.aa f1763a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1764b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dy(dn dnVar, com.estrongs.android.ui.view.aa aaVar) {
        this.f1764b = dnVar;
        this.f1763a = aaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1763a.b();
    }
}
