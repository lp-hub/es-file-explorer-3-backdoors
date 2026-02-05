package com.estrongs.android.pop.app;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
class bf extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ HelpActivity f525a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(HelpActivity helpActivity) {
        this.f525a = helpActivity;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
