package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class HelpActivity extends ESActivity {
    private WebView c;

    /* renamed from: a, reason: collision with root package name */
    private final String f351a = "text/html";

    /* renamed from: b, reason: collision with root package name */
    private final String f352b = "utf-8";
    private final String[] d = {"index.html"};
    private final int[] e = new int[0];
    private int f = 0;

    private boolean a(String str) {
        this.c.clearHistory();
        this.c.clearCache(true);
        this.c.loadUrl(str);
        return true;
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(C0000R.string.help_title);
        getWindow().setBackgroundDrawable(null);
        setContentView(C0000R.layout.help_page);
        this.c = (WebView) findViewById(C0000R.id.help);
        this.c.setFocusableInTouchMode(true);
        this.c.getSettings().setJavaScriptEnabled(true);
        this.c.setWebViewClient(new bf(this));
        a(com.estrongs.android.pop.utils.bs.a() ? "http://www.estrongs.com/eshelp/cn/ES_File_Explorer_User_Manual3.0.htm" : "http://www.estrongs.com/eshelp/en/ES_File_Explorer_User_Manual3.0.htm");
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
