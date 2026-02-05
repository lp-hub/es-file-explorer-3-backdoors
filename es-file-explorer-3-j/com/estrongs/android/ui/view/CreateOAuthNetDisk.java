package com.estrongs.android.ui.view;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.Properties;

/* loaded from: classes.dex */
public class CreateOAuthNetDisk extends ESActivity {
    private String i = null;
    private boolean j = false;
    private String k = null;
    private WebView l = null;
    private o m = new o(this, null);
    private ProgressBar n = null;
    private TextView o = null;
    private View p = null;
    private String q = null;
    private Handler r = new m(this);
    private static CreateOAuthNetDisk h = null;

    /* renamed from: a, reason: collision with root package name */
    public static int f2569a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static int f2570b = 2;
    public static int c = 3;
    public static int d = 4;
    public static int e = 5;
    public static int f = 6;
    public static int g = 7;

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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        String h2;
        if (str == null || (h2 = com.estrongs.fs.impl.i.b.h(this.i, str)) == null) {
            return false;
        }
        String a2 = com.estrongs.android.util.ak.a(this.i, h2, "fake", "/");
        if (this.j && this.k != null) {
            com.estrongs.android.pop.q.a(this).a(this.k, h2.equalsIgnoreCase(com.estrongs.android.util.ak.aa(this.k)) ? false : true);
        }
        com.estrongs.android.pop.q.a(this).a(a2, h2);
        return true;
    }

    public static CreateOAuthNetDisk b() {
        return h;
    }

    public void a() {
        this.r.sendMessage(this.r.obtainMessage(c));
    }

    public void a(Properties properties) {
        if (this.i.equalsIgnoreCase("box")) {
            String property = properties.getProperty("auth_token");
            Message obtainMessage = this.r.obtainMessage(f2569a);
            obtainMessage.obj = property;
            this.r.sendMessage(obtainMessage);
        }
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
        super.setContentView(C0000R.layout.new_oauth_netdisk);
        this.l = (WebView) findViewById(C0000R.id.login_page);
        this.l.getSettings().setJavaScriptEnabled(true);
        this.l.setWebViewClient(this.m);
        WebSettings settings = this.l.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
        CookieManager cookieManager = CookieManager.getInstance();
        settings.setDefaultTextEncodingName("utf-8");
        this.o = (TextView) findViewById(C0000R.id.auth_page_load_text);
        this.n = (ProgressBar) findViewById(C0000R.id.auth_page_load_progress);
        this.p = findViewById(C0000R.id.auth_layout);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            setResult(0, null);
            finish();
            return;
        }
        this.i = extras.getString("nettype");
        this.j = extras.getBoolean("editServer", false);
        this.k = extras.getString("originalPath");
        new l(this).start();
        cookieManager.removeAllCookie();
        h = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        h = null;
        super.onDestroy();
    }
}
