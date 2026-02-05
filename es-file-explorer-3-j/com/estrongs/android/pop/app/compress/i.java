package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f612a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar) {
        this.f612a = aVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        j jVar;
        k kVar;
        jVar = this.f612a.k;
        a aVar = this.f612a;
        kVar = this.f612a.p;
        jVar.a(aVar, kVar);
    }
}
