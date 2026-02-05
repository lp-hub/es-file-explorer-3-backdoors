package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class d implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1724a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar) {
        this.f1724a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
