package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1820a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fj(ew ewVar) {
        this.f1820a = ewVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.a.a aVar;
        ew ewVar = this.f1820a;
        aVar = this.f1820a.r;
        ewVar.a(aVar);
    }
}
