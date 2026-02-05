package com.estrongs.android.pop.app.imageviewer;

import android.view.animation.Animation;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bf implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f968a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(ViewImage21 viewImage21) {
        this.f968a = viewImage21;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f968a.h.setImageResource(C0000R.drawable.toolbar_menu_collapse);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
