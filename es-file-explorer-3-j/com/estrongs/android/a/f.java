package com.estrongs.android.a;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f239a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f239a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f239a.f238b = true;
        this.f239a.dismiss();
    }
}
