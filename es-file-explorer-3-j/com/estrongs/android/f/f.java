package com.estrongs.android.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f299a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f299a = eVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction())) {
            this.f299a.a(intent.getIntExtra("wifi_state", 4));
        }
    }
}
