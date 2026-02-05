package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.bv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f425a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(a aVar) {
        this.f425a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        popAudioPlayer = this.f425a.p;
        ag n = popAudioPlayer.n();
        if (n != null) {
            popAudioPlayer2 = this.f425a.p;
            popAudioPlayer3 = this.f425a.p;
            bv bvVar = new bv(popAudioPlayer2, popAudioPlayer3.getString(C0000R.string.audio_rename_list), "");
            bvVar.a(new r(this, n));
            bvVar.show();
        }
        this.f425a.d();
        return false;
    }
}
