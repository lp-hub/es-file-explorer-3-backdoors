package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class et implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ er f2110a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public et(er erVar) {
        this.f2110a = erVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        PopAudioPlayer popAudioPlayer5;
        List<com.estrongs.android.pop.app.a.ag> j = com.estrongs.android.pop.app.a.aj.a().j();
        j.remove(com.estrongs.android.pop.app.a.aj.a().e());
        if (j.size() == 0) {
            popAudioPlayer5 = this.f2110a.k;
            com.estrongs.android.ui.view.z.a(popAudioPlayer5, C0000R.string.audio_error_no_playlist, 0).show();
        } else {
            String[] strArr = new String[j.size() + 1];
            for (int i = 0; i < j.size(); i++) {
                String a2 = j.get(i).a();
                if (a2 == null) {
                    popAudioPlayer4 = this.f2110a.k;
                    a2 = popAudioPlayer4.getString(j.get(i).b());
                }
                strArr[i] = a2;
            }
            int size = j.size();
            popAudioPlayer = this.f2110a.k;
            strArr[size] = popAudioPlayer.getString(C0000R.string.menu_new_playlist);
            popAudioPlayer2 = this.f2110a.k;
            com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(popAudioPlayer2);
            popAudioPlayer3 = this.f2110a.k;
            aqVar.a(popAudioPlayer3.getString(C0000R.string.menu_save_to_playlist)).a(strArr, -1, new ev(this, j)).c(false).a(new eu(this)).b();
        }
        return true;
    }
}
