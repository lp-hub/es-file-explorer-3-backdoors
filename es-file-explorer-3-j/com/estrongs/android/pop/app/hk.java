package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
class hk extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommAcitivity f874a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hk(RecommAcitivity recommAcitivity) {
        this.f874a = recommAcitivity;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        ProgressBar progressBar;
        super.onPageStarted(webView, str, bitmap);
        progressBar = this.f874a.f;
        progressBar.setVisibility(0);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return false;
    }
}
