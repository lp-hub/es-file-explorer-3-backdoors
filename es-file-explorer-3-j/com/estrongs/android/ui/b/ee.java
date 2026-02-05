package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ee implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dn f1773a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ee(dn dnVar) {
        this.f1773a = dnVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int a2;
        String[] i = com.estrongs.fs.impl.local.h.i();
        String a3 = com.estrongs.fs.impl.local.h.a(this.f1773a.h.c);
        dn dnVar = this.f1773a;
        a2 = this.f1773a.a(i, a3);
        dnVar.a(i, a2);
    }
}
