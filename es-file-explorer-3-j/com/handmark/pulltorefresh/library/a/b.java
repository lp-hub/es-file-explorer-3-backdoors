package com.handmark.pulltorefresh.library.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import com.estrongs.android.pop.C0000R;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public class b extends e {
    private final Animation f;
    private final Animation g;

    public b(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context, mode, orientation, typedArray);
        int i = mode == PullToRefreshBase.Mode.PULL_FROM_START ? -180 : 180;
        this.f = new RotateAnimation(0.0f, i, 1, 0.5f, 1, 0.5f);
        this.f.setInterpolator(f3275a);
        this.f.setDuration(150L);
        this.f.setFillAfter(true);
        this.g = new RotateAnimation(i, 0.0f, 1, 0.5f, 1, 0.5f);
        this.g.setInterpolator(f3275a);
        this.g.setDuration(150L);
        this.g.setFillAfter(true);
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void a() {
        if (this.f == this.f3276b.getAnimation()) {
            this.f3276b.startAnimation(this.g);
        }
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void a(float f) {
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void a(Drawable drawable) {
        if (drawable != null) {
            drawable.getIntrinsicHeight();
            drawable.getIntrinsicWidth();
        }
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void b() {
        this.f3276b.clearAnimation();
        this.f3276b.setVisibility(4);
        this.c.setVisibility(0);
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void c() {
        this.f3276b.startAnimation(this.f);
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void d() {
        this.f3276b.clearAnimation();
        this.c.setVisibility(8);
        this.f3276b.setVisibility(0);
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected int e() {
        return C0000R.drawable.default_ptr_flip;
    }
}
