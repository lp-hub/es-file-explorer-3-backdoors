package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ak implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f587a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(ah ahVar) {
        this.f587a = ahVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        z.a(this.f587a.f584a, i);
    }
}
