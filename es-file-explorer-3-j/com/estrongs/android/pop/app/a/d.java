package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f409a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar) {
        this.f409a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f409a.p;
        String str = popAudioPlayer.t().f397b;
        if (!com.estrongs.android.util.ak.aO(str)) {
            str = com.estrongs.android.util.ak.be(str);
        }
        this.f409a.a(com.estrongs.fs.d.a().j(str));
        this.f409a.d();
        return false;
    }
}
