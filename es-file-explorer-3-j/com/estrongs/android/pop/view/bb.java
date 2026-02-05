package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bb implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f1334a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(ba baVar) {
        this.f1334a = baVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
