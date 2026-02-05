package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f2184a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar) {
        this.f2184a = jVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2184a.g;
        popAudioPlayer.g();
    }
}
