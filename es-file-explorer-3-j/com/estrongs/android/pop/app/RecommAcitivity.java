package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.RecommendListView;

/* loaded from: classes.dex */
public class RecommAcitivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private ProgressBar f373a;

    /* renamed from: b, reason: collision with root package name */
    private RecommendListView f374b;
    private com.estrongs.android.ui.theme.al c;
    private View d;
    private ProgressBar f;
    private WebView g;
    private boolean e = false;
    private Handler h = new ho(this);

    private boolean a() {
        return com.estrongs.android.pop.view.utils.n.b().a((Context) this) / 1000 > 60;
    }

    public void a(Intent intent) {
        super.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(C0000R.layout.recomm);
        this.c = com.estrongs.android.ui.theme.al.a(this);
        this.d = findViewById(C0000R.id.recomm_tools_top);
        ((ImageView) findViewById(C0000R.id.recomm_tool_return)).setOnClickListener(new hj(this));
        this.f373a = (ProgressBar) findViewById(C0000R.id.recomm_list_refresh_bk);
        findViewById(C0000R.id.recomm_list_layout).setBackgroundDrawable(this.c.g());
        this.f374b = (RecommendListView) findViewById(C0000R.id.recomm_list);
        if (!com.estrongs.android.pop.utils.bs.a()) {
            com.estrongs.android.pop.view.utils.n.b().a(this.h);
            this.f374b.a(this.h, com.estrongs.android.pop.view.utils.n.b().d());
            if (a()) {
                this.f373a.setVisibility(0);
                com.estrongs.android.pop.view.utils.n.b().c();
            }
            this.f374b.setOnItemClickListener(new hn(this));
            return;
        }
        this.e = true;
        findViewById(C0000R.id.web_pane).setVisibility(0);
        this.f = (ProgressBar) findViewById(C0000R.id.progress_bar);
        this.g = (WebView) findViewById(C0000R.id.recomm_web);
        this.g.getSettings().setJavaScriptEnabled(true);
        findViewById(C0000R.id.recomm_pane).setVisibility(8);
        this.g.setWebViewClient(new hk(this));
        this.g.setWebChromeClient(new hl(this));
        this.g.setDownloadListener(new hm(this));
        this.g.loadUrl("http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (!com.estrongs.android.pop.utils.bs.a()) {
            return true;
        }
        menu.add(0, 2, 0, C0000R.string.exit_recommend);
        return true;
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        com.estrongs.android.pop.view.utils.n.b().f();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!this.e || i != 4 || !this.g.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.g.goBack();
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2:
                finish();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f374b.a();
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        try {
            super.startActivity(intent);
        } catch (ActivityNotFoundException e) {
        }
    }
}
