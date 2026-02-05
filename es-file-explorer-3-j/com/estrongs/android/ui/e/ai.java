package com.estrongs.android.ui.e;

import android.content.Intent;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class ai implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f1980a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ah ahVar) {
        this.f1980a = ahVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1980a.f1979b[0] != null) {
            this.f1980a.f1979b[0].hide();
        }
        this.f1980a.c.f1975a.f1968b.startActivity(new Intent(this.f1980a.c.f1975a.f1968b, (Class<?>) PopAudioPlayer.class));
    }
}
