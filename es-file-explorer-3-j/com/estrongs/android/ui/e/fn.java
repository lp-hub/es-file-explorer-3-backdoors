package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fn implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.b.ag f2137a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f2138b;
    final /* synthetic */ com.estrongs.fs.g c;
    final /* synthetic */ String d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fn(com.estrongs.android.ui.b.ag agVar, Context context, com.estrongs.fs.g gVar, String str) {
        this.f2137a = agVar;
        this.f2138b = context;
        this.c = gVar;
        this.d = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2137a.dismiss();
        fk.b(this.f2138b, this.c, this.d);
    }
}
