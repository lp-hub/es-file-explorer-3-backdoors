package com.estrongs.android.pop.app;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
class hl extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommAcitivity f875a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hl(RecommAcitivity recommAcitivity) {
        this.f875a = recommAcitivity;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        progressBar = this.f875a.f;
        progressBar.setProgress(i);
        if (i == 100) {
            progressBar2 = this.f875a.f;
            progressBar2.setVisibility(4);
        }
        super.onProgressChanged(webView, i);
    }
}
