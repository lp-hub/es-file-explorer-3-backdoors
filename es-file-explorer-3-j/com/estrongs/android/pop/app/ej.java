package com.estrongs.android.pop.app;

import android.widget.SeekBar;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ej implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f776a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ei f777b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ej(ei eiVar, PopAudioPlayer popAudioPlayer) {
        this.f777b = eiVar;
        this.f776a = popAudioPlayer;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        AudioPlayerService audioPlayerService;
        AudioPlayerService audioPlayerService2;
        AudioPlayerService audioPlayerService3;
        TextView textView;
        String f;
        audioPlayerService = this.f777b.f774a.B;
        if (audioPlayerService != null) {
            audioPlayerService2 = this.f777b.f774a.B;
            if (audioPlayerService2.k() && z) {
                audioPlayerService3 = this.f777b.f774a.B;
                if (audioPlayerService3.j() > 0) {
                    this.f777b.e = i;
                    textView = this.f777b.f775b;
                    f = this.f777b.f774a.f(i);
                    textView.setText(f);
                    this.f777b.f774a.b(LoginCallBack.REQUEST_LOGINPROTECT);
                }
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        long j;
        AudioPlayerService audioPlayerService;
        long j2;
        j = this.f777b.e;
        if (j != -1) {
            audioPlayerService = this.f777b.f774a.B;
            j2 = this.f777b.e;
            audioPlayerService.c((int) j2);
        }
        this.f777b.e = -1L;
    }
}
