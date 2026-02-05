package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f2185a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(j jVar) {
        this.f2185a = jVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2185a.g;
        popAudioPlayer.j();
    }
}
