package com.estrongs.android.util;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2692a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f2692a = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        b bVar = this.f2692a;
        i2 = this.f2692a.c;
        bVar.d = i2;
        dialogInterface.dismiss();
    }
}
