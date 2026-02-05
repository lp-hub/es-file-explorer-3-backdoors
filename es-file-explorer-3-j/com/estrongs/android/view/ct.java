package com.estrongs.android.view;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ct extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cs f2825a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ct(cs csVar) {
        this.f2825a = csVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        ((FileExplorerActivity) this.f2825a.ad).h();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return false;
    }
}
