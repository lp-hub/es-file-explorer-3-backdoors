package com.estrongs.android.pop.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class i implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    AudioManager f893a;

    /* renamed from: b, reason: collision with root package name */
    AudioPlayerService f894b;
    boolean c = false;

    public i(Context context, AudioPlayerService audioPlayerService) {
        this.f893a = (AudioManager) context.getSystemService("audio");
        this.f894b = audioPlayerService;
    }

    public boolean a() {
        return 1 == this.f893a.requestAudioFocus(this, 3, 1);
    }

    public boolean b() {
        return 1 == this.f893a.abandonAudioFocus(this);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (this.f894b == null) {
            return;
        }
        switch (i) {
            case -2:
            case -1:
                if (!this.f894b.k() || this.f894b.m()) {
                    return;
                }
                this.c = true;
                this.f894b.u();
                return;
            case 0:
            default:
                return;
            case 1:
                if (this.f894b.k() && this.f894b.m() && this.c) {
                    this.c = false;
                    this.f894b.E();
                    return;
                }
                return;
        }
    }
}
