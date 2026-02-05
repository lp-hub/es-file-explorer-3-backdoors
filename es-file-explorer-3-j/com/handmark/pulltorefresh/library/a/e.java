package com.handmark.pulltorefresh.library.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public abstract class e extends FrameLayout implements com.handmark.pulltorefresh.library.a {

    /* renamed from: a, reason: collision with root package name */
    static final Interpolator f3275a = new LinearInterpolator();

    /* renamed from: b, reason: collision with root package name */
    protected final ImageView f3276b;
    protected final ProgressBar c;
    protected final PullToRefreshBase.Mode d;
    protected final PullToRefreshBase.Orientation e;
    private LinearLayout f;
    private boolean g;
    private final TextView h;
    private final TextView i;
    private CharSequence j;
    private CharSequence k;
    private CharSequence l;

    public e(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation orientation, TypedArray typedArray) {
        super(context);
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable;
        this.d = mode;
        this.e = orientation;
        switch (orientation) {
            case HORIZONTAL:
                LayoutInflater.from(context).inflate(C0000R.layout.pull_to_refresh_header_horizontal, this);
                break;
            default:
                LayoutInflater.from(context).inflate(C0000R.layout.pull_to_refresh_header_vertical, this);
                break;
        }
        this.f = (LinearLayout) findViewById(C0000R.id.fl_inner);
        this.h = (TextView) this.f.findViewById(C0000R.id.pull_to_refresh_text);
        this.c = (ProgressBar) this.f.findViewById(C0000R.id.pull_to_refresh_progress);
        this.i = (TextView) this.f.findViewById(C0000R.id.pull_to_refresh_sub_text);
        this.f3276b = (ImageView) this.f.findViewById(C0000R.id.pull_to_refresh_image);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f.getLayoutParams();
        switch (mode) {
            case PULL_FROM_END:
                layoutParams.gravity = orientation == PullToRefreshBase.Orientation.VERTICAL ? 48 : 3;
                this.j = context.getString(C0000R.string.pull_to_refresh_from_bottom_pull_label);
                this.k = context.getString(C0000R.string.pull_to_refresh_from_bottom_refreshing_label);
                this.l = context.getString(C0000R.string.pull_to_refresh_from_bottom_release_label);
                break;
            default:
                layoutParams.gravity = orientation == PullToRefreshBase.Orientation.VERTICAL ? 80 : 5;
                this.j = context.getString(C0000R.string.pull_to_refresh_pull_label);
                this.k = context.getString(C0000R.string.pull_to_refresh_refreshing_label);
                this.l = context.getString(C0000R.string.pull_to_refresh_release_label);
                break;
        }
        if (typedArray.hasValue(1) && (drawable = typedArray.getDrawable(1)) != null) {
            i.a(this, drawable);
        }
        if (typedArray.hasValue(10)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(10, typedValue);
            d(typedValue.data);
        }
        if (typedArray.hasValue(11)) {
            TypedValue typedValue2 = new TypedValue();
            typedArray.getValue(11, typedValue2);
            c(typedValue2.data);
        }
        if (typedArray.hasValue(2) && (colorStateList2 = typedArray.getColorStateList(2)) != null) {
            b(colorStateList2);
        }
        if (typedArray.hasValue(3) && (colorStateList = typedArray.getColorStateList(3)) != null) {
            a(colorStateList);
        }
        Drawable drawable2 = typedArray.hasValue(6) ? typedArray.getDrawable(6) : null;
        switch (mode) {
            case PULL_FROM_END:
                if (!typedArray.hasValue(8)) {
                    if (typedArray.hasValue(18)) {
                        h.a("ptrDrawableBottom", "ptrDrawableEnd");
                        drawable2 = typedArray.getDrawable(18);
                        break;
                    }
                } else {
                    drawable2 = typedArray.getDrawable(8);
                    break;
                }
                break;
            default:
                if (!typedArray.hasValue(7)) {
                    if (typedArray.hasValue(17)) {
                        h.a("ptrDrawableTop", "ptrDrawableStart");
                        drawable2 = typedArray.getDrawable(17);
                        break;
                    }
                } else {
                    drawable2 = typedArray.getDrawable(7);
                    break;
                }
                break;
        }
        b(drawable2 == null ? context.getResources().getDrawable(e()) : drawable2);
        j();
    }

    private void a(ColorStateList colorStateList) {
        if (this.i != null) {
            this.i.setTextColor(colorStateList);
        }
    }

    private void b(ColorStateList colorStateList) {
        if (this.h != null) {
            this.h.setTextColor(colorStateList);
        }
        if (this.i != null) {
            this.i.setTextColor(colorStateList);
        }
    }

    private void c(int i) {
        if (this.i != null) {
            this.i.setTextAppearance(getContext(), i);
        }
    }

    private void d(int i) {
        if (this.h != null) {
            this.h.setTextAppearance(getContext(), i);
        }
        if (this.i != null) {
            this.i.setTextAppearance(getContext(), i);
        }
    }

    protected abstract void a();

    protected abstract void a(float f);

    public final void a(int i) {
        getLayoutParams().height = i;
        requestLayout();
    }

    protected abstract void a(Drawable drawable);

    @Override // com.handmark.pulltorefresh.library.a
    public void a(CharSequence charSequence) {
        this.j = charSequence;
    }

    protected abstract void b();

    public final void b(float f) {
        if (this.g) {
            return;
        }
        a(f);
    }

    public final void b(int i) {
        getLayoutParams().width = i;
        requestLayout();
    }

    public final void b(Drawable drawable) {
        this.g = drawable instanceof AnimationDrawable;
        a(drawable);
    }

    @Override // com.handmark.pulltorefresh.library.a
    public void b(CharSequence charSequence) {
        this.k = charSequence;
    }

    protected abstract void c();

    @Override // com.handmark.pulltorefresh.library.a
    public void c(CharSequence charSequence) {
        this.l = charSequence;
    }

    protected abstract void d();

    protected abstract int e();

    public final int f() {
        switch (this.e) {
            case HORIZONTAL:
                return this.f.getWidth();
            default:
                return this.f.getHeight();
        }
    }

    public final void g() {
        if (this.h != null) {
            this.h.setText(this.j);
        }
        a();
    }

    public final void h() {
        if (this.h != null) {
            this.h.setText(this.k);
        }
        if (!this.g) {
            b();
        }
        if (this.i != null) {
            this.i.setVisibility(8);
        }
    }

    public final void i() {
        if (this.h != null) {
            this.h.setText(this.l);
        }
        c();
    }

    public final void j() {
        if (this.h != null) {
            this.h.setText(this.j);
        }
        this.f3276b.setVisibility(0);
        if (!this.g) {
            d();
        }
        if (this.i != null) {
            if (TextUtils.isEmpty(this.i.getText())) {
                this.i.setVisibility(8);
            } else {
                this.i.setVisibility(0);
            }
        }
    }
}
