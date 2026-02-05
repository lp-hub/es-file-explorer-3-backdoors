package com.estrongs.android.ui.e;

import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ff extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2127a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f2128b;
    final /* synthetic */ er c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ff(er erVar, String str, int i) {
        this.c = erVar;
        this.f2127a = str;
        this.f2128b = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        if (this.c.a(this.f2127a, this.f2128b)) {
            popAudioPlayer = this.c.k;
            popAudioPlayer.runOnUiThread(new fh(this));
        } else {
            popAudioPlayer2 = this.c.k;
            popAudioPlayer2.runOnUiThread(new fg(this));
        }
    }
}
