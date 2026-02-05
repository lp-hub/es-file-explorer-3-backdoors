package com.estrongs.android.ui.view;

import android.view.animation.Animation;

/* loaded from: classes.dex */
class aw implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ av f2620a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(av avVar) {
        this.f2620a = avVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        int i;
        PopMultiWindowGrid popMultiWindowGrid = this.f2620a.f2619a;
        i = this.f2620a.f2619a.f;
        popMultiWindowGrid.a(2, i);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
