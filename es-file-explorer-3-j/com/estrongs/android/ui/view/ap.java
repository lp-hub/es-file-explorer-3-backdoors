package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
class ap extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PcsThirdPartOAuth f2612a;

    private ap(PcsThirdPartOAuth pcsThirdPartOAuth) {
        this.f2612a = pcsThirdPartOAuth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ap(PcsThirdPartOAuth pcsThirdPartOAuth, al alVar) {
        this(pcsThirdPartOAuth);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        Handler handler;
        Handler handler2;
        PcsThirdPartOAuth pcsThirdPartOAuth;
        PcsThirdPartOAuth pcsThirdPartOAuth2;
        handler = this.f2612a.o;
        Message obtainMessage = handler.obtainMessage(7);
        handler2 = this.f2612a.o;
        handler2.sendMessageDelayed(obtainMessage, 200L);
        if (str.startsWith("http://passport.baidu.com/phoenix/account/afterauth")) {
            webView.stopLoading();
            webView.loadUrl("javascript:window.handler.show(document.body.innerHTML);");
        }
        int indexOf = str.indexOf("://");
        if (indexOf > 0) {
            str = str.substring(indexOf + 3);
        }
        if (str.startsWith("www.estrongs.com") || str.startsWith("localhost")) {
            return;
        }
        pcsThirdPartOAuth = PcsThirdPartOAuth.f2582b;
        if (pcsThirdPartOAuth != null) {
            pcsThirdPartOAuth2 = PcsThirdPartOAuth.f2582b;
            pcsThirdPartOAuth2.a();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        String a2;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
        int height = webView.getHeight();
        if (height == 0) {
            layoutParams.height = 300;
        } else {
            layoutParams.height = height;
        }
        webView.setLayoutParams(layoutParams);
        if (str.startsWith("http://www.estrongs.com")) {
            a2 = this.f2612a.a(str, "code");
            if (a2 != null) {
                handler3 = this.f2612a.o;
                Message obtainMessage = handler3.obtainMessage(1);
                obtainMessage.obj = a2;
                handler4 = this.f2612a.o;
                handler4.sendMessage(obtainMessage);
            } else {
                handler = this.f2612a.o;
                Message obtainMessage2 = handler.obtainMessage(4);
                handler2 = this.f2612a.o;
                handler2.sendMessage(obtainMessage2);
            }
            webView.stopLoading();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        String str3;
        Handler handler;
        Handler handler2;
        int indexOf = str2.indexOf("://");
        if (indexOf > 0) {
            str2 = str2.substring(indexOf + 3);
        }
        str3 = this.f2612a.m;
        if (str2.equalsIgnoreCase(str3)) {
            handler = this.f2612a.o;
            Message obtainMessage = handler.obtainMessage(4);
            handler2 = this.f2612a.o;
            handler2.sendMessage(obtainMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    @SuppressLint({"NewApi"})
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        com.estrongs.android.util.ab.a(this.f2612a, webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return false;
    }
}
