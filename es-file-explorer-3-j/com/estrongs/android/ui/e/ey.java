package com.estrongs.android.ui.e;

import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* loaded from: classes.dex */
class ey implements com.estrongs.android.pop.utils.br {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2117a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ex f2118b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ey(ex exVar, List list) {
        this.f2118b = exVar;
        this.f2117a = list;
    }

    @Override // com.estrongs.android.pop.utils.br
    public void a(List<com.estrongs.fs.g> list) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2118b.f2116a.k;
        popAudioPlayer.b(this.f2117a);
    }
}
