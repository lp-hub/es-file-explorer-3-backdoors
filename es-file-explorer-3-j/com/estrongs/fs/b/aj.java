package com.estrongs.fs.b;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class aj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f2975a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ai aiVar) {
        this.f2975a = aiVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
