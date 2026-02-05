package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class ez implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ er f2119a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(er erVar) {
        this.f2119a = erVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        popAudioPlayer = this.f2119a.k;
        popAudioPlayer2 = this.f2119a.k;
        popAudioPlayer.b(popAudioPlayer2.s());
        popAudioPlayer3 = this.f2119a.k;
        popAudioPlayer3.r();
        return true;
    }
}
