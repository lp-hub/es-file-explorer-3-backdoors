package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
final class d implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f484a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context) {
        this.f484a = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.settings.WIFI_SETTINGS");
        intent.setFlags(268435456);
        this.f484a.startActivity(intent);
        dialogInterface.dismiss();
    }
}
