package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.DialogInterface;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ax implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1210a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1211b;
    final /* synthetic */ com.estrongs.fs.g c;
    final /* synthetic */ boolean d;
    final /* synthetic */ boolean e;
    final /* synthetic */ com.estrongs.a.a.k f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(Activity activity, List list, com.estrongs.fs.g gVar, boolean z, boolean z2, com.estrongs.a.a.k kVar) {
        this.f1210a = activity;
        this.f1211b = list;
        this.c = gVar;
        this.d = z;
        this.e = z2;
        this.f = kVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        aj.a(this.f1210a, (List<com.estrongs.fs.g>) this.f1211b, this.c, this.d, this.e, this.f);
    }
}
