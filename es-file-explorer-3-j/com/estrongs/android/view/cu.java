package com.estrongs.android.view;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cu extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cs f2826a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cu(cs csVar) {
        this.f2826a = csVar;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        progressBar = this.f2826a.f2824b;
        progressBar.setProgress(i);
        if (i == 100) {
            progressBar2 = this.f2826a.f2824b;
            progressBar2.setVisibility(4);
        }
        super.onProgressChanged(webView, i);
    }
}
