package com.estrongs.android.pop.app;

import android.widget.AbsListView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dp implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f691a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dp(PopAudioPlayer popAudioPlayer) {
        this.f691a = popAudioPlayer;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.f691a.c = i;
        this.f691a.d = i + i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
