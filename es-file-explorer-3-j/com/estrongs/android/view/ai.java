package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

/* loaded from: classes.dex */
class ai implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.i f2737a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ah f2738b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ah ahVar, com.estrongs.a.a.i iVar) {
        this.f2738b = ahVar;
        this.f2737a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        TextView textView;
        ProgressBar progressBar;
        ProgressBar progressBar2;
        View view2;
        TextView textView2;
        String a2;
        View view3;
        view = this.f2738b.f2736a.x;
        view.setVisibility(0);
        textView = this.f2738b.f2736a.s;
        textView.setVisibility(8);
        progressBar = this.f2738b.f2736a.j;
        progressBar.setIndeterminate(true);
        progressBar2 = this.f2738b.f2736a.i;
        progressBar2.setIndeterminate(true);
        if (!this.f2737a.l || !this.f2737a.m) {
            view2 = this.f2738b.f2736a.A;
            view2.setVisibility(8);
            return;
        }
        textView2 = this.f2738b.f2736a.v;
        a2 = this.f2738b.f2736a.a(0L, 0);
        textView2.setText(a2);
        view3 = this.f2738b.f2736a.A;
        view3.setVisibility(0);
    }
}
