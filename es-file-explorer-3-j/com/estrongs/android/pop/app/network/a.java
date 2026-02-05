package com.estrongs.android.pop.app.network;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1066a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(EsNetworkActivity esNetworkActivity) {
        this.f1066a = esNetworkActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.f.a aVar;
        aVar = this.f1066a.o;
        aVar.c();
    }
}
