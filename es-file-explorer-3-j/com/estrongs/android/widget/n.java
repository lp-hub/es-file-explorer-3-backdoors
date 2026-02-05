package com.estrongs.android.widget;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2929a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(g gVar) {
        this.f2929a = gVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        com.estrongs.android.view.ar arVar;
        arVar = this.f2929a.j;
        arVar.a_();
    }
}
