package com.estrongs.android.view;

import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.ScaleAnimation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2769a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ar f2770b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(ar arVar, int i) {
        this.f2770b = arVar;
        this.f2769a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        int childCount = this.f2770b.g.getChildCount();
        int firstVisiblePosition = this.f2770b.g.getFirstVisiblePosition();
        for (int i = 0; i < childCount; i++) {
            int i2 = firstVisiblePosition + i;
            View childAt = this.f2770b.g.getChildAt(i);
            if (childAt != null && i2 == this.f2769a) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(2.0f, 1.0f, 2.0f, 1.0f, 1, 0.5f, 1, 0.5f);
                scaleAnimation.setDuration(500L);
                scaleAnimation.setInterpolator(new AccelerateInterpolator());
                childAt.startAnimation(scaleAnimation);
                return;
            }
        }
    }
}
