package com.estrongs.android.view;

import android.view.View;

/* loaded from: classes.dex */
class aj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2739a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(ah ahVar) {
        this.f2739a = ahVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        view = this.f2739a.f2736a.z;
        view.setVisibility(8);
    }
}
