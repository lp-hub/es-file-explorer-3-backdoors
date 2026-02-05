package com.estrongs.android.pop.app;

import android.widget.MediaController;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gr implements com.estrongs.android.ui.e.gg {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f852a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gr(PopVideoPlayer popVideoPlayer) {
        this.f852a = popVideoPlayer;
    }

    @Override // com.estrongs.android.ui.e.gg
    public void a() {
        MediaController mediaController;
        this.f852a.c.setImageResource(C0000R.drawable.toolbar_menu_collapse);
        mediaController = this.f852a.l;
        mediaController.show();
    }
}
