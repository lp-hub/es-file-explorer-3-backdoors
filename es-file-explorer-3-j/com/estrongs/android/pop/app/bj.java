package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class bj implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ HideListActivity f529a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(HideListActivity hideListActivity) {
        this.f529a = hideListActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f529a.finish();
    }
}
