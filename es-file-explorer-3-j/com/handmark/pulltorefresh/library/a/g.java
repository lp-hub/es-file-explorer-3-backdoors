package com.handmark.pulltorefresh.library.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import com.estrongs.android.pop.C0000R;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

/* loaded from: classes.dex */
public class g extends e {
    private final Animation f;
    private final Matrix g;
    private float h;
    private float i;
    private final boolean j;

    public g(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context, mode, orientation, typedArray);
        this.j = typedArray.getBoolean(15, true);
        this.g = new Matrix();
        this.f = new RotateAnimation(0.0f, 720.0f, 1, 0.5f, 1, 0.5f);
        this.f.setInterpolator(f3275a);
        this.f.setDuration(1200L);
        this.f.setRepeatCount(-1);
        this.f.setRepeatMode(1);
    }

    private void k() {
        if (this.g != null) {
            this.g.reset();
        }
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void a() {
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void a(float f) {
        if (this.j) {
            float f2 = 90.0f * f;
        } else {
            Math.max(0.0f, Math.min(180.0f, (360.0f * f) - 180.0f));
        }
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    public void a(Drawable drawable) {
        if (drawable != null) {
            this.h = Math.round(drawable.getIntrinsicWidth() / 2.0f);
            this.i = Math.round(drawable.getIntrinsicHeight() / 2.0f);
        }
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void b() {
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void c() {
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected void d() {
        k();
    }

    @Override // com.handmark.pulltorefresh.library.a.e
    protected int e() {
        return C0000R.drawable.default_ptr_rotate;
    }
}
