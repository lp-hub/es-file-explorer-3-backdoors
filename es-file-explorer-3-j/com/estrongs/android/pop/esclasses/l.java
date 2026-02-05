package com.estrongs.android.pop.esclasses;

import android.view.View;

/* loaded from: classes.dex */
final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f1143a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ View f1144b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(View view, View view2) {
        this.f1143a = view;
        this.f1144b = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1143a == null || this.f1144b == null) {
            return;
        }
        int measuredHeight = this.f1144b.getMeasuredHeight() - this.f1143a.getHeight();
        if (measuredHeight < 0) {
            measuredHeight = 0;
        }
        this.f1143a.scrollTo(0, measuredHeight);
    }
}
