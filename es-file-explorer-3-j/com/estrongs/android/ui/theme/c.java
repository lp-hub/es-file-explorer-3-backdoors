package com.estrongs.android.ui.theme;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2538a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f2538a = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
