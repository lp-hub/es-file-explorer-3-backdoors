package com.estrongs.android.pop.app.a;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f389a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ x f390b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(x xVar, a aVar) {
        this.f390b = xVar;
        this.f389a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
