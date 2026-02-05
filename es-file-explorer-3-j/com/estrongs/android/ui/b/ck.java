package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ck implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cf f1701a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(cf cfVar) {
        this.f1701a = cfVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1701a.d();
    }
}
