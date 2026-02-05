package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.e.gc;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f411a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f411a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        gc gcVar;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f411a.p;
        popAudioPlayer.m();
        gcVar = this.f411a.f385a;
        gcVar.d();
        popAudioPlayer2 = this.f411a.p;
        popAudioPlayer2.finish();
        return true;
    }
}
