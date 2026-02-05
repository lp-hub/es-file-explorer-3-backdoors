package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2369a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(d dVar) {
        this.f2369a = dVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Handler handler;
        this.f2369a.f();
        view.setEnabled(false);
        handler = this.f2369a.A;
        handler.postDelayed(new m(this, view), 1000L);
    }
}
