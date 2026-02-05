package com.estrongs.android.pop.view;

import android.view.animation.Animation;
import com.estrongs.android.ui.drag.DragLayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1423a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(FileExplorerActivity fileExplorerActivity) {
        this.f1423a = fileExplorerActivity;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        DragLayer dragLayer;
        dragLayer = this.f1423a.ay;
        dragLayer.setVisibility(8);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
