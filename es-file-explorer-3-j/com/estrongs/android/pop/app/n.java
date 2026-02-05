package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* loaded from: classes.dex */
class n extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AudioPlayerService f1063a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(AudioPlayerService audioPlayerService) {
        this.f1063a = audioPlayerService;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z;
        Bundle extras = intent.getExtras();
        if (extras != null && extras.getInt("state") == 0) {
            z = this.f1063a.m;
            if (z) {
                this.f1063a.u();
            }
        }
    }
}
