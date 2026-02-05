package com.estrongs.android.ui.b;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1868a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar) {
        this.f1868a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1868a.a(dialogInterface);
    }
}
