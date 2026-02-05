package com.handmark.pulltorefresh.library.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public class c extends FrameLayout implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    private Animation f3272a;

    /* renamed from: b, reason: collision with root package name */
    private Animation f3273b;
    private ImageView c;
    private final Animation d;
    private final Animation e;

    public c(Context context, PullToRefreshBase.Mode mode) {
        super(context);
        int i;
        int i2;
        this.c = new ImageView(context);
        this.c.setImageDrawable(getResources().getDrawable(C0000R.drawable.indicator_arrow));
        int dimensionPixelSize = getResources().getDimensionPixelSize(C0000R.dimen.indicator_internal_padding);
        this.c.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        addView(this.c);
        switch (mode) {
            case PULL_FROM_END:
                i = C0000R.anim.slide_in_from_bottom;
                i2 = C0000R.anim.slide_out_to_bottom;
                setBackgroundResource(C0000R.drawable.indicator_bg_bottom);
                this.c.setScaleType(ImageView.ScaleType.MATRIX);
                Matrix matrix = new Matrix();
                matrix.setRotate(180.0f, r6.getIntrinsicWidth() / 2.0f, r6.getIntrinsicHeight() / 2.0f);
                this.c.setImageMatrix(matrix);
                break;
            default:
                i = C0000R.anim.slide_in_from_top;
                i2 = C0000R.anim.slide_out_to_top;
                setBackgroundResource(C0000R.drawable.indicator_bg_top);
                break;
        }
        this.f3272a = AnimationUtils.loadAnimation(context, i);
        this.f3272a.setAnimationListener(this);
        this.f3273b = AnimationUtils.loadAnimation(context, i2);
        this.f3273b.setAnimationListener(this);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        this.d = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.d.setInterpolator(linearInterpolator);
        this.d.setDuration(150L);
        this.d.setFillAfter(true);
        this.e = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.e.setInterpolator(linearInterpolator);
        this.e.setDuration(150L);
        this.e.setFillAfter(true);
    }

    public final boolean a() {
        Animation animation = getAnimation();
        return animation != null ? this.f3272a == animation : getVisibility() == 0;
    }

    public void b() {
        startAnimation(this.f3273b);
    }

    public void c() {
        this.c.clearAnimation();
        startAnimation(this.f3272a);
    }

    public void d() {
        this.c.startAnimation(this.d);
    }

    public void e() {
        this.c.startAnimation(this.e);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (animation == this.f3273b) {
            this.c.clearAnimation();
            setVisibility(8);
        } else if (animation == this.f3272a) {
            setVisibility(0);
        }
        clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        setVisibility(0);
    }
}
