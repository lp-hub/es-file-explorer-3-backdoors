package android.support.v4.app;

import android.view.animation.Animation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Fragment f26a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f27b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(k kVar, Fragment fragment) {
        this.f27b = kVar;
        this.f26a = fragment;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (this.f26a.mAnimatingAway != null) {
            this.f26a.mAnimatingAway = null;
            this.f27b.a(this.f26a, this.f26a.mStateAfterAnimating, 0, 0, false);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
