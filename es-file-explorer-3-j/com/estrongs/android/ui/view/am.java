package com.estrongs.android.ui.view;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class am extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PcsThirdPartOAuth f2607a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(PcsThirdPartOAuth pcsThirdPartOAuth) {
        this.f2607a = pcsThirdPartOAuth;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ProgressBar progressBar;
        TextView textView;
        WebView webView;
        WebView webView2;
        WebView webView3;
        Handler handler;
        Handler handler2;
        WebView webView4;
        WebView webView5;
        WebView webView6;
        String str;
        String str2;
        String str3;
        if (message.what == 1) {
            new an(this, (String) message.obj).start();
            return;
        }
        if (message.what == 5) {
            new ao(this, (String) message.obj).start();
            return;
        }
        if (message.what == 6) {
            Intent intent = new Intent();
            intent.putExtra("result", true);
            intent.putExtra("userinfo", this.f2607a.f2583a + ":fake");
            this.f2607a.setResult(-1, intent);
            com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
            if (a2 != null) {
                str = this.f2607a.d;
                if (str.equals("sinaweibo")) {
                    a2.b("Sina_Login", "Sina_Login");
                } else {
                    str2 = this.f2607a.d;
                    if (str2.equals("qq")) {
                        a2.b("QQ_Login", "QQ_Login");
                    } else {
                        str3 = this.f2607a.d;
                        if (str3.equals("renren")) {
                            a2.b("RenRen_Login", "RenRen_Login");
                        }
                    }
                }
            }
            this.f2607a.finish();
            return;
        }
        if (message.what == 2) {
            webView6 = this.f2607a.h;
            webView6.loadUrl((String) message.obj);
            String str4 = (String) message.obj;
            int indexOf = str4.indexOf("://");
            PcsThirdPartOAuth pcsThirdPartOAuth = this.f2607a;
            if (indexOf > 0) {
                str4 = str4.substring(indexOf + 3);
            }
            pcsThirdPartOAuth.m = str4;
            return;
        }
        if (message.what == 7) {
            webView3 = this.f2607a.h;
            if (webView3.getContentHeight() <= 0) {
                handler = this.f2607a.o;
                Message obtainMessage = handler.obtainMessage(7);
                handler2 = this.f2607a.o;
                handler2.sendMessageDelayed(obtainMessage, 300L);
                return;
            }
            webView4 = this.f2607a.h;
            ViewGroup.LayoutParams layoutParams = webView4.getLayoutParams();
            layoutParams.height = -2;
            webView5 = this.f2607a.h;
            webView5.setLayoutParams(layoutParams);
            return;
        }
        if (message.what != 3) {
            if (message.what == 4) {
                z.a(this.f2607a, C0000R.string.netdisk_auth_failed, 1).show();
                Intent intent2 = new Intent();
                intent2.putExtra("result", false);
                this.f2607a.setResult(-1, intent2);
                this.f2607a.finish();
                return;
            }
            return;
        }
        progressBar = this.f2607a.j;
        progressBar.setVisibility(8);
        textView = this.f2607a.k;
        textView.setVisibility(8);
        webView = this.f2607a.h;
        webView.setVisibility(0);
        webView2 = this.f2607a.h;
        webView2.requestFocus(130);
    }
}
