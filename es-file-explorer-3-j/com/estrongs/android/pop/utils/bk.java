package com.estrongs.android.pop.utils;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bk implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bg f1230a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(bg bgVar) {
        this.f1230a = bgVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (this.f1230a.f1224a == null || this.f1230a.f1224a.getTaskStatus() == 4) {
            return;
        }
        this.f1230a.f1224a.requestStop();
    }
}
