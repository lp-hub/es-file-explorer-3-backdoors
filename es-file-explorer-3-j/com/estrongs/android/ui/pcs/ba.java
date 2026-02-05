package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ az f2306a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(az azVar) {
        this.f2306a = azVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        activity = this.f2306a.ad;
        a aVar = new a(activity);
        aVar.a(aw.a().j());
        aVar.a();
    }
}
