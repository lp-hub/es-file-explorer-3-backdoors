package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class cc implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.view.b f1689a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bz f1690b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(bz bzVar, com.estrongs.android.ui.view.b bVar) {
        this.f1690b = bzVar;
        this.f1689a = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1689a.d.onClick(null);
    }
}
