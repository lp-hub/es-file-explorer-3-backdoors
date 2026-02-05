package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CreateOAuthServiceProvider f2647a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(CreateOAuthServiceProvider createOAuthServiceProvider) {
        this.f2647a = createOAuthServiceProvider;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ProgressBar progressBar;
        TextView textView;
        WebView webView;
        WebView webView2;
        WebView webView3;
        if (message.what == CreateOAuthServiceProvider.f2571a) {
            if (message.getData() != null) {
                new t(this, message.getData()).start();
                return;
            }
            z.a(this.f2647a, this.f2647a.getText(C0000R.string.error_oauth_get_url), 1).show();
        } else {
            if (message.what == CreateOAuthServiceProvider.f2572b) {
                webView3 = this.f2647a.i;
                webView3.loadUrl((String) message.obj);
                String str = (String) message.obj;
                int indexOf = str.indexOf("://");
                CreateOAuthServiceProvider createOAuthServiceProvider = this.f2647a;
                if (indexOf > 0) {
                    str = str.substring(indexOf + 3);
                }
                createOAuthServiceProvider.n = str;
                return;
            }
            if (message.what == CreateOAuthServiceProvider.c) {
                progressBar = this.f2647a.k;
                progressBar.setVisibility(8);
                textView = this.f2647a.l;
                textView.setVisibility(8);
                webView = this.f2647a.i;
                webView.setVisibility(0);
                webView2 = this.f2647a.i;
                webView2.requestFocus(130);
                return;
            }
            if (message.what == CreateOAuthServiceProvider.d) {
                String obj = message.obj != null ? message.obj.toString() : null;
                if (com.estrongs.android.util.aw.a((CharSequence) obj)) {
                    obj = (String) this.f2647a.getText(C0000R.string.netdisk_auth_failed);
                }
                z.a(this.f2647a, obj, 1).show();
            } else if (message.what == CreateOAuthServiceProvider.e && !((Boolean) message.obj).booleanValue()) {
                z.a(this.f2647a, C0000R.string.netdisk_auth_failed, 1).show();
            }
        }
        this.f2647a.finish();
    }
}
