package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f421a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(a aVar) {
        this.f421a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f421a.p;
        af t = popAudioPlayer.t();
        popAudioPlayer2 = this.f421a.p;
        popAudioPlayer2.a(t);
        this.f421a.d();
        return false;
    }
}
