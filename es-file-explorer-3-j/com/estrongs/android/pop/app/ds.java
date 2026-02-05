package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ds extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f694a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ds(PopAudioPlayer popAudioPlayer) {
        this.f694a = popAudioPlayer;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        AudioPlayerService audioPlayerService;
        com.estrongs.android.ui.view.v vVar;
        AudioPlayerService audioPlayerService2;
        com.estrongs.android.ui.view.v vVar2;
        AudioPlayerService audioPlayerService3;
        AudioPlayerService audioPlayerService4;
        AudioPlayerService audioPlayerService5;
        AudioPlayerService audioPlayerService6;
        com.estrongs.android.ui.view.v vVar3;
        com.estrongs.android.ui.view.v vVar4;
        com.estrongs.android.ui.view.v vVar5;
        com.estrongs.android.ui.view.az azVar;
        com.estrongs.android.ui.view.az azVar2;
        com.estrongs.android.ui.view.az azVar3;
        AudioPlayerService audioPlayerService7;
        AudioPlayerService audioPlayerService8;
        AudioPlayerService audioPlayerService9;
        AudioPlayerService audioPlayerService10;
        ei eiVar;
        AudioPlayerService audioPlayerService11;
        AudioPlayerService audioPlayerService12;
        AudioPlayerService audioPlayerService13;
        ei eiVar2;
        ei eiVar3;
        ei eiVar4;
        z = this.f694a.I;
        if (z) {
            return;
        }
        int i = message.arg1;
        int i2 = message.arg2;
        switch (message.what) {
            case 1:
                audioPlayerService10 = this.f694a.B;
                if (audioPlayerService10 != null) {
                    audioPlayerService11 = this.f694a.B;
                    if (audioPlayerService11.k()) {
                        audioPlayerService12 = this.f694a.B;
                        int j = audioPlayerService12.j();
                        if (j <= 0) {
                            eiVar4 = this.f694a.A;
                            eiVar4.a();
                        } else {
                            audioPlayerService13 = this.f694a.B;
                            long p = audioPlayerService13.p();
                            eiVar2 = this.f694a.A;
                            eiVar2.a(j);
                            if (p > j) {
                                p = j;
                            }
                            eiVar3 = this.f694a.A;
                            eiVar3.b((int) p);
                        }
                    }
                } else {
                    eiVar = this.f694a.A;
                    eiVar.a();
                }
                this.f694a.K();
                return;
            case 2:
                break;
            case 3:
                if (message.arg1 == 0) {
                    com.estrongs.android.ui.view.z.a(this.f694a, this.f694a.getText(C0000R.string.toast_set_ringtone_f), 0).show();
                    return;
                } else {
                    com.estrongs.android.ui.view.z.a(this.f694a, this.f694a.getText(C0000R.string.toast_set_ringtone_s), 0).show();
                    return;
                }
            case 4:
                this.f694a.e(message.arg1, message.arg2);
                return;
            case 5:
                this.f694a.d();
                break;
            case 6:
                this.f694a.finish();
                return;
            case 7:
                audioPlayerService9 = this.f694a.B;
                if (audioPlayerService9 != null) {
                    new dt(this, i2, i).start();
                    return;
                }
                return;
            case 8:
                if (((Boolean) message.obj).booleanValue()) {
                    Message obtainMessage = obtainMessage(2);
                    obtainMessage.arg1 = message.arg1;
                    removeMessages(2);
                    sendMessage(obtainMessage);
                    return;
                }
                audioPlayerService7 = this.f694a.B;
                if (audioPlayerService7 != null) {
                    new dv(this, i).start();
                    return;
                }
                return;
            case 1200001:
                vVar5 = this.f694a.U;
                if (vVar5.b()) {
                    this.f694a.a();
                    azVar3 = this.f694a.q;
                    azVar3.a("playlist_edit", (Boolean) false);
                    return;
                } else {
                    this.f694a.b();
                    azVar = this.f694a.q;
                    if ("playlist_edit".equals(azVar.b())) {
                        azVar2 = this.f694a.q;
                        azVar2.a("playlist", (Boolean) false);
                        return;
                    }
                    return;
                }
            case 1200002:
                PopAudioPlayer popAudioPlayer = this.f694a;
                vVar3 = this.f694a.U;
                int size = vVar3.d().size();
                vVar4 = this.f694a.U;
                popAudioPlayer.f(size, vVar4.getCount());
                return;
            case 1200003:
                if (i2 != 1) {
                    audioPlayerService = this.f694a.B;
                    com.estrongs.android.pop.app.a.ag h = audioPlayerService.h();
                    vVar = this.f694a.U;
                    if (h != vVar.a()) {
                        audioPlayerService2 = this.f694a.B;
                        vVar2 = this.f694a.U;
                        audioPlayerService2.a(vVar2.a());
                    }
                    this.f694a.e(i);
                    return;
                }
                audioPlayerService3 = this.f694a.B;
                if (audioPlayerService3.k()) {
                    audioPlayerService4 = this.f694a.B;
                    if (audioPlayerService4.m()) {
                        audioPlayerService5 = this.f694a.B;
                        audioPlayerService5.E();
                        return;
                    } else {
                        audioPlayerService6 = this.f694a.B;
                        audioPlayerService6.u();
                        return;
                    }
                }
                return;
            default:
                return;
        }
        int i3 = message.what;
        audioPlayerService8 = this.f694a.B;
        if (audioPlayerService8 != null) {
            new du(this, i, i3).start();
        }
    }
}
