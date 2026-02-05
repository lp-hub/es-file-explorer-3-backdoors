package com.estrongs.android.pop.app.network;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1067a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(EsNetworkActivity esNetworkActivity) {
        this.f1067a = esNetworkActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.f.h hVar;
        hVar = this.f1067a.n;
        hVar.d();
    }
}
