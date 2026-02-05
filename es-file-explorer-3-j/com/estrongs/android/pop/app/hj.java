package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class hj implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommAcitivity f873a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hj(RecommAcitivity recommAcitivity) {
        this.f873a = recommAcitivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f873a.finish();
    }
}
