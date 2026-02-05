package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1874a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f1875b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(o oVar, l lVar) {
        this.f1875b = oVar;
        this.f1874a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1875b.f1871b.setChecked(true);
    }
}
