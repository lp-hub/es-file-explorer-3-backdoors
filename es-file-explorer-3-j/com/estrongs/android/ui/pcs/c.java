package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2342a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f2342a = aVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        String str;
        this.f2342a.f = false;
        a aVar = this.f2342a;
        str = this.f2342a.g;
        aVar.a(str);
    }
}
