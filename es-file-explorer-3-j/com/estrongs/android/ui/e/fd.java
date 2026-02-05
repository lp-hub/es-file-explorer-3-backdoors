package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* loaded from: classes.dex */
class fd implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ er f2125a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fd(er erVar) {
        this.f2125a = erVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        popAudioPlayer = this.f2125a.k;
        List<com.estrongs.android.pop.app.a.af> s = popAudioPlayer.s();
        if (s.size() > 0) {
            String str = s.get(0).f397b;
            if (!com.estrongs.android.util.ak.aO(str)) {
                str = com.estrongs.android.util.ak.be(str);
            }
            com.estrongs.fs.g j = com.estrongs.fs.d.a().j(str);
            if (j == null) {
                popAudioPlayer4 = this.f2125a.k;
                com.estrongs.android.ui.view.z.a(popAudioPlayer4, C0000R.string.access_failed, 1).show();
            } else {
                popAudioPlayer3 = this.f2125a.k;
                new com.estrongs.android.ui.b.df(popAudioPlayer3, j).a();
            }
        }
        popAudioPlayer2 = this.f2125a.k;
        popAudioPlayer2.r();
        return true;
    }
}
