package com.estrongs.android.widget;

import android.view.animation.Animation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ap f2896a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(ap apVar) {
        this.f2896a = apVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f2896a.H = false;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
        this.f2896a.H = true;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f2896a.H = true;
    }
}
