package com.estrongs.android.ui.a;

import android.view.View;

/* loaded from: classes.dex */
class cj implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.theme.ai f1559a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f1560b;
    final /* synthetic */ ci c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(ci ciVar, com.estrongs.android.ui.theme.ai aiVar, int i) {
        this.c = ciVar;
        this.f1559a = aiVar;
        this.f1560b = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f1559a.f2528b == null) {
            return;
        }
        this.c.a(2, this.f1560b);
    }
}
