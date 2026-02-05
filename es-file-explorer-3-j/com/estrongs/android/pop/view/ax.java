package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ax implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ at f1327a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(at atVar) {
        this.f1327a = atVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
