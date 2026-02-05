package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.aq;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f430a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(a aVar) {
        this.f430a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        popAudioPlayer = this.f430a.p;
        popAudioPlayer2 = this.f430a.p;
        popAudioPlayer3 = this.f430a.p;
        String[] strArr = {popAudioPlayer.getString(C0000R.string.menu_set_ringtone), popAudioPlayer2.getString(C0000R.string.menu_set_notification), popAudioPlayer3.getString(C0000R.string.menu_set_alarm)};
        popAudioPlayer4 = this.f430a.p;
        new aq(popAudioPlayer4).a(C0000R.string.menu_set_ringtone).a(strArr, -1, new v(this)).c(false).b();
        this.f430a.d();
        return false;
    }
}
