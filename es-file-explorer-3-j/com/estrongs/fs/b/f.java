package com.estrongs.fs.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class f implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f3001a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar) {
        this.f3001a = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
