package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.bv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f428a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(a aVar) {
        this.f428a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        popAudioPlayer = this.f428a.p;
        popAudioPlayer2 = this.f428a.p;
        bv bvVar = new bv(popAudioPlayer, popAudioPlayer2.getString(C0000R.string.audio_save_list), "");
        bvVar.a(new t(this));
        bvVar.show();
        this.f428a.d();
        return false;
    }
}
