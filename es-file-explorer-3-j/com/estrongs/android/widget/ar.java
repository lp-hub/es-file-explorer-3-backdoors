package com.estrongs.android.widget;

import android.view.animation.Animation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ap f2897a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(ap apVar) {
        this.f2897a = apVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f2897a.H = false;
        this.f2897a.g();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
        this.f2897a.H = true;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f2897a.H = true;
    }
}
