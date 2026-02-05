package com.estrongs.android.ui.pcs;

import android.view.View;

/* loaded from: classes.dex */
class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f2370a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f2371b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar, View view) {
        this.f2371b = lVar;
        this.f2370a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2370a.setEnabled(true);
    }
}
