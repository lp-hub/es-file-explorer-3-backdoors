package com.estrongs.android.widget.esswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.CompoundButton;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.s;

/* loaded from: classes.dex */
public class Switch extends CompoundButton {
    private static final int[] B = {C0000R.attr.state_checked};
    private final Rect A;

    /* renamed from: a, reason: collision with root package name */
    private Drawable f2914a;

    /* renamed from: b, reason: collision with root package name */
    private Drawable f2915b;
    private int c;
    private int d;
    private int e;
    private CharSequence f;
    private CharSequence g;
    private int h;
    private int i;
    private float j;
    private float k;
    private VelocityTracker l;
    private int m;
    private float n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private TextPaint v;
    private ColorStateList w;
    private Layout x;
    private Layout y;
    private c z;

    public Switch(Context context) {
        this(context, null);
    }

    public Switch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0000R.attr.switchStyle);
    }

    public Switch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = VelocityTracker.obtain();
        this.A = new Rect();
        this.v = new TextPaint(1);
        Resources resources = getResources();
        this.v.density = resources.getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.d, i, 0);
        this.f2914a = obtainStyledAttributes.getDrawable(0);
        this.f2915b = obtainStyledAttributes.getDrawable(1);
        this.f = obtainStyledAttributes.getText(2);
        this.g = obtainStyledAttributes.getText(3);
        this.c = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.d = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        int resourceId = obtainStyledAttributes.getResourceId(5, 0);
        if (resourceId != 0) {
            a(context, resourceId);
        }
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.i = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private void a(int i, int i2) {
        Typeface typeface = null;
        switch (i) {
            case 1:
                typeface = Typeface.SANS_SERIF;
                break;
            case 2:
                typeface = Typeface.SERIF;
                break;
            case 3:
                typeface = Typeface.MONOSPACE;
                break;
        }
        a(typeface, i2);
    }

    private void a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    private void a(boolean z) {
        setChecked(z);
    }

    private boolean a() {
        return this.n >= ((float) (b() / 2));
    }

    private boolean a(float f, float f2) {
        this.f2914a.getPadding(this.A);
        int i = this.s - this.i;
        int i2 = (this.r + ((int) (this.n + 0.5f))) - this.i;
        return f > ((float) i2) && f < ((float) ((((this.q + i2) + this.A.left) + this.A.right) + this.i)) && f2 > ((float) i) && f2 < ((float) (this.u + this.i));
    }

    private int b() {
        if (this.f2915b == null) {
            return 0;
        }
        this.f2915b.getPadding(this.A);
        return ((this.o - this.q) - this.A.left) - this.A.right;
    }

    private void b(MotionEvent motionEvent) {
        boolean z = true;
        this.h = 0;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        a(motionEvent);
        if (!z2) {
            a(isChecked());
            return;
        }
        this.l.computeCurrentVelocity(LoginCallBack.REQUEST_LOGINPROTECT);
        float xVelocity = this.l.getXVelocity();
        if (Math.abs(xVelocity) <= this.m) {
            z = a();
        } else if (xVelocity <= 0.0f) {
            z = false;
        }
        a(z);
    }

    private Layout c(CharSequence charSequence) {
        return new StaticLayout(this.z != null ? this.z.a(charSequence, this) : charSequence, this.v, (int) Math.ceil(Layout.getDesiredWidth(r1, this.v)), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    public void a(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, s.f);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(3);
        if (colorStateList != null) {
            this.w = colorStateList;
        } else {
            this.w = getTextColors();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        if (dimensionPixelSize != 0 && dimensionPixelSize != this.v.getTextSize()) {
            this.v.setTextSize(dimensionPixelSize);
            requestLayout();
        }
        a(obtainStyledAttributes.getInt(1, -1), obtainStyledAttributes.getInt(2, -1));
        if (obtainStyledAttributes.getBoolean(7, false)) {
            this.z = new a(getContext());
            this.z.a(true);
        } else {
            this.z = null;
        }
        obtainStyledAttributes.recycle();
    }

    public void a(Typeface typeface) {
        if (this.v.getTypeface() != typeface) {
            this.v.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void a(Typeface typeface, int i) {
        if (i <= 0) {
            this.v.setFakeBoldText(false);
            this.v.setTextSkewX(0.0f);
            a(typeface);
        } else {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
            a(defaultFromStyle);
            int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
            this.v.setFakeBoldText((style & 1) != 0);
            this.v.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public void a(CharSequence charSequence) {
        this.f = charSequence;
        requestLayout();
    }

    public void b(CharSequence charSequence) {
        this.g = charSequence;
        requestLayout();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        if (this.f2914a != null) {
            this.f2914a.setState(drawableState);
        }
        if (this.f2915b != null) {
            this.f2915b.setState(drawableState);
        }
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.o;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.e : compoundPaddingRight;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, B);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = this.r;
        int i2 = this.s;
        int i3 = this.t;
        int i4 = this.u;
        this.f2915b.setBounds(i, i2, i3, i4);
        this.f2915b.draw(canvas);
        canvas.save();
        this.f2915b.getPadding(this.A);
        int i5 = i + this.A.left;
        int i6 = this.A.top + i2;
        int i7 = i3 - this.A.right;
        int i8 = i4 - this.A.bottom;
        canvas.clipRect(i5, i2, i7, i4);
        this.f2914a.getPadding(this.A);
        int i9 = (int) (this.n + 0.5f);
        this.f2914a.setBounds((i5 - this.A.left) + i9, i2, this.A.right + i5 + i9 + this.q, i4);
        this.f2914a.draw(canvas);
        if (this.w != null) {
            this.v.setColor(this.w.getColorForState(getDrawableState(), this.w.getDefaultColor()));
        }
        this.v.drawableState = getDrawableState();
        Layout layout = a() ? this.x : this.y;
        canvas.translate(((r6 + r2) / 2) - (layout.getWidth() / 2), ((i6 + i8) / 2) - (layout.getHeight() / 2));
        layout.draw(canvas);
        canvas.restore();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int height;
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        this.n = isChecked() ? b() : 0.0f;
        int width = getWidth() - getPaddingRight();
        int i6 = width - this.o;
        switch (getGravity() & 112) {
            case 16:
                i5 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (this.p / 2);
                height = this.p + i5;
                break;
            case 80:
                height = getHeight() - getPaddingBottom();
                i5 = height - this.p;
                break;
            default:
                i5 = getPaddingTop();
                height = this.p + i5;
                break;
        }
        this.r = i6;
        this.s = i5;
        this.u = height;
        this.t = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.x == null) {
            this.x = c(this.f);
        }
        if (this.y == null) {
            this.y = c(this.g);
        }
        this.f2915b.getPadding(this.A);
        int max = Math.max(this.x.getWidth(), this.y.getWidth());
        int max2 = Math.max(this.d, (max * 2) + (this.c * 4) + this.A.left + this.A.right);
        int intrinsicHeight = this.f2915b.getIntrinsicHeight();
        this.q = max + (this.c * 2);
        switch (mode) {
            case Integer.MIN_VALUE:
                Math.min(size, max2);
                break;
        }
        switch (mode2) {
            case Integer.MIN_VALUE:
                Math.min(size2, intrinsicHeight);
                break;
        }
        this.o = max2;
        this.p = intrinsicHeight;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < intrinsicHeight) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0032. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:3:0x0010 A[FALL_THROUGH] */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.l.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (isEnabled() && a(x, y)) {
                    this.h = 1;
                    this.j = x;
                    this.k = y;
                }
                return super.onTouchEvent(motionEvent);
            case 1:
            case 3:
                if (this.h == 2) {
                    b(motionEvent);
                    return true;
                }
                this.h = 0;
                this.l.clear();
                return super.onTouchEvent(motionEvent);
            case 2:
                switch (this.h) {
                    case 1:
                        float x2 = motionEvent.getX();
                        float y2 = motionEvent.getY();
                        if (Math.abs(x2 - this.j) > this.i || Math.abs(y2 - this.k) > this.i) {
                            this.h = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            this.j = x2;
                            this.k = y2;
                            return true;
                        }
                        break;
                    case 0:
                    default:
                        return super.onTouchEvent(motionEvent);
                    case 2:
                        float x3 = motionEvent.getX();
                        float max = Math.max(0.0f, Math.min((x3 - this.j) + this.n, b()));
                        if (max == this.n) {
                            return true;
                        }
                        this.n = max;
                        this.j = x3;
                        invalidate();
                        return true;
                }
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        this.n = z ? b() : 0.0f;
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2914a || drawable == this.f2915b;
    }
}
