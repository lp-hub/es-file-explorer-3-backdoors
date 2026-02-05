package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.by;

/* loaded from: classes.dex */
class t implements by {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f429a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(s sVar) {
        this.f429a = sVar;
    }

    @Override // com.estrongs.android.ui.b.by
    public void a(String str) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        if (aj.a().b(str)) {
            popAudioPlayer4 = this.f429a.f428a.p;
            com.estrongs.android.ui.view.z.a(popAudioPlayer4, C0000R.string.error_playlist_exists, 0).show();
            return;
        }
        popAudioPlayer = this.f429a.f428a.p;
        ag n = popAudioPlayer.n();
        if (n.f()) {
            n.a(str);
            n.e();
        }
        aj.a().g();
        popAudioPlayer2 = this.f429a.f428a.p;
        popAudioPlayer2.a(false);
        popAudioPlayer3 = this.f429a.f428a.p;
        popAudioPlayer3.e();
    }
}
