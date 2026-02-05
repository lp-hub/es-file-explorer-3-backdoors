package com.baidu.sapi2.utils;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.loginshare.Utils;
import com.baidu.sapi2.model.LoginResponse;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"SetJavaScriptEnabled"})
/* loaded from: classes.dex */
public class LoginProtectAcitivity extends Activity {
    static final int SAPI_JS_BACK = 0;
    static final int SAPI_JS_PROTECT_RESPONSE = 1;
    private ProgressBar mProgressBar;
    private TextView mRefresh;
    private ViewSwitcher mViewSwitcher;
    private WebView mWebView;
    private String protectURL;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class InJavaScriptLocalObj {
        MyHandler handler;

        InJavaScriptLocalObj(MyHandler myHandler) {
            this.handler = myHandler;
        }

        @JavascriptInterface
        public void showSource(String str) {
            if (str == null || TextUtils.isEmpty(LoginProtectAcitivity.this.getMatcher("<client>([\\S\\s]*?)</client>", str))) {
                return;
            }
            LoginResponse loginProtectResult = SapiHelper.getInstance().loginProtectResult(str);
            Message message = new Message();
            message.obj = loginProtectResult;
            this.handler.sendMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class MyHandler extends Handler {
        private WeakReference<LoginProtectAcitivity> activity;

        public MyHandler(LoginProtectAcitivity loginProtectAcitivity) {
            this.activity = null;
            this.activity = new WeakReference<>(loginProtectAcitivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            LoginResponse loginResponse = (LoginResponse) message.obj;
            if (loginResponse == null || this.activity == null) {
                this.activity.get().setResult(0);
            } else {
                Intent intent = new Intent();
                intent.putExtra(BDAccountManager.KEY_RESULTCODE, loginResponse.errorCode);
                intent.putExtra(BDAccountManager.KEY_RESULTMSG, loginResponse.errorMsg);
                this.activity.get().setResult(-1, intent);
            }
            this.activity.get().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SapiHandler extends Handler {
        private WeakReference<LoginProtectAcitivity> activity;

        public SapiHandler(LoginProtectAcitivity loginProtectAcitivity) {
            this.activity = null;
            this.activity = new WeakReference<>(loginProtectAcitivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                this.activity.get().finish();
                return;
            }
            LoginResponse loginResponse = (LoginResponse) message.obj;
            if (loginResponse == null || this.activity == null) {
                this.activity.get().setResult(0);
            } else {
                Intent intent = new Intent();
                intent.putExtra(BDAccountManager.KEY_RESULTCODE, loginResponse.errorCode);
                intent.putExtra(BDAccountManager.KEY_RESULTMSG, loginResponse.errorMsg);
                this.activity.get().setResult(-1, intent);
            }
            this.activity.get().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class SapiJavaScriptLocalObj {
        SapiHandler handler;

        SapiJavaScriptLocalObj(SapiHandler sapiHandler) {
            this.handler = sapiHandler;
        }

        @JavascriptInterface
        public void back() {
            Message message = new Message();
            message.what = 0;
            this.handler.sendMessage(message);
        }

        @JavascriptInterface
        public void protect_response(String str) {
            Message message = new Message();
            if (str == null) {
                message.obj = null;
                message.what = 1;
                this.handler.sendMessage(message);
            } else if (TextUtils.isEmpty(LoginProtectAcitivity.this.getMatcher("<client>([\\S\\s]*?)</client>", str))) {
                message.obj = null;
                message.what = 1;
                this.handler.sendMessage(message);
            } else {
                LoginResponse loginProtectResult = SapiHelper.getInstance().loginProtectResult(str);
                message.what = 1;
                message.obj = loginProtectResult;
                this.handler.sendMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMatcher(String str, String str2) {
        String str3 = "";
        Matcher matcher = Pattern.compile(str).matcher(str2);
        while (matcher.find()) {
            str3 = matcher.group().toString();
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initData() {
        this.mViewSwitcher.setDisplayedChild(0);
        this.mRefresh.setText("点击刷新");
        this.mWebView.loadUrl(this.protectURL);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LinearLayout linearLayout = new LinearLayout(this);
        setContentView(linearLayout);
        this.mViewSwitcher = new ViewSwitcher(this);
        this.mViewSwitcher.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.mViewSwitcher.setBackgroundColor(-1);
        linearLayout.addView(this.mViewSwitcher);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.mViewSwitcher.addView(linearLayout2);
        this.mProgressBar = new ProgressBar(this, null, R.attr.progressBarStyleHorizontal);
        this.mProgressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 10));
        this.mProgressBar.setMax(100);
        linearLayout2.addView(this.mProgressBar);
        this.mWebView = new WebView(this);
        this.mWebView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout2.addView(this.mWebView);
        this.mRefresh = new TextView(this);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.mViewSwitcher.addView(this.mRefresh);
        if (!Utils.hasActiveNetwork(this)) {
            Toast.makeText(this, "网络异常，请您的检查网络", 0).show();
            finish();
        }
        this.protectURL = getIntent().getStringExtra("protect_url");
        setupViews();
        initData();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        CookieManager.getInstance().removeSessionCookie();
        super.onDestroy();
    }

    protected void setupViews() {
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.setScrollBarStyle(0);
        this.mWebView.getSettings().setSaveFormData(false);
        this.mWebView.getSettings().setSavePassword(false);
        InJavaScriptLocalObj inJavaScriptLocalObj = new InJavaScriptLocalObj(new MyHandler(this));
        inJavaScriptLocalObj.showSource(null);
        this.mWebView.addJavascriptInterface(inJavaScriptLocalObj, "local_obj");
        this.mWebView.addJavascriptInterface(new SapiJavaScriptLocalObj(new SapiHandler(this)), "sapi_obj");
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.baidu.sapi2.utils.LoginProtectAcitivity.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                LoginProtectAcitivity.this.mProgressBar.setVisibility(8);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                LoginProtectAcitivity.this.mProgressBar.setProgress(0);
                LoginProtectAcitivity.this.mProgressBar.setVisibility(0);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                LoginProtectAcitivity.this.mViewSwitcher.setDisplayedChild(0);
                LoginProtectAcitivity.this.mRefresh.setText("页面加载失败，点击刷新");
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
                sslErrorHandler.proceed();
            }
        });
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.baidu.sapi2.utils.LoginProtectAcitivity.2
            @Override // android.webkit.WebChromeClient
            public void onCloseWindow(WebView webView) {
                super.onCloseWindow(webView);
                LoginProtectAcitivity.this.finish();
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (i < 100) {
                    LoginProtectAcitivity.this.mProgressBar.setProgress(i);
                }
            }
        });
        this.mWebView.requestFocus(130);
        this.mWebView.setOnTouchListener(new View.OnTouchListener() { // from class: com.baidu.sapi2.utils.LoginProtectAcitivity.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                    case 1:
                        if (view.hasFocus()) {
                            return false;
                        }
                        view.requestFocus();
                        return false;
                    default:
                        return false;
                }
            }
        });
        this.mRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.baidu.sapi2.utils.LoginProtectAcitivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoginProtectAcitivity.this.initData();
            }
        });
    }
}
