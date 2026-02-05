package com.estrongs.android.pop.app;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.RealViewSwitcher;
import java.util.List;

/* loaded from: classes.dex */
class dw implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f701a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dw(PopAudioPlayer popAudioPlayer) {
        this.f701a = popAudioPlayer;
    }

    /* JADX WARN: Incorrect condition in loop: B:20:0x00a3 */
    @Override // android.content.ServiceConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        AudioPlayerService audioPlayerService;
        boolean z;
        AudioPlayerService audioPlayerService2;
        ek ekVar;
        List list;
        AudioPlayerService audioPlayerService3;
        AudioPlayerService audioPlayerService4;
        AudioPlayerService audioPlayerService5;
        AudioPlayerService audioPlayerService6;
        AudioPlayerService audioPlayerService7;
        AudioPlayerService audioPlayerService8;
        AudioPlayerService audioPlayerService9;
        AudioPlayerService audioPlayerService10;
        String str;
        boolean z2;
        RealViewSwitcher realViewSwitcher;
        String str2;
        AudioPlayerService audioPlayerService11;
        AudioPlayerService audioPlayerService12;
        AudioPlayerService audioPlayerService13;
        AudioPlayerService audioPlayerService14;
        com.estrongs.android.pop.app.a.ag b2;
        List list2;
        AudioPlayerService audioPlayerService15;
        AudioPlayerService audioPlayerService16;
        AudioPlayerService audioPlayerService17;
        AudioPlayerService audioPlayerService18;
        List list3;
        AudioPlayerService audioPlayerService19;
        AudioPlayerService audioPlayerService20;
        AudioPlayerService audioPlayerService21;
        AudioPlayerService audioPlayerService22;
        this.f701a.B = ((q) iBinder).a();
        audioPlayerService = this.f701a.B;
        if (audioPlayerService == null) {
            return;
        }
        z = this.f701a.I;
        if (z && ("Market".startsWith("Spreadtrum") || "Market".equalsIgnoreCase("Huawei"))) {
            audioPlayerService19 = this.f701a.B;
            audioPlayerService19.a((ek) null);
            audioPlayerService20 = this.f701a.B;
            audioPlayerService20.z();
            audioPlayerService21 = this.f701a.B;
            audioPlayerService21.t();
            audioPlayerService22 = this.f701a.B;
            audioPlayerService22.o();
            this.f701a.N();
            return;
        }
        audioPlayerService2 = this.f701a.B;
        ekVar = this.f701a.g;
        audioPlayerService2.a(ekVar);
        this.f701a.F = null;
        list = this.f701a.E;
        if (list != null) {
            audioPlayerService14 = this.f701a.B;
            audioPlayerService14.t();
            com.estrongs.android.pop.app.a.ag b3 = com.estrongs.android.pop.app.a.aj.a().b();
            if (b3.f398a == -1) {
                b3.d();
                b2 = b3;
            } else {
                com.estrongs.android.pop.app.a.aj.a().a((com.estrongs.android.pop.app.a.ag) null);
                b2 = com.estrongs.android.pop.app.a.aj.a().b();
            }
            for (int i = 0; i < list2.size(); i++) {
                list3 = this.f701a.E;
                b2.b((String) list3.get(i));
            }
            audioPlayerService15 = this.f701a.B;
            audioPlayerService15.a(b2);
            PopAudioPlayer popAudioPlayer = this.f701a;
            audioPlayerService16 = this.f701a.B;
            popAudioPlayer.P = audioPlayerService16.c();
            PopAudioPlayer popAudioPlayer2 = this.f701a;
            audioPlayerService17 = this.f701a.B;
            popAudioPlayer2.O = audioPlayerService17.b();
            audioPlayerService18 = this.f701a.B;
            this.f701a.a(audioPlayerService18.d(), true);
        } else {
            audioPlayerService3 = this.f701a.B;
            if (audioPlayerService3.h() != null) {
                PopAudioPlayer popAudioPlayer3 = this.f701a;
                audioPlayerService4 = this.f701a.B;
                popAudioPlayer3.P = audioPlayerService4.c();
                PopAudioPlayer popAudioPlayer4 = this.f701a;
                audioPlayerService5 = this.f701a.B;
                popAudioPlayer4.O = audioPlayerService5.b();
            } else {
                this.f701a.u();
                this.f701a.G = true;
            }
        }
        PopAudioPlayer popAudioPlayer5 = this.f701a;
        audioPlayerService6 = this.f701a.B;
        popAudioPlayer5.F = audioPlayerService6.a();
        this.f701a.a(true);
        this.f701a.e();
        audioPlayerService7 = this.f701a.B;
        if (audioPlayerService7.k()) {
            audioPlayerService11 = this.f701a.B;
            int i2 = audioPlayerService11.i();
            audioPlayerService12 = this.f701a.B;
            if (audioPlayerService12.m()) {
                this.f701a.h(2, i2);
                this.f701a.h(3, i2);
            } else {
                audioPlayerService13 = this.f701a.B;
                if (audioPlayerService13.n()) {
                    this.f701a.h(3, i2);
                } else {
                    this.f701a.h(3, i2);
                    this.f701a.h(4, i2);
                }
            }
        } else {
            audioPlayerService8 = this.f701a.B;
            if (audioPlayerService8.h() != null) {
                audioPlayerService9 = this.f701a.B;
                if (!audioPlayerService9.h().c().isEmpty()) {
                    audioPlayerService10 = this.f701a.B;
                    int i3 = audioPlayerService10.i();
                    if (i3 == -1) {
                        i3 = 0;
                    }
                    this.f701a.h(2, i3);
                    this.f701a.h(3, i3);
                }
            }
        }
        this.f701a.J();
        str = this.f701a.F;
        if (str != null) {
            PopAudioPlayer popAudioPlayer6 = this.f701a;
            str2 = this.f701a.F;
            popAudioPlayer6.a((CharSequence) str2);
        } else {
            this.f701a.a(this.f701a.getText(C0000R.string.now_playing_title));
        }
        z2 = this.f701a.G;
        if (z2) {
            this.f701a.G = false;
            realViewSwitcher = this.f701a.i;
            realViewSwitcher.a(1);
            this.f701a.f.c(1);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f701a.B = null;
    }
}
