package com.estrongs.android.pop.app.network;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1073a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(EsNetworkActivity esNetworkActivity) {
        this.f1073a = esNetworkActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1073a.finish();
    }
}
