package com.estrongs.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class h implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f221a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar) {
        this.f221a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f221a.f217a.g = 3;
        this.f221a.f218b.sendMessage(5, this.f221a.f217a);
    }
}
