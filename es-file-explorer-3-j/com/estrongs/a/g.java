package com.estrongs.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class g implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f220a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e eVar) {
        this.f220a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f220a.f217a.g = 2;
        this.f220a.f217a.f = true;
        this.f220a.f218b.sendMessage(5, this.f220a.f217a);
    }
}
