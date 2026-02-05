package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class br implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bq f538a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public br(bq bqVar) {
        this.f538a = bqVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        View view2;
        view = this.f538a.f537a.m;
        view.setVisibility(0);
        view2 = this.f538a.f537a.n;
        view2.setVisibility(8);
    }
}
