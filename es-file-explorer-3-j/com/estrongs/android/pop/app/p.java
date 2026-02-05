package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;

/* loaded from: classes.dex */
class p extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AudioPlayerService f1077a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(AudioPlayerService audioPlayerService) {
        this.f1077a = audioPlayerService;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if ("Market".equalsIgnoreCase("Market")) {
            String string = intent.getExtras().getString("state");
            if (string.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                z3 = this.f1077a.m;
                if (z3) {
                    z4 = this.f1077a.n;
                    if (z4) {
                        return;
                    }
                    this.f1077a.f340a = true;
                    this.f1077a.u();
                    return;
                }
                return;
            }
            if (string.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                z = this.f1077a.m;
                if (z) {
                    z2 = this.f1077a.n;
                    if (z2) {
                        return;
                    }
                    this.f1077a.f340a = true;
                    this.f1077a.u();
                }
            }
        }
    }
}
