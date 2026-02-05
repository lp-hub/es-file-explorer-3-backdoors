package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f432a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(a aVar) {
        this.f432a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f432a.p;
        String str = popAudioPlayer.t().f397b;
        if (!com.estrongs.android.util.ak.aO(str)) {
            str = com.estrongs.android.util.ak.be(str);
        }
        popAudioPlayer2 = this.f432a.p;
        com.estrongs.android.pop.utils.aj.a(popAudioPlayer2, str);
        this.f432a.d();
        return false;
    }
}
