package com.estrongs.android.pop.app;

import android.media.MediaPlayer;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hd implements MediaPlayer.OnErrorListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f867a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hd(PopVideoPlayer popVideoPlayer) {
        this.f867a = popVideoPlayer;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        boolean b2;
        b2 = this.f867a.b();
        if (b2) {
            this.f867a.finish();
        } else {
            new com.estrongs.android.ui.b.aq(this.f867a).a(C0000R.string.media_playback_error_title).b(C0000R.string.media_playback_error_text).a(C0000R.string.confirm_ok, new he(this)).b();
        }
        return true;
    }
}
