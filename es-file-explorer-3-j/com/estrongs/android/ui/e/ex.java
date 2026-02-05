package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ex implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ er f2116a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(er erVar) {
        this.f2116a = erVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        popAudioPlayer = this.f2116a.k;
        List<com.estrongs.android.pop.app.a.af> s = popAudioPlayer.s();
        if (s.size() > 0) {
            String str = s.get(0).f397b;
            ey eyVar = new ey(this, s);
            if (com.estrongs.android.util.ak.aO(str)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(com.estrongs.fs.d.a().j(str));
                popAudioPlayer4 = this.f2116a.k;
                com.estrongs.android.pop.utils.aj.a(popAudioPlayer4, arrayList, (com.estrongs.a.a.k) null, eyVar);
            } else {
                String be = com.estrongs.android.util.ak.be(str);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(com.estrongs.fs.d.a().j(be));
                popAudioPlayer3 = this.f2116a.k;
                com.estrongs.android.pop.utils.aj.a(popAudioPlayer3, arrayList2, (com.estrongs.a.a.k) null, eyVar);
            }
        }
        popAudioPlayer2 = this.f2116a.k;
        popAudioPlayer2.r();
        return true;
    }
}
