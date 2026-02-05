package com.estrongs.android.ui.pcs;

import android.view.View;

/* loaded from: classes.dex */
class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f2373a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f2374b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar, View view) {
        this.f2374b = nVar;
        this.f2373a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2373a.setEnabled(true);
    }
}
