package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f412a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f413b;
    final /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(a aVar, String str, int i) {
        this.c = aVar;
        this.f412a = str;
        this.f413b = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        if (this.c.a(this.f412a, this.f413b)) {
            popAudioPlayer = this.c.p;
            popAudioPlayer.runOnUiThread(new i(this));
        } else {
            popAudioPlayer2 = this.c.p;
            popAudioPlayer2.runOnUiThread(new h(this));
        }
    }
}
