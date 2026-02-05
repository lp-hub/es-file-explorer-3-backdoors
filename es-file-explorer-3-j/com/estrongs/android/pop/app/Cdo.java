package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.List;

/* renamed from: com.estrongs.android.pop.app.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f690a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cdo(PopAudioPlayer popAudioPlayer) {
        this.f690a = popAudioPlayer;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0076 A[Catch: Exception -> 0x00a5, TRY_LEAVE, TryCatch #0 {Exception -> 0x00a5, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x0012, B:8:0x001e, B:10:0x002a, B:12:0x0037, B:14:0x004b, B:16:0x0063, B:18:0x006b, B:22:0x0076), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onReceive(Context context, Intent intent) {
        AudioPlayerService audioPlayerService;
        AudioPlayerService audioPlayerService2;
        AudioPlayerService audioPlayerService3;
        AudioPlayerService audioPlayerService4;
        boolean z;
        AudioPlayerService audioPlayerService5;
        AudioPlayerService audioPlayerService6;
        AudioPlayerService audioPlayerService7;
        AudioPlayerService audioPlayerService8;
        AudioPlayerService audioPlayerService9;
        AudioPlayerService audioPlayerService10;
        try {
            if ("Market".equalsIgnoreCase("Market")) {
                return;
            }
            audioPlayerService = this.f690a.B;
            if (audioPlayerService == null) {
                return;
            }
            audioPlayerService2 = this.f690a.B;
            if (!audioPlayerService2.k()) {
                return;
            }
            audioPlayerService3 = this.f690a.B;
            if (!audioPlayerService3.m()) {
                return;
            }
            audioPlayerService4 = this.f690a.B;
            com.estrongs.android.pop.app.a.ag h = audioPlayerService4.h();
            if (h != null) {
                int size = h.c().size();
                audioPlayerService9 = this.f690a.B;
                if (size > audioPlayerService9.i()) {
                    List<com.estrongs.android.pop.app.a.af> c = h.c();
                    audioPlayerService10 = this.f690a.B;
                    String str = c.get(audioPlayerService10.i()).f397b;
                    if (str != null && (str.startsWith("/") || str.startsWith("file:///"))) {
                        z = true;
                        if (z) {
                            return;
                        }
                        PopAudioPlayer popAudioPlayer = this.f690a;
                        audioPlayerService5 = this.f690a.B;
                        popAudioPlayer.f364a = audioPlayerService5.p();
                        PopAudioPlayer popAudioPlayer2 = this.f690a;
                        audioPlayerService6 = this.f690a.B;
                        popAudioPlayer2.f365b = audioPlayerService6.i();
                        audioPlayerService7 = this.f690a.B;
                        audioPlayerService7.z();
                        audioPlayerService8 = this.f690a.B;
                        audioPlayerService8.t();
                        return;
                    }
                }
            }
            z = false;
            if (z) {
            }
        } catch (Exception e) {
        }
    }
}
