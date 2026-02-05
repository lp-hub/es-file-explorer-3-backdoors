package com.estrongs.android.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.Scroller;
import android.widget.ViewAnimator;
import com.baidu.sapi2.callback.LoginCallBack;

/* loaded from: classes.dex */
public class RealViewSwitcher extends ViewAnimator {

    /* renamed from: a, reason: collision with root package name */
    private VelocityTracker f2870a;

    /* renamed from: b, reason: collision with root package name */
    private int f2871b;
    protected Scroller c;
    public int d;
    protected int e;
    protected int f;
    protected boolean g;
    protected av h;
    private int i;
    private float j;
    private float k;
    private int l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;

    public RealViewSwitcher(Context context) {
        super(context);
        this.f2871b = -1;
        this.i = 0;
        this.e = 0;
        this.f = -2;
        this.l = -2;
        this.m = true;
        this.n = 0;
        this.o = 0;
        this.p = -1;
        this.q = true;
        this.r = true;
        this.s = true;
        this.g = true;
        this.t = false;
        this.u = false;
        this.v = true;
        this.w = false;
        this.x = false;
        this.h = null;
        a();
    }

    public RealViewSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2871b = -1;
        this.i = 0;
        this.e = 0;
        this.f = -2;
        this.l = -2;
        this.m = true;
        this.n = 0;
        this.o = 0;
        this.p = -1;
        this.q = true;
        this.r = true;
        this.s = true;
        this.g = true;
        this.t = false;
        this.u = false;
        this.v = true;
        this.w = false;
        this.x = false;
        this.h = null;
        a();
    }

    @SuppressLint({"NewApi"})
    private void a() {
        this.c = new Scroller(getContext());
        if (com.estrongs.android.pop.p.a() >= 11) {
            this.c.setFriction(0.6f);
        }
        this.d = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private void b() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        childAt.layout(childAt.getWidth() + c(this.o - 1), childAt.getTop(), (childAt.getWidth() * 2) + c(this.o - 1), childAt.getBottom());
        this.u = true;
    }

    private int c(int i) {
        if (i < 0) {
            return 0;
        }
        if (i >= this.o) {
            return (i + 1) * this.n;
        }
        return (this.g ? this.n : 0) + (this.n * i);
    }

    private void c() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        childAt.layout(this.n, childAt.getTop(), childAt.getWidth() + this.n, childAt.getBottom());
        this.u = false;
    }

    private int d(int i) {
        return i;
    }

    private void d() {
        View childAt = getChildAt(this.o - 1);
        if (childAt == null) {
            return;
        }
        childAt.layout(0, childAt.getTop(), childAt.getWidth(), childAt.getBottom());
        this.t = true;
    }

    private void e() {
        View childAt = getChildAt(this.o - 1);
        if (childAt == null) {
            return;
        }
        childAt.layout(c(this.o - 1), childAt.getTop(), childAt.getWidth() + c(this.o - 1), childAt.getBottom());
        this.t = false;
    }

    private void f() {
        this.o = getChildCount();
        if (this.o < 2) {
            this.g = false;
        } else if (this.q) {
            this.g = true;
        }
    }

    public void a(int i) {
        a(i, true);
    }

    public void a(int i, boolean z) {
        if (super.getInAnimation() != null || super.getOutAnimation() != null) {
            super.setDisplayedChild(i);
        }
        int d = d(i);
        if (d == -1) {
            return;
        }
        if (z) {
            this.l = d;
        }
        this.e = d;
        scrollTo(c(this.e), 0);
        invalidate();
    }

    public void a(av avVar) {
        this.h = avVar;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        addView(view, -1);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        this.l = -2;
        this.v = true;
        view.setVisibility(0);
        super.addView(view, i);
        f();
        requestLayout();
    }

    public void b(int i) {
        if (this.c.isFinished()) {
            this.f = i;
            int i2 = this.f < 0 ? this.o - 1 : this.f >= this.o ? 0 : i;
            if (this.h != null) {
                this.h.d(i2);
            }
            int c = c(i) - getScrollX();
            this.c.startScroll(getScrollX(), 0, c, 0, (Math.abs(c) * 1200) / this.n);
            invalidate();
        }
    }

    public void b(boolean z) {
        this.w = z;
    }

    public void c(boolean z) {
        this.q = z;
        this.g = z;
    }

    @Override // android.view.View
    public void computeScroll() {
        boolean z = true;
        if (this.c.computeScrollOffset()) {
            scrollTo(this.c.getCurrX(), this.c.getCurrY());
            postInvalidate();
            return;
        }
        if (this.f != -2) {
            int i = -1;
            this.e = this.f;
            if (this.e < 0) {
                i = this.o - 1;
            } else if (this.e >= this.o) {
                i = 0;
            } else {
                z = false;
            }
            if (this.u) {
                c();
            }
            if (this.t) {
                e();
            }
            if (z) {
                a(i, false);
            }
            if (this.h != null) {
                this.h.b(this.e);
                if (this.l != this.e) {
                    this.l = this.e;
                    this.h.c(this.e);
                }
            }
            this.f = -2;
            this.x = false;
        }
    }

    public void d(boolean z) {
        this.s = z;
    }

    public void e(boolean z) {
        this.r = z;
    }

    public void g() {
        int width = getWidth();
        int scrollX = (getScrollX() + (width / 2)) / width;
        if (this.g) {
            scrollX--;
        }
        b(scrollX);
    }

    public int h() {
        return this.e;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getChildCount() == 1) {
            return false;
        }
        int action = motionEvent.getAction();
        if (this.f2870a == null) {
            this.f2870a = VelocityTracker.obtain();
            this.f2870a.clear();
        }
        this.f2870a.addMovement(motionEvent);
        switch (action & 255) {
            case 0:
                if (!this.w || !this.x) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    this.j = x;
                    this.k = y;
                    this.f2871b = motionEvent.getPointerId(0);
                    if (!this.c.isFinished()) {
                        this.c.abortAnimation();
                        this.x = false;
                    }
                    this.i = 0;
                    break;
                } else {
                    return true;
                }
                break;
            case 1:
            case 3:
                if (!this.w || !this.x) {
                    this.i = 0;
                    this.f2871b = -1;
                    if (this.f2870a != null) {
                        this.f2870a.recycle();
                        this.f2870a = null;
                        break;
                    }
                } else {
                    return true;
                }
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.f2871b);
                if (findPointerIndex != -1) {
                    int abs = (int) Math.abs(motionEvent.getX(findPointerIndex) - this.j);
                    if (!(abs > this.d && abs >= ((int) Math.abs(motionEvent.getY(findPointerIndex) - this.k))) || motionEvent.getPointerCount() != 1) {
                        if (getScrollX() % getWidth() != 0) {
                            g();
                            break;
                        }
                    } else {
                        this.i = 1;
                        if (this.h != null) {
                            this.h.a(this.e);
                        }
                        this.x = true;
                        break;
                    }
                } else {
                    return false;
                }
                break;
        }
        return this.i != 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.u || this.t || this.i != 0) {
            return;
        }
        int i5 = this.g ? this.n : 0;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt != null) {
                childAt.setVisibility(0);
                int measuredWidth = childAt.getMeasuredWidth();
                childAt.layout(i5, 0, i5 + measuredWidth, childAt.getMeasuredHeight());
                i5 += measuredWidth;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.n;
        super.onMeasure(i, i2);
        this.n = View.MeasureSpec.getSize(i);
        if (getChildCount() < 2 || (!this.v && this.o < 2)) {
            this.g = false;
        }
        if (this.v) {
            this.v = false;
            f();
        }
        if (this.m || i3 != this.n) {
            scrollTo(c(this.e), 0);
            this.m = false;
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.h != null) {
            int c = c(this.e);
            int width = getWidth();
            if (width == 0) {
                return;
            }
            float f = (i - c) / width;
            if (Float.isNaN(f)) {
                return;
            }
            this.h.a(this.e, f);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0141, code lost:
    
        if (r0 < r7.o) goto L93;
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00ff  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        int width;
        int i2 = 0;
        if (this.f2870a == null) {
            this.f2870a = VelocityTracker.obtain();
        }
        this.f2870a.addMovement(motionEvent);
        int action = motionEvent.getAction();
        float x = motionEvent.getX();
        switch (action) {
            case 0:
                if (!this.w || !this.x) {
                    this.p = this.e;
                    break;
                } else {
                    this.p = this.e;
                    break;
                }
                break;
            case 1:
                if (this.i == 1) {
                    VelocityTracker velocityTracker = this.f2870a;
                    velocityTracker.computeCurrentVelocity(LoginCallBack.REQUEST_LOGINPROTECT);
                    int xVelocity = (int) velocityTracker.getXVelocity();
                    if (xVelocity > 300 && (!this.g ? this.e <= 0 : this.e < 0)) {
                        try {
                            if (getChildAt(this.e).getLeft() > getScrollX()) {
                                b(this.e - 1);
                            } else {
                                g();
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            g();
                            return true;
                        }
                    } else if (xVelocity >= -300 || (!this.g ? this.e < this.o - 1 : this.e < this.o)) {
                        g();
                    } else if (getChildAt(this.e).getLeft() < getScrollX()) {
                        b(this.e + 1);
                    } else {
                        g();
                    }
                    if (this.f2870a != null) {
                        this.f2870a.recycle();
                        this.f2870a = null;
                    }
                }
                this.i = 0;
                break;
            case 2:
                if (this.i != 1) {
                    if (((int) Math.abs(x - this.j)) > this.d) {
                        if (this.h != null) {
                            this.h.a(this.e);
                        }
                        this.x = true;
                        this.i = 1;
                    }
                }
                if (this.i == 1) {
                    int i3 = (int) (this.j - x);
                    this.j = x;
                    int scrollX = getScrollX();
                    int i4 = scrollX + i3;
                    int c = c(this.e);
                    if ((i4 >= c || this.r) && (i4 <= c || this.s)) {
                        if (i3 < 0) {
                            if (scrollX > 0) {
                                if (this.g) {
                                    int i5 = scrollX + i3;
                                    if (i5 < c(0)) {
                                        if (!this.t) {
                                            d();
                                        }
                                    } else if (i5 < c(1) && this.u) {
                                        c();
                                    }
                                }
                                scrollBy(Math.max(-scrollX, i3), 0);
                            }
                        } else if (i3 > 0) {
                            if (this.g) {
                                int i6 = scrollX + i3;
                                if (i6 > c(this.o - 1)) {
                                    if (!this.u) {
                                        b();
                                    }
                                } else if (i6 > c(this.o - 1) - this.n && this.t) {
                                    e();
                                }
                            }
                            try {
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            if (this.o > 0) {
                                i = this.u ? getChildAt(0).getRight() : this.t ? c(this.o - 1) + this.n : getChildAt(this.o - 1).getRight();
                                width = (i - scrollX) - getWidth();
                                if (width > 0) {
                                    scrollBy(Math.min(width, i3), 0);
                                }
                            }
                            i = 0;
                            width = (i - scrollX) - getWidth();
                            if (width > 0) {
                            }
                        }
                        if (this.h != null) {
                            int i7 = this.n;
                            int scrollX2 = (getScrollX() + (i7 / 2)) / i7;
                            if (this.g) {
                                scrollX2--;
                                if (scrollX2 >= 0) {
                                    break;
                                } else {
                                    i2 = this.o - 1;
                                }
                                if (this.p != i2 && i2 < this.o && i2 >= 0) {
                                    this.p = i2;
                                    break;
                                }
                            }
                            i2 = scrollX2;
                            if (this.p != i2) {
                                this.p = i2;
                            }
                        }
                    }
                }
                break;
            case 3:
                if (this.f2870a != null) {
                    this.f2870a.recycle();
                    this.f2870a = null;
                }
                this.i = 0;
                break;
        }
    }

    @Override // android.widget.ViewAnimator, android.view.ViewGroup
    public void removeViewAt(int i) {
        this.l = -2;
        this.v = true;
        super.removeViewAt(i);
        f();
        requestLayout();
    }
}
