package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
class o extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AudioPlayerService f1076a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(AudioPlayerService audioPlayerService) {
        this.f1076a = audioPlayerService;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            this.f1076a.o();
        } catch (Exception e) {
        }
    }
}
