package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class al implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.i f2741a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ah f2742b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(ah ahVar, com.estrongs.a.a.i iVar) {
        this.f2742b = ahVar;
        this.f2741a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        View view2;
        ProgressBar progressBar;
        ProgressBar progressBar2;
        TextView textView;
        TextView textView2;
        int i;
        View view3;
        View view4;
        TextView textView3;
        TextView textView4;
        ProgressBar progressBar3;
        TextView textView5;
        long j;
        String a2;
        View view5;
        TextView textView6;
        view = this.f2742b.f2736a.y;
        view.setVisibility(8);
        view2 = this.f2742b.f2736a.x;
        view2.setVisibility(0);
        progressBar = this.f2742b.f2736a.j;
        progressBar.setVisibility(0);
        progressBar2 = this.f2742b.f2736a.j;
        progressBar2.setIndeterminate(false);
        textView = this.f2742b.f2736a.p;
        textView.setText(C0000R.string.task_progress_title);
        if (this.f2741a.l && this.f2741a.m) {
            textView5 = this.f2742b.f2736a.v;
            af afVar = this.f2742b.f2736a;
            j = this.f2742b.f2736a.H;
            a2 = afVar.a(j - this.f2741a.f, this.f2741a.f197b);
            textView5.setText(a2);
            view5 = this.f2742b.f2736a.A;
            view5.setVisibility(0);
            textView6 = this.f2742b.f2736a.w;
            textView6.setText(com.estrongs.fs.c.d.c(this.f2741a.f197b) + "/s");
        }
        textView2 = this.f2742b.f2736a.s;
        textView2.setVisibility(0);
        if (!this.f2741a.m) {
            textView4 = this.f2742b.f2736a.s;
            textView4.setVisibility(8);
            progressBar3 = this.f2742b.f2736a.j;
            progressBar3.setIndeterminate(true);
        }
        i = this.f2742b.f2736a.J;
        if (i == 1) {
            textView3 = this.f2742b.f2736a.s;
            textView3.setVisibility(0);
        }
        if (this.f2741a.n) {
            view4 = this.f2742b.f2736a.A;
            view4.setVisibility(0);
        } else {
            view3 = this.f2742b.f2736a.A;
            view3.setVisibility(8);
        }
    }
}
