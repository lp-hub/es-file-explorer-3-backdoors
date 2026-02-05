package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class fe implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ er f2126a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fe(er erVar) {
        this.f2126a = erVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        popAudioPlayer = this.f2126a.k;
        List<com.estrongs.android.pop.app.a.af> s = popAudioPlayer.s();
        if (s.size() > 0) {
            String str = s.get(0).f397b;
            if (!com.estrongs.android.util.ak.aO(str)) {
                str = com.estrongs.android.util.ak.be(str);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(com.estrongs.fs.d.a().j(str));
            popAudioPlayer3 = this.f2126a.k;
            com.estrongs.android.pop.utils.aj.b(popAudioPlayer3, arrayList);
        }
        popAudioPlayer2 = this.f2126a.k;
        popAudioPlayer2.r();
        return true;
    }
}
