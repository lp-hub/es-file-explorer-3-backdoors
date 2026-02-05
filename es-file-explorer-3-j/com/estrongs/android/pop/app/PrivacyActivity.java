package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class PrivacyActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private WebView f372a;

    private boolean a(String str) {
        this.f372a.clearHistory();
        this.f372a.clearCache(true);
        this.f372a.loadUrl(str);
        return true;
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(C0000R.string.privacy_statement);
        getWindow().setBackgroundDrawable(null);
        setContentView(C0000R.layout.privacy_page);
        this.f372a = (WebView) findViewById(C0000R.id.privacy);
        this.f372a.setFocusableInTouchMode(true);
        this.f372a.getSettings().setJavaScriptEnabled(true);
        this.f372a.setWebViewClient(new hi(this));
        a(com.estrongs.android.pop.utils.bs.a() ? "http://www.estrongs.com/privacyStatement/cn/index.htm" : "http://www.estrongs.com/privacyStatement/en/index.htm");
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        finish();
        return true;
    }
}
