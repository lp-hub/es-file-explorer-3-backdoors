package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ef implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dn f1774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ef(dn dnVar) {
        this.f1774a = dnVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int a2;
        String[] j = com.estrongs.fs.impl.local.h.j();
        String b2 = com.estrongs.fs.impl.local.h.b(this.f1774a.h.f3107b);
        dn dnVar = this.f1774a;
        a2 = this.f1774a.a(j, b2);
        dnVar.b(j, a2);
    }
}
