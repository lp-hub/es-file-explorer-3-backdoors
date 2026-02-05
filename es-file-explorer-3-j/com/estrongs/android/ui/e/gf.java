package com.estrongs.android.ui.e;

import android.view.animation.Animation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gf implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gc f2160a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gf(gc gcVar) {
        this.f2160a = gcVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        fi fiVar;
        fi fiVar2;
        this.f2160a.h = true;
        fiVar = this.f2160a.k;
        if (fiVar != null) {
            fiVar2 = this.f2160a.k;
            fiVar2.a(animation);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
