package com.estrongs.android.pop.app.a;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.by;

/* loaded from: classes.dex */
class l implements by {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f419a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f420b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar, af afVar) {
        this.f420b = kVar;
        this.f419a = afVar;
    }

    @Override // com.estrongs.android.ui.b.by
    public void a(String str) {
        PopAudioPlayer popAudioPlayer;
        ag a2 = aj.a().a(str);
        if (a2 != null) {
            this.f420b.f418b.f416a.a(this.f419a, a2);
        } else {
            popAudioPlayer = this.f420b.f418b.f416a.p;
            com.estrongs.android.ui.view.z.a(popAudioPlayer, C0000R.string.error_playlist_exists, 0).show();
        }
    }
}
