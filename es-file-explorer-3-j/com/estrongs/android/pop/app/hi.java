package com.estrongs.android.pop.app;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
class hi extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PrivacyActivity f872a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hi(PrivacyActivity privacyActivity) {
        this.f872a = privacyActivity;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
