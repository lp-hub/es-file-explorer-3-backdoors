package com.estrongs.android.ui.view;

import android.view.View;
import android.view.animation.ScaleAnimation;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class av implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopMultiWindowGrid f2619a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(PopMultiWindowGrid popMultiWindowGrid) {
        this.f2619a = popMultiWindowGrid;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2619a.setVisibility(4);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(300L);
        this.f2619a.setAnimation(scaleAnimation);
        scaleAnimation.setAnimationListener(new aw(this));
        scaleAnimation.start();
    }
}
