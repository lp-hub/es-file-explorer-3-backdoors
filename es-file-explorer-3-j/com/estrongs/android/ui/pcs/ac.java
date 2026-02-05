package com.estrongs.android.ui.pcs;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2271a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(x xVar) {
        this.f2271a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2271a.e = true;
        this.f2271a.c();
        new as(this.f2271a.f, this.f2271a).a();
    }
}
