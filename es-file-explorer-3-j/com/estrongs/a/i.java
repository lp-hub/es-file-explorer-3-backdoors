package com.estrongs.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class i implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f222a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(e eVar) {
        this.f222a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f222a.f217a.g = 2;
        this.f222a.f217a.f = false;
        this.f222a.f218b.sendMessage(5, this.f222a.f217a);
    }
}
