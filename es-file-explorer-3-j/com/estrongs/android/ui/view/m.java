package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CreateOAuthNetDisk f2640a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(CreateOAuthNetDisk createOAuthNetDisk) {
        this.f2640a = createOAuthNetDisk;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
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
        if (message.what == CreateOAuthNetDisk.f2569a) {
            if (message.obj != null) {
                new n(this, (String) message.obj).start();
                return;
            }
            z.a(this.f2640a, this.f2640a.getText(C0000R.string.error_oauth_get_url), 1).show();
        } else {
            if (message.what == CreateOAuthNetDisk.f2570b) {
                webView6 = this.f2640a.l;
                webView6.loadUrl((String) message.obj);
                String str7 = (String) message.obj;
                int indexOf = str7.indexOf("://");
                CreateOAuthNetDisk createOAuthNetDisk = this.f2640a;
                if (indexOf > 0) {
                    str7 = str7.substring(indexOf + 3);
                }
                createOAuthNetDisk.q = str7;
                return;
            }
            if (message.what == CreateOAuthNetDisk.g) {
                webView3 = this.f2640a.l;
                if (webView3.getContentHeight() <= 0) {
                    handler = this.f2640a.r;
                    Message obtainMessage = handler.obtainMessage(CreateOAuthNetDisk.g);
                    handler2 = this.f2640a.r;
                    handler2.sendMessageDelayed(obtainMessage, 300L);
                    return;
                }
                webView4 = this.f2640a.l;
                ViewGroup.LayoutParams layoutParams = webView4.getLayoutParams();
                layoutParams.height = -2;
                webView5 = this.f2640a.l;
                webView5.setLayoutParams(layoutParams);
                return;
            }
            if (message.what == CreateOAuthNetDisk.c) {
                progressBar = this.f2640a.n;
                progressBar.setVisibility(8);
                textView = this.f2640a.o;
                textView.setVisibility(8);
                webView = this.f2640a.l;
                webView.setVisibility(0);
                webView2 = this.f2640a.l;
                webView2.requestFocus(130);
                return;
            }
            if (message.what == CreateOAuthNetDisk.d) {
                z.a(this.f2640a, C0000R.string.netdisk_auth_failed, 1).show();
            } else if (message.what == CreateOAuthNetDisk.e) {
                if (((Boolean) message.obj).booleanValue()) {
                    com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
                    str = this.f2640a.i;
                    if (!str.equals("kuaipan")) {
                        str2 = this.f2640a.i;
                        if (!str2.equals("box")) {
                            str3 = this.f2640a.i;
                            if (!str3.equals("skydrive")) {
                                str4 = this.f2640a.i;
                                if (!str4.equals("gdrive")) {
                                    str5 = this.f2640a.i;
                                    if (!str5.equals("dropbox")) {
                                        str6 = this.f2640a.i;
                                        if (str6.equals("megacloud") && a2 != null) {
                                            a2.a("Megacloud_Create", "Megacloud_Create");
                                        }
                                    } else if (a2 != null) {
                                        a2.a("Dropbox_Create", "Dropbox_Create");
                                    }
                                } else if (a2 != null) {
                                    a2.a("Gdrive_Create", "Gdrive_Create");
                                }
                            } else if (a2 != null) {
                                a2.a("Skydrive_Create", "Skydrive_Create");
                            }
                        } else if (a2 != null) {
                            a2.a("Box_Create", "Box_Create");
                        }
                    } else if (a2 != null) {
                        a2.a("快盘_Create", "快盘_Create");
                    }
                } else {
                    z.a(this.f2640a, C0000R.string.netdisk_auth_failed, 1).show();
                }
            }
        }
        this.f2640a.finish();
    }
}
