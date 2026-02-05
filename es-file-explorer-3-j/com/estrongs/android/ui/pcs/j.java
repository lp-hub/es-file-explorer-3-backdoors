package com.estrongs.android.ui.pcs;

import android.os.Handler;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2366a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(d dVar) {
        this.f2366a = dVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Handler handler;
        this.f2366a.e();
        view.setEnabled(false);
        handler = this.f2366a.A;
        handler.postDelayed(new k(this, view), 1000L);
    }
}
