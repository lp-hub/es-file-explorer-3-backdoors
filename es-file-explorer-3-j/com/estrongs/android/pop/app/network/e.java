package com.estrongs.android.pop.app.network;

import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1070a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(EsNetworkActivity esNetworkActivity) {
        this.f1070a = esNetworkActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LinearLayout linearLayout;
        com.estrongs.android.f.h hVar;
        linearLayout = this.f1070a.f;
        if (linearLayout.isEnabled()) {
            hVar = this.f1070a.n;
            hVar.c();
        }
    }
}
