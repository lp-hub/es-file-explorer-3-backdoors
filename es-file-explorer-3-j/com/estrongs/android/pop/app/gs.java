package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.widget.VideoView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gs implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f853a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gs(PopVideoPlayer popVideoPlayer) {
        this.f853a = popVideoPlayer;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        VideoView videoView;
        VideoView videoView2;
        com.estrongs.android.ui.e.gc gcVar;
        videoView = this.f853a.k;
        videoView.setVideoURI(this.f853a.getIntent().getData());
        videoView2 = this.f853a.k;
        videoView2.start();
        com.estrongs.android.util.m.a();
        gcVar = this.f853a.z;
        gcVar.d();
        return true;
    }
}
