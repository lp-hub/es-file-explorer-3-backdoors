package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* loaded from: classes.dex */
class j extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AudioPlayerService f1051a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(AudioPlayerService audioPlayerService) {
        this.f1051a = audioPlayerService;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.e("test", "receive notification action : " + action);
        if ("com.estrongs.action.audio.control.preview".equals(action)) {
            this.f1051a.v();
            return;
        }
        if ("com.estrongs.action.audio.control.play".equals(action)) {
            this.f1051a.y();
            return;
        }
        if ("com.estrongs.action.audio.control.next".equals(action)) {
            this.f1051a.x();
        } else if ("com.estrongs.action.audio.control.close".equals(action)) {
            this.f1051a.o();
            this.f1051a.z();
            com.estrongs.android.pop.app.a.aj.k();
        }
    }
}
