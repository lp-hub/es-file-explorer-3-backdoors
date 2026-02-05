package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f1288a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(Context context) {
        this.f1288a = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        Context context = this.f1288a;
        str = y.f1286a;
        y.a(context, str, "pname");
    }
}
