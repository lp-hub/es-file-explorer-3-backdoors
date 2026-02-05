package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* loaded from: classes.dex */
class fc implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ er f2124a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fc(er erVar) {
        this.f2124a = erVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        popAudioPlayer = this.f2124a.k;
        List<com.estrongs.android.pop.app.a.af> s = popAudioPlayer.s();
        if (s.size() > 0) {
            String str = s.get(0).f397b;
            if (!com.estrongs.android.util.ak.aO(str)) {
                str = com.estrongs.android.util.ak.be(str);
            }
            popAudioPlayer3 = this.f2124a.k;
            com.estrongs.android.pop.utils.aj.a(popAudioPlayer3, str);
        }
        popAudioPlayer2 = this.f2124a.k;
        popAudioPlayer2.r();
        return true;
    }
}
