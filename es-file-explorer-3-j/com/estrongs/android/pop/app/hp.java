package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class hp implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommItemDetailAcitivity f879a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hp(RecommItemDetailAcitivity recommItemDetailAcitivity) {
        this.f879a = recommItemDetailAcitivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f879a.a();
        this.f879a.finish();
    }
}
