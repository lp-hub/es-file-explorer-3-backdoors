package com.estrongs.android.view;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ak implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2740a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(ah ahVar) {
        this.f2740a = ahVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        View view2;
        ProgressBar progressBar;
        ProgressBar progressBar2;
        TextView textView;
        TextView textView2;
        view = this.f2740a.f2736a.y;
        view.setVisibility(8);
        view2 = this.f2740a.f2736a.x;
        view2.setVisibility(0);
        progressBar = this.f2740a.f2736a.j;
        progressBar.setVisibility(0);
        progressBar2 = this.f2740a.f2736a.j;
        progressBar2.setIndeterminate(true);
        textView = this.f2740a.f2736a.s;
        textView.setVisibility(8);
        textView2 = this.f2740a.f2736a.p;
        textView2.setText(C0000R.string.task_progress_title);
    }
}
