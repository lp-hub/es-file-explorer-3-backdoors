package com.estrongs.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class j implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f223a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(e eVar) {
        this.f223a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f223a.f217a.g = 3;
        this.f223a.f217a.f = true;
        this.f223a.f218b.sendMessage(5, this.f223a.f217a);
    }
}
