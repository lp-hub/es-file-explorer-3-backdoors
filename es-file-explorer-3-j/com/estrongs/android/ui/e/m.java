package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f2186a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(j jVar) {
        this.f2186a = jVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2186a.g;
        popAudioPlayer.l();
    }
}
