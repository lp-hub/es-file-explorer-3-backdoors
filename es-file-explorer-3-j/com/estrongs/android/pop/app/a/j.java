package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.aq;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f416a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(a aVar) {
        this.f416a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        PopAudioPlayer popAudioPlayer5;
        List<ag> j = aj.a().j();
        j.remove(aj.a().e());
        if (j.size() == 0) {
            popAudioPlayer5 = this.f416a.p;
            com.estrongs.android.ui.view.z.a(popAudioPlayer5, C0000R.string.audio_error_no_playlist, 0).show();
            return true;
        }
        String[] strArr = new String[j.size() + 1];
        for (int i = 0; i < j.size(); i++) {
            String a2 = j.get(i).a();
            if (a2 == null) {
                popAudioPlayer4 = this.f416a.p;
                a2 = popAudioPlayer4.getString(j.get(i).b());
            }
            strArr[i] = a2;
        }
        int size = j.size();
        popAudioPlayer = this.f416a.p;
        strArr[size] = popAudioPlayer.getString(C0000R.string.menu_new_playlist);
        popAudioPlayer2 = this.f416a.p;
        aq aqVar = new aq(popAudioPlayer2);
        popAudioPlayer3 = this.f416a.p;
        aqVar.a(popAudioPlayer3.getString(C0000R.string.menu_save_to_playlist)).a(strArr, -1, new k(this, j)).c(false).b();
        this.f416a.d();
        return false;
    }
}
