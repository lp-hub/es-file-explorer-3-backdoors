package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f422a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(a aVar) {
        this.f422a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        popAudioPlayer = this.f422a.p;
        String str = popAudioPlayer.t().f397b;
        o oVar = new o(this);
        ArrayList arrayList = new ArrayList();
        if (com.estrongs.android.util.ak.aO(str)) {
            arrayList.add(com.estrongs.fs.d.a().j(str));
            popAudioPlayer3 = this.f422a.p;
            com.estrongs.android.pop.utils.aj.a(popAudioPlayer3, arrayList, (com.estrongs.a.a.k) null, oVar);
        } else {
            arrayList.add(com.estrongs.fs.d.a().j(com.estrongs.android.util.ak.be(str)));
            popAudioPlayer2 = this.f422a.p;
            com.estrongs.android.pop.utils.aj.a(popAudioPlayer2, arrayList, (com.estrongs.a.a.k) null, oVar);
        }
        this.f422a.d();
        return false;
    }
}
