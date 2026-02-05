package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.baidu.share.message.token.ShareToken;
import com.estrongs.android.pop.C0000R;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
class u extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CreateOAuthServiceProvider f2650a;

    private u(CreateOAuthServiceProvider createOAuthServiceProvider) {
        this.f2650a = createOAuthServiceProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ u(CreateOAuthServiceProvider createOAuthServiceProvider, q qVar) {
        this(createOAuthServiceProvider);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        CreateOAuthServiceProvider createOAuthServiceProvider;
        CreateOAuthServiceProvider createOAuthServiceProvider2;
        int indexOf = str.indexOf("://");
        String substring = indexOf > 0 ? str.substring(indexOf + 3) : str;
        if (substring.startsWith(" www.estrongs.com") || substring.startsWith("localhost") || str.startsWith("fbconnect")) {
            return;
        }
        createOAuthServiceProvider = CreateOAuthServiceProvider.f;
        if (createOAuthServiceProvider != null) {
            createOAuthServiceProvider2 = CreateOAuthServiceProvider.f;
            createOAuthServiceProvider2.a();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        String str2;
        String str3;
        String str4;
        String str5;
        String a2;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        String str6 = null;
        boolean z = true;
        str2 = this.f2650a.g;
        if (str2.equals("box")) {
            if (str.startsWith("http://127.0.0.1:50767")) {
                a2 = this.f2650a.a(str, "auth_token");
            }
            z = false;
            a2 = null;
        } else {
            str3 = this.f2650a.g;
            if (str3.equals("Flickr")) {
                if (str.startsWith("http://www.estrongs.com")) {
                    a2 = this.f2650a.a(str, "oauth_token");
                    str6 = this.f2650a.a(str, OAuth.OAUTH_VERIFIER);
                }
                z = false;
                a2 = null;
            } else {
                str4 = this.f2650a.g;
                if (str4.equals("Instagram")) {
                    if (str.startsWith("http://www.estrongs.com")) {
                        a2 = this.f2650a.a(str, "code");
                    }
                    z = false;
                    a2 = null;
                } else {
                    str5 = this.f2650a.g;
                    if (str5.equals("Facebook") && str.startsWith("fbconnect://success")) {
                        a2 = this.f2650a.a(str, "access_token");
                    }
                    z = false;
                    a2 = null;
                }
            }
        }
        if (z) {
            webView.stopLoading();
            if (a2 == null) {
                handler = this.f2650a.r;
                Message obtainMessage = handler.obtainMessage(CreateOAuthServiceProvider.d);
                handler2 = this.f2650a.r;
                handler2.sendMessage(obtainMessage);
                return;
            }
            handler3 = this.f2650a.r;
            Message obtainMessage2 = handler3.obtainMessage(CreateOAuthServiceProvider.f2571a);
            Bundle bundle = new Bundle();
            bundle.putString(ShareToken.KEY_TOKEN, a2);
            bundle.putString("verifier", str6);
            obtainMessage2.setData(bundle);
            handler4 = this.f2650a.r;
            handler4.sendMessage(obtainMessage2);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        Handler handler;
        boolean c;
        Handler handler2;
        if (str2.startsWith("fbconnect://success")) {
            return;
        }
        handler = this.f2650a.r;
        Message obtainMessage = handler.obtainMessage(CreateOAuthServiceProvider.d);
        c = this.f2650a.c();
        if (c) {
            obtainMessage.obj = str;
        } else {
            obtainMessage.obj = this.f2650a.getString(C0000R.string.network_not_exist);
        }
        handler2 = this.f2650a.r;
        handler2.sendMessage(obtainMessage);
    }

    @Override // android.webkit.WebViewClient
    @SuppressLint({"NewApi"})
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        com.estrongs.android.util.ab.a(this.f2650a, webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String a2;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        if (!str.startsWith("fbconnect://success")) {
            return false;
        }
        a2 = this.f2650a.a(str, "access_token");
        webView.stopLoading();
        if (a2 != null) {
            handler3 = this.f2650a.r;
            Message obtainMessage = handler3.obtainMessage(CreateOAuthServiceProvider.f2571a);
            Bundle bundle = new Bundle();
            bundle.putString(ShareToken.KEY_TOKEN, a2);
            obtainMessage.setData(bundle);
            handler4 = this.f2650a.r;
            handler4.sendMessage(obtainMessage);
        } else {
            handler = this.f2650a.r;
            Message obtainMessage2 = handler.obtainMessage(CreateOAuthServiceProvider.d);
            handler2 = this.f2650a.r;
            handler2.sendMessage(obtainMessage2);
        }
        return true;
    }
}
