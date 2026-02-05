package com.estrongs.android.ui.e;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fw implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.a.a f2146a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fu f2147b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fw(fu fuVar, com.estrongs.android.view.a.a aVar) {
        this.f2147b = fuVar;
        this.f2146a = aVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f2146a.e();
        return true;
    }
}
