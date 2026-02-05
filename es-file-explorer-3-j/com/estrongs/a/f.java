package com.estrongs.a;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class f implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f219a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f219a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f219a.f217a.g = 1;
        this.f219a.f217a.f = false;
        this.f219a.f218b.sendMessage(5, this.f219a.f217a);
    }
}
