package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
public class j extends bu {
    private PopAudioPlayer g;
    private View h;
    private ImageView i;
    private View j;
    private ImageView k;
    private View l;
    private ImageView m;
    private ImageView n;
    private TextView o;
    private TextView p;

    public j(Context context, boolean z) {
        super(context, z);
        k();
    }

    private void k() {
        if (!(this.f1968b instanceof PopAudioPlayer)) {
            throw new IllegalStateException("BottomMenu_AudioPlayList is used for PopAudioPlayer only!");
        }
        this.g = (PopAudioPlayer) this.f1968b;
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1968b).inflate(C0000R.layout.audio_playlist_toolbar_bottom, (ViewGroup) null);
        a(inflate);
        this.h = inflate.findViewById(C0000R.id.preview_container);
        this.i = (ImageView) this.h.findViewById(C0000R.id.tool_preview);
        this.h.setOnClickListener(new k(this));
        this.j = inflate.findViewById(C0000R.id.play_container);
        this.k = (ImageView) this.j.findViewById(C0000R.id.tool_play);
        this.j.setOnClickListener(new l(this));
        this.l = inflate.findViewById(C0000R.id.next_container);
        this.m = (ImageView) this.l.findViewById(C0000R.id.tool_next);
        this.l.setOnClickListener(new m(this));
        this.n = (ImageView) inflate.findViewById(C0000R.id.icon);
        this.o = (TextView) inflate.findViewById(C0000R.id.title);
        this.p = (TextView) inflate.findViewById(C0000R.id.artist);
        inflate.findViewById(C0000R.id.playing_info).setOnClickListener(new n(this));
    }

    public void a(Bitmap bitmap) {
        this.n.setImageBitmap(bitmap);
    }

    public void a(String str) {
        this.o.setText(str);
    }

    public void b(String str) {
        this.p.setText(str);
    }

    public void h() {
        this.k.setImageResource(C0000R.drawable.app_new_audio_ctrl_play);
    }

    public void i() {
        this.k.setImageResource(C0000R.drawable.app_new_audio_ctrl_play);
    }

    public void j() {
        this.k.setImageResource(C0000R.drawable.app_new_audio_ctrl_pause);
    }
}
