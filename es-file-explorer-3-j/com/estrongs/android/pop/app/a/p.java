package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f424a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(a aVar) {
        this.f424a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f424a.p;
        popAudioPlayer.o();
        this.f424a.d();
        return false;
    }
}
