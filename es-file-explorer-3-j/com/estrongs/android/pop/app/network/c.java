package com.estrongs.android.pop.app.network;

import android.content.Intent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1068a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(EsNetworkActivity esNetworkActivity) {
        this.f1068a = esNetworkActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("android.settings.WIRELESS_SETTINGS");
        intent.setFlags(268435456);
        this.f1068a.startActivity(intent);
    }
}
