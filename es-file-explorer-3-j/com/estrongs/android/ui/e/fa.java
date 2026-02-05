package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fa implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ er f2121a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(er erVar) {
        this.f2121a = erVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        PopAudioPlayer popAudioPlayer5;
        PopAudioPlayer popAudioPlayer6;
        popAudioPlayer = this.f2121a.k;
        List<com.estrongs.android.pop.app.a.af> s = popAudioPlayer.s();
        if (s.size() > 0) {
            com.estrongs.android.pop.app.a.af afVar = s.get(0);
            popAudioPlayer3 = this.f2121a.k;
            popAudioPlayer4 = this.f2121a.k;
            popAudioPlayer5 = this.f2121a.k;
            String[] strArr = {popAudioPlayer3.getString(C0000R.string.menu_set_ringtone), popAudioPlayer4.getString(C0000R.string.menu_set_notification), popAudioPlayer5.getString(C0000R.string.menu_set_alarm)};
            popAudioPlayer6 = this.f2121a.k;
            new com.estrongs.android.ui.b.aq(popAudioPlayer6).a(C0000R.string.menu_set_ringtone).a(strArr, -1, new fb(this, afVar)).c(false).b();
        }
        popAudioPlayer2 = this.f2121a.k;
        popAudioPlayer2.r();
        return true;
    }
}
