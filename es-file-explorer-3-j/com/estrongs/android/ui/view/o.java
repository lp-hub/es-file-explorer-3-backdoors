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
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
class o extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CreateOAuthNetDisk f2643a;

    private o(CreateOAuthNetDisk createOAuthNetDisk) {
        this.f2643a = createOAuthNetDisk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ o(CreateOAuthNetDisk createOAuthNetDisk, l lVar) {
        this(createOAuthNetDisk);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        Handler handler;
        Handler handler2;
        CreateOAuthNetDisk createOAuthNetDisk;
        CreateOAuthNetDisk createOAuthNetDisk2;
        handler = this.f2643a.r;
        Message obtainMessage = handler.obtainMessage(CreateOAuthNetDisk.g);
        handler2 = this.f2643a.r;
        handler2.sendMessageDelayed(obtainMessage, 200L);
        int indexOf = str.indexOf("://");
        if (indexOf > 0) {
            str = str.substring(indexOf + 3);
        }
        if (str.startsWith("www.estrongs.com") || str.startsWith("localhost")) {
            return;
        }
        createOAuthNetDisk = CreateOAuthNetDisk.h;
        if (createOAuthNetDisk != null) {
            createOAuthNetDisk2 = CreateOAuthNetDisk.h;
            createOAuthNetDisk2.a();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        Handler handler;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String a2;
        String a3;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Handler handler5;
        boolean z = true;
        ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
        int height = webView.getHeight();
        if (height == 0) {
            layoutParams.height = 300;
        } else {
            layoutParams.height = height;
        }
        webView.setLayoutParams(layoutParams);
        handler = this.f2643a.r;
        handler.post(new p(this));
        String str11 = null;
        str2 = this.f2643a.i;
        if (str2.equals("box")) {
            if (str.startsWith("https://localhost")) {
                str11 = this.f2643a.a(str, "code");
            }
            z = false;
        } else {
            str3 = this.f2643a.i;
            if (!str3.equals("skydrive")) {
                str5 = this.f2643a.i;
                if (!str5.equals("kuaipan")) {
                    str6 = this.f2643a.i;
                    if (!str6.equals("vdisk")) {
                        str7 = this.f2643a.i;
                        if (!str7.equals("kanbox")) {
                            str8 = this.f2643a.i;
                            if (str8.equals("gdrive")) {
                                if (str.startsWith("http://localhost")) {
                                    str11 = this.f2643a.a(str, "code");
                                }
                                z = false;
                            } else {
                                str9 = this.f2643a.i;
                                if (str9.equals("dropbox")) {
                                    if (str.startsWith("http://localhost")) {
                                        str11 = this.f2643a.a(str, "oauth_token");
                                    }
                                    z = false;
                                } else {
                                    str10 = this.f2643a.i;
                                    if (str10.equals("megacloud") && str.startsWith("http://localhost")) {
                                        a2 = this.f2643a.a(str, "oauth_token");
                                        StringBuilder append = new StringBuilder().append(a2).append("&");
                                        a3 = this.f2643a.a(str, OAuth.OAUTH_VERIFIER);
                                        str11 = append.append(a3).toString();
                                    }
                                    z = false;
                                }
                            }
                        }
                    }
                }
            }
            if (str.startsWith("http://www.estrongs.com")) {
                str4 = this.f2643a.i;
                str11 = str4.equals("kuaipan") ? this.f2643a.a(str, "oauth_token") : this.f2643a.a(str, "code");
            }
            z = false;
        }
        if (z) {
            webView.stopLoading();
            if (str11 == null) {
                handler2 = this.f2643a.r;
                Message obtainMessage = handler2.obtainMessage(CreateOAuthNetDisk.d);
                handler3 = this.f2643a.r;
                handler3.sendMessage(obtainMessage);
                return;
            }
            handler4 = this.f2643a.r;
            Message obtainMessage2 = handler4.obtainMessage(CreateOAuthNetDisk.f2569a);
            obtainMessage2.obj = str11;
            handler5 = this.f2643a.r;
            handler5.sendMessage(obtainMessage2);
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
        str3 = this.f2643a.q;
        if (str2.equalsIgnoreCase(str3)) {
            handler = this.f2643a.r;
            Message obtainMessage = handler.obtainMessage(CreateOAuthNetDisk.f2569a);
            handler2 = this.f2643a.r;
            handler2.sendMessage(obtainMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    @SuppressLint({"NewApi"})
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        com.estrongs.android.util.ab.a(this.f2643a, webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Handler handler;
        Handler handler2;
        if (!com.estrongs.android.util.aw.e() || str == null || !str.contains("openapi.qzone.qq.com")) {
            return false;
        }
        handler = this.f2643a.r;
        Message obtainMessage = handler.obtainMessage(CreateOAuthNetDisk.f2570b);
        obtainMessage.obj = str;
        handler2 = this.f2643a.r;
        handler2.sendMessageDelayed(obtainMessage, 500L);
        return false;
    }
}
