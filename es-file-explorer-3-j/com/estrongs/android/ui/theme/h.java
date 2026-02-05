package com.estrongs.android.ui.theme;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class h implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f2545a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar) {
        this.f2545a = fVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
