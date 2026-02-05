package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1872a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f1873b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar, l lVar) {
        this.f1873b = oVar;
        this.f1872a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1873b.f1870a.setChecked(true);
    }
}
