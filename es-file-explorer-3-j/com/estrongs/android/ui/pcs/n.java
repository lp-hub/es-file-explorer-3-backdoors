package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2372a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(d dVar) {
        this.f2372a = dVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Handler handler;
        this.f2372a.g();
        view.setEnabled(false);
        handler = this.f2372a.A;
        handler.postDelayed(new o(this, view), 1000L);
    }
}
