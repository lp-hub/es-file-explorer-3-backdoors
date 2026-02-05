package com.estrongs.android.ui.view;

import android.widget.ProgressBar;

/* loaded from: classes.dex */
class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ o f2644a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar) {
        this.f2644a = oVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ProgressBar progressBar;
        progressBar = this.f2644a.f2643a.n;
        progressBar.setVisibility(0);
    }
}
