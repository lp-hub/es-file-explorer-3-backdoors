package com.estrongs.fs.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class an implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f2979a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(ai aiVar) {
        this.f2979a = aiVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
