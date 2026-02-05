package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f588a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(z zVar) {
        this.f588a = zVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.io.a.a.b bVar;
        bVar = this.f588a.v;
        bVar.d();
        this.f588a.a();
    }
}
