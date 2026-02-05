package com.estrongs.android.ui.view;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.share.message.token.ShareToken;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.spfs.OAuthConstants;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.SPFileSystem;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Map;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class CreateOAuthServiceProvider extends ESActivity {
    private String o;
    private static CreateOAuthServiceProvider f = null;

    /* renamed from: a, reason: collision with root package name */
    public static int f2571a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static int f2572b = 2;
    public static int c = 3;
    public static int d = 4;
    public static int e = 5;
    private String g = null;
    private boolean h = false;
    private WebView i = null;
    private u j = new u(this, null);
    private ProgressBar k = null;
    private TextView l = null;
    private View m = null;
    private String n = null;
    private String p = null;
    private View.OnClickListener q = new r(this);
    private Handler r = new s(this);

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
    public boolean a(Bundle bundle) {
        String string = bundle.getString(ShareToken.KEY_TOKEN);
        String string2 = bundle.getString("verifier");
        if (string != null) {
            String str = null;
            try {
                if (!OAuthConstants.VERSION_10A.equals(this.p)) {
                    str = SPFileSystem.getUserLoginName(this.g, string);
                } else if (this.g.equals("Flickr")) {
                    Map<String, String> dataAsMap = OAuthUtil.getDataAsMap(URLDecoder.decode(OAuthUtil.sendPost(SPFileSystem.getAccessTokenUrl(this.g), SPFileSystem.getAccessTokenParameters(this.g, string, this.o, string2)), "UTF-8"));
                    if (dataAsMap.isEmpty()) {
                        throw new Exception("Empty Response");
                    }
                    String str2 = dataAsMap.get("oauth_token");
                    String str3 = dataAsMap.get(OAuth.OAUTH_TOKEN_SECRET);
                    str = dataAsMap.get(BDAccountManager.KEY_USERNAME);
                    SPFileSystem.saveUsernameAndToken(this.g, dataAsMap.get("user_nsid"), str, str2, str3);
                }
                if (str != null) {
                    String b2 = com.estrongs.android.util.ak.b(this.g, str, "fake", "/");
                    if (this.h) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("path", b2);
                        bundle2.putString("display", str);
                        Intent intent = new Intent();
                        intent.putExtras(bundle2);
                        setResult(-1, intent);
                    } else {
                        com.estrongs.android.pop.q.a(this).a(b2, str);
                    }
                    return true;
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo == null ? false : activeNetworkInfo.isConnected();
    }

    public void a() {
        this.r.sendMessage(this.r.obtainMessage(c));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        super.setContentView(C0000R.layout.new_oauth_netdisk);
        this.i = (WebView) findViewById(C0000R.id.login_page);
        this.i.getSettings().setJavaScriptEnabled(true);
        this.i.setWebViewClient(this.j);
        WebSettings settings = this.i.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
        CookieManager cookieManager = CookieManager.getInstance();
        settings.setDefaultTextEncodingName("utf-8");
        this.l = (TextView) findViewById(C0000R.id.auth_page_load_text);
        this.k = (ProgressBar) findViewById(C0000R.id.auth_page_load_progress);
        this.m = findViewById(C0000R.id.auth_layout);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            setResult(0, null);
            finish();
            return;
        }
        this.g = extras.getString("nettype");
        this.h = extras.getBoolean("editServer", false);
        new q(this).start();
        cookieManager.removeAllCookie();
        f = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        f = null;
        super.onDestroy();
    }
}
