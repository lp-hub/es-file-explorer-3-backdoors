package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
class dx extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f702a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dx(PopAudioPlayer popAudioPlayer) {
        this.f702a = popAudioPlayer;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AudioPlayerService audioPlayerService;
        try {
            if ("Market".equalsIgnoreCase("Market")) {
                return;
            }
            if (this.f702a.f365b != -1 && this.f702a.f364a != -1) {
                audioPlayerService = this.f702a.B;
                if (audioPlayerService != null) {
                    this.f702a.g(this.f702a.f365b, this.f702a.f364a);
                }
            }
            this.f702a.f365b = -1;
            this.f702a.f364a = -1;
        } catch (Exception e) {
        }
    }
}
