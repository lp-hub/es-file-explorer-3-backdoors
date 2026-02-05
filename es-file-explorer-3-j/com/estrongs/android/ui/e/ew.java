package com.estrongs.android.ui.e;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* loaded from: classes.dex */
class ew implements com.estrongs.android.ui.b.by {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2114a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ev f2115b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ew(ev evVar, List list) {
        this.f2115b = evVar;
        this.f2114a = list;
    }

    @Override // com.estrongs.android.ui.b.by
    public void a(String str) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        com.estrongs.android.pop.app.a.ag a2 = com.estrongs.android.pop.app.a.aj.a().a(str);
        if (a2 == null) {
            popAudioPlayer2 = this.f2115b.f2113b.f2110a.k;
            com.estrongs.android.ui.view.z.a(popAudioPlayer2, C0000R.string.error_playlist_exists, 0).show();
        } else {
            popAudioPlayer = this.f2115b.f2113b.f2110a.k;
            popAudioPlayer.a(this.f2114a, a2);
        }
    }
}
