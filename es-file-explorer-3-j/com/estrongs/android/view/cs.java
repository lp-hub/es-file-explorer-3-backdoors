package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.ESViewStub;

/* loaded from: classes.dex */
public class cs extends ar {

    /* renamed from: a, reason: collision with root package name */
    protected WebView f2823a;

    /* renamed from: b, reason: collision with root package name */
    private ProgressBar f2824b;

    public cs(Activity activity, ViewGroup viewGroup, bs bsVar) {
        super(activity, viewGroup, null, bsVar);
        this.f2823a = null;
        this.g.setVisibility(8);
        ESViewStub eSViewStub = (ESViewStub) l(C0000R.id.web_view_stub);
        eSViewStub.b(C0000R.layout.content_web_view);
        eSViewStub.a(C0000R.id.web_view_stub);
        eSViewStub.a(com.estrongs.android.pop.esclasses.e.a(activity));
        View a2 = eSViewStub.a();
        this.f2824b = (ProgressBar) a2.findViewById(C0000R.id.progress_bar);
        this.f2823a = (WebView) a2.findViewById(C0000R.id.web_view);
        WebSettings settings = this.f2823a.getSettings();
        settings.setBuiltInZoomControls(false);
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        this.f2823a.setWebViewClient(new ct(this));
        this.f2823a.setWebChromeClient(new cu(this));
        this.f2823a.setDownloadListener(new cv(this));
    }

    @Override // com.estrongs.android.view.ar
    public boolean P() {
        return !this.f2823a.canGoBack();
    }

    @Override // com.estrongs.android.view.an
    public void a(View.OnTouchListener onTouchListener) {
        super.a(onTouchListener);
        this.f2823a.setOnTouchListener(new cy(this, onTouchListener));
    }

    @Override // com.estrongs.android.view.ar
    public void a(String str) {
        this.w = str;
        this.x = new cw(this, this.w);
        b(true);
    }

    @Override // com.estrongs.android.view.ar
    public void a_() {
        super.a_();
        if (this.f2823a != null) {
            ((ViewGroup) this.f2823a.getParent()).removeAllViews();
            this.f2823a.stopLoading();
            this.f2823a.removeAllViews();
            this.f2823a.clearHistory();
            this.f2823a.clearCache(true);
            this.f2823a.destroy();
            this.f2823a = null;
        }
    }

    @Override // com.estrongs.android.view.ar
    public void b(boolean z) {
        this.ad.runOnUiThread(new cx(this));
    }

    @Override // com.estrongs.android.view.ar
    public String c() {
        return this.w;
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g f() {
        if (!this.f2823a.canGoBack()) {
            return null;
        }
        this.f2823a.goBack();
        return this.x;
    }

    public boolean n() {
        return this.f2823a.canGoBack();
    }

    public boolean o() {
        return this.f2823a.canGoForward();
    }

    public com.estrongs.fs.g p() {
        if (!this.f2823a.canGoForward()) {
            return null;
        }
        this.f2823a.goForward();
        return this.x;
    }
}
