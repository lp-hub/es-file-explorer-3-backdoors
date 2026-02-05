package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ao implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f591a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(an anVar) {
        this.f591a = anVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f591a.f589a = true;
        this.f591a.dismiss();
    }
}
