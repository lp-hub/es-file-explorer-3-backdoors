package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.by;

/* loaded from: classes.dex */
class r implements by {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f426a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ q f427b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar, ag agVar) {
        this.f427b = qVar;
        this.f426a = agVar;
    }

    @Override // com.estrongs.android.ui.b.by
    public void a(String str) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        if (aj.a().b(str)) {
            popAudioPlayer2 = this.f427b.f425a.p;
            com.estrongs.android.ui.view.z.a(popAudioPlayer2, C0000R.string.error_playlist_exists, 0).show();
        } else {
            this.f426a.c(str);
            popAudioPlayer = this.f427b.f425a.p;
            popAudioPlayer.a((CharSequence) str);
        }
    }
}
