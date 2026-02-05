package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ei {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f774a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f775b;
    private TextView c;
    private SeekBar d;
    private long e = -1;

    public ei(PopAudioPlayer popAudioPlayer) {
        this.f774a = popAudioPlayer;
        View findViewById = popAudioPlayer.findViewById(C0000R.id.container_progress);
        this.f775b = (TextView) findViewById.findViewById(C0000R.id.current_time);
        this.c = (TextView) findViewById.findViewById(C0000R.id.total_time);
        this.d = (SeekBar) findViewById.findViewById(C0000R.id.progress);
        this.d.setOnSeekBarChangeListener(new ej(this, popAudioPlayer));
        a();
    }

    public void a() {
        this.f775b.setText("00:00");
        this.c.setText("00:00");
        this.d.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
        this.d.setProgress(0);
    }

    public void a(int i) {
        String f;
        TextView textView = this.c;
        f = this.f774a.f(i);
        textView.setText(f);
        this.d.setMax(i);
    }

    public void b(int i) {
        String f;
        TextView textView = this.f775b;
        f = this.f774a.f(i);
        textView.setText(f);
        this.d.setProgress(i);
    }
}
