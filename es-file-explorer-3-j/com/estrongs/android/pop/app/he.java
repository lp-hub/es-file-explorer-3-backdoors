package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class he implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ hd f868a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public he(hd hdVar) {
        this.f868a = hdVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f868a.f867a.finish();
    }
}
