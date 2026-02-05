package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

/* loaded from: classes.dex */
class am implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.i f2743a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ah f2744b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(ah ahVar, com.estrongs.a.a.i iVar) {
        this.f2744b = ahVar;
        this.f2743a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        ProgressBar progressBar;
        ProgressBar progressBar2;
        TextView textView;
        TextView textView2;
        long j;
        String a2;
        View view2;
        TextView textView3;
        TextView textView4;
        ProgressBar progressBar3;
        view = this.f2744b.f2736a.x;
        view.setVisibility(0);
        progressBar = this.f2744b.f2736a.j;
        progressBar.setVisibility(0);
        progressBar2 = this.f2744b.f2736a.j;
        progressBar2.setIndeterminate(false);
        textView = this.f2744b.f2736a.s;
        textView.setVisibility(0);
        if (!this.f2743a.m) {
            textView4 = this.f2744b.f2736a.s;
            textView4.setVisibility(8);
            progressBar3 = this.f2744b.f2736a.j;
            progressBar3.setIndeterminate(true);
        }
        if (this.f2743a.l && this.f2743a.m) {
            textView2 = this.f2744b.f2736a.v;
            af afVar = this.f2744b.f2736a;
            j = this.f2744b.f2736a.C;
            a2 = afVar.a(j - this.f2743a.f, this.f2743a.f197b);
            textView2.setText(a2);
            view2 = this.f2744b.f2736a.A;
            view2.setVisibility(0);
            textView3 = this.f2744b.f2736a.w;
            textView3.setText(com.estrongs.fs.c.d.c(this.f2743a.f197b) + "/s");
        }
    }
}
