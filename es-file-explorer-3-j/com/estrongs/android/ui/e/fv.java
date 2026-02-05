package com.estrongs.android.ui.e;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fv implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f2144a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.a.a f2145b;
    final /* synthetic */ fu c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fv(fu fuVar, View view, com.estrongs.android.view.a.a aVar) {
        this.c = fuVar;
        this.f2144a = view;
        this.f2145b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!this.f2144a.isEnabled() || this.f2145b.c() == null) {
            return;
        }
        this.f2145b.c().onMenuItemClick(this.f2145b);
    }
}
