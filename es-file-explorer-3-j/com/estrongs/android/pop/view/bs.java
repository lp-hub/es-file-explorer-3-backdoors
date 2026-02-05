package com.estrongs.android.pop.view;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class bs implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1355a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bq f1356b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(bq bqVar, com.estrongs.fs.g gVar) {
        this.f1356b = bqVar;
        this.f1355a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f1356b.f1353a.a(this.f1355a.getPath(), this.f1355a.getAbsolutePath());
    }
}
