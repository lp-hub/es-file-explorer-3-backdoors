package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f408a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f408a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f408a.p;
        String str = popAudioPlayer.t().f397b;
        if (!com.estrongs.android.util.ak.aO(str)) {
            str = com.estrongs.android.util.ak.be(str);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.estrongs.fs.d.a().j(str));
        popAudioPlayer2 = this.f408a.p;
        com.estrongs.android.pop.utils.aj.b(popAudioPlayer2, arrayList);
        this.f408a.d();
        return false;
    }
}
