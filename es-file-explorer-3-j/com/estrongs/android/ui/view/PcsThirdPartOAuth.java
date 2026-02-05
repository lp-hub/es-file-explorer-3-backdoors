package com.estrongs.android.ui.view;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class PcsThirdPartOAuth extends ESActivity {

    /* renamed from: b, reason: collision with root package name */
    private static PcsThirdPartOAuth f2582b = null;
    private String c = null;
    private String d = null;
    private String e = null;
    private boolean f = false;
    private String g = null;
    private WebView h = null;
    private ap i = new ap(this, null);
    private ProgressBar j = null;
    private TextView k = null;
    private ScrollView l = null;
    private String m = null;
    private String n = null;

    /* renamed from: a, reason: collision with root package name */
    String f2583a = null;
    private Handler o = new am(this);

    /* loaded from: classes.dex */
    public class MyHandler {
        Handler mHandler;

        public MyHandler(Handler handler) {
            this.mHandler = handler;
        }

        @JavascriptInterface
        public void show(String str) {
            Message obtainMessage = this.mHandler.obtainMessage(5);
            obtainMessage.obj = str;
            this.mHandler.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2) {
        String[] split;
        String[] split2 = str.split("\\?");
        if (split2.length != 2) {
            split2 = str.split("#");
        }
        if (split2.length == 2 && (split = split2[1].split("&")) != null) {
            for (String str3 : split) {
                String[] split3 = str3.split("=");
                if (split3.length == 2 && split3[0].equals(str2)) {
                    return split3[1];
                }
            }
        }
        return null;
    }

    private void a(String str) {
        String a2 = com.estrongs.android.util.ak.a(this.c, str, "fake", "/");
        if (this.f && this.g != null) {
            com.estrongs.android.pop.q.a(this).a(this.g);
        }
        com.estrongs.android.pop.q.a(this).a(a2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        if (str != null) {
            this.f2583a = com.estrongs.fs.impl.i.b.h("pcs", str);
            if (this.f2583a != null) {
                a(this.f2583a);
                return true;
            }
        }
        return false;
    }

    public void a() {
        this.o.sendMessage(this.o.obtainMessage(3));
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        super.setContentView(C0000R.layout.pcs_oauth);
        this.h = (WebView) findViewById(C0000R.id.login_page);
        this.h.getSettings().setJavaScriptEnabled(true);
        this.h.addJavascriptInterface(new MyHandler(this.o), "handler");
        this.h.setWebViewClient(this.i);
        WebSettings settings = this.h.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(true);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
        CookieManager cookieManager = CookieManager.getInstance();
        settings.setDefaultTextEncodingName("utf-8");
        this.k = (TextView) findViewById(C0000R.id.auth_page_load_text);
        this.j = (ProgressBar) findViewById(C0000R.id.auth_page_load_progress);
        this.l = (ScrollView) findViewById(C0000R.id.auth_layout);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            setResult(0, null);
            finish();
            return;
        }
        this.c = extras.getString("nettype");
        this.d = extras.getString("ostype");
        this.e = extras.getString("login");
        if (this.d == null) {
            this.d = "sinaweibo";
        }
        this.f = extras.getBoolean("editServer", false);
        this.g = extras.getString("originalPath");
        new al(this).start();
        cookieManager.removeAllCookie();
        f2582b = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        f2582b = null;
        super.onDestroy();
    }
}
