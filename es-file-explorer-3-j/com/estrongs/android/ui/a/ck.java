package com.estrongs.android.ui.a;

import android.view.View;

/* loaded from: classes.dex */
class ck implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1561a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ci f1562b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(ci ciVar, int i) {
        this.f1562b = ciVar;
        this.f1561a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1562b.a(this.f1561a);
    }
}
