package com.estrongs.android.widget;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DialogInterface.OnDismissListener f2921a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2922b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar, DialogInterface.OnDismissListener onDismissListener) {
        this.f2922b = gVar;
        this.f2921a = onDismissListener;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        com.estrongs.android.view.ar arVar;
        arVar = this.f2922b.j;
        arVar.a_();
        this.f2921a.onDismiss(dialogInterface);
    }
}
