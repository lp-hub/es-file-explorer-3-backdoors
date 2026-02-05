package com.estrongs.android.view;

import android.widget.ProgressBar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cs f2829a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cx(cs csVar) {
        this.f2829a = csVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ProgressBar progressBar;
        progressBar = this.f2829a.f2824b;
        progressBar.setVisibility(0);
        if (com.estrongs.android.util.aw.a((CharSequence) this.f2829a.f2823a.getUrl())) {
            this.f2829a.f2823a.loadUrl(this.f2829a.w);
        } else {
            this.f2829a.f2823a.reload();
        }
        if (this.f2829a.I != null) {
            this.f2829a.I.b();
        }
    }
}
