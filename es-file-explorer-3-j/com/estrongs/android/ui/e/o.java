package com.estrongs.android.ui.e;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
public class o extends bu {
    private PopAudioPlayer g;
    private View h;
    private ImageView i;
    private View j;
    private ImageView k;
    private View l;
    private ImageView m;
    private View n;
    private ImageView o;
    private View p;
    private ImageView q;
    private Handler r;

    public o(Context context, boolean z) {
        super(context, z);
        k();
    }

    private void k() {
        if (!(this.f1968b instanceof PopAudioPlayer)) {
            throw new IllegalStateException("BottomMenu_AudioPlaying is used for PopAudioPlayer only!");
        }
        this.g = (PopAudioPlayer) this.f1968b;
        this.r = new Handler();
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1968b).inflate(C0000R.layout.audio_playing_toolbar_bottom, (ViewGroup) null);
        a(inflate);
        this.h = inflate.findViewById(C0000R.id.preview_container);
        this.i = (ImageView) this.h.findViewById(C0000R.id.tool_preview);
        this.h.setOnClickListener(new p(this));
        this.j = inflate.findViewById(C0000R.id.repeat_container);
        this.k = (ImageView) this.j.findViewById(C0000R.id.tool_repeat);
        this.j.setOnClickListener(new q(this));
        this.l = inflate.findViewById(C0000R.id.play_container);
        this.m = (ImageView) this.l.findViewById(C0000R.id.tool_play);
        this.l.setOnClickListener(new r(this));
        this.n = inflate.findViewById(C0000R.id.shuffle_container);
        this.o = (ImageView) this.n.findViewById(C0000R.id.tool_shuffle);
        this.n.setOnClickListener(new s(this));
        this.p = inflate.findViewById(C0000R.id.next_container);
        this.q = (ImageView) this.p.findViewById(C0000R.id.tool_next);
        this.p.setOnClickListener(new t(this));
    }

    public void b(int i) {
        if (i == 1) {
            this.o.setImageResource(C0000R.drawable.app_new_audio_ctrl_shuffle_sel);
        } else {
            this.o.setImageResource(C0000R.drawable.app_new_audio_ctrl_shuffle);
        }
    }

    public void c(int i) {
        if (i == 1) {
            this.k.setImageResource(C0000R.drawable.app_new_audio_ctrl_repeat_sel_1);
        } else if (i == 2) {
            this.k.setImageResource(C0000R.drawable.app_new_audio_ctrl_repeat_sel);
        } else {
            this.k.setImageResource(C0000R.drawable.app_new_audio_repeat);
        }
    }

    public void h() {
        this.m.setImageResource(C0000R.drawable.app_new_audio_ctrl_play);
    }

    public void i() {
        this.m.setImageResource(C0000R.drawable.app_new_audio_ctrl_play);
    }

    public void j() {
        this.m.setImageResource(C0000R.drawable.app_new_audio_ctrl_pause);
    }
}
