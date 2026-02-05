package com.estrongs.android.ui.pcs;

import android.view.View;

/* loaded from: classes.dex */
class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f2367a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f2368b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar, View view) {
        this.f2368b = jVar;
        this.f2367a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2367a.setEnabled(true);
    }
}
