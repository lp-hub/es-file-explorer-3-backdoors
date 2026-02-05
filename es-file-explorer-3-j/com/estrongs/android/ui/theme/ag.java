package com.estrongs.android.ui.theme;

import android.view.View;

/* loaded from: classes.dex */
class ag implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2523a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ af f2524b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af afVar, int i) {
        this.f2524b = afVar;
        this.f2523a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2524b.c(this.f2523a);
    }
}
