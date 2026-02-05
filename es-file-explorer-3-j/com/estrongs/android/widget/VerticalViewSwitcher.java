package com.estrongs.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.Scroller;
import com.baidu.sapi2.callback.LoginCallBack;

/* loaded from: classes.dex */
public class VerticalViewSwitcher extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    protected Scroller f2880a;

    /* renamed from: b, reason: collision with root package name */
    public int f2881b;
    protected int c;
    protected int d;
    protected boolean e;
    private VelocityTracker f;
    private int g;
    private int h;
    private float i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private bo r;

    public VerticalViewSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = -1;
        this.h = 0;
        this.c = 0;
        this.d = -2;
        this.j = true;
        this.k = 0;
        this.l = 0;
        this.m = -1;
        this.n = true;
        this.e = true;
        this.o = false;
        this.p = false;
        this.q = true;
        this.r = null;
        a();
    }

    private void a() {
        this.f2880a = new Scroller(getContext());
        this.f2881b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private void b() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        childAt.layout(childAt.getLeft(), childAt.getHeight() + c(this.l - 1), childAt.getRight(), (childAt.getHeight() * 2) + c(this.l - 1));
        this.p = true;
    }

    private int c(int i) {
        if (i < 0) {
            return 0;
        }
        if (i >= this.l) {
            return (i + 1) * this.k;
        }
        return (this.e ? this.k : 0) + (this.k * i);
    }

    private void c() {
        View childAt = getChildAt(0);
        childAt.layout(childAt.getLeft(), this.k, childAt.getRight(), childAt.getHeight() + this.k);
        this.p = false;
    }

    private void d() {
        View childAt = getChildAt(this.l - 1);
        if (childAt == null) {
            return;
        }
        childAt.layout(childAt.getLeft(), 0, childAt.getRight(), childAt.getHeight());
        this.o = true;
    }

    private void e() {
        View childAt = getChildAt(this.l - 1);
        if (childAt == null) {
            return;
        }
        childAt.layout(childAt.getLeft(), c(this.l - 1), childAt.getRight(), childAt.getHeight() + c(this.l - 1));
        this.o = false;
    }

    private void f() {
        int height = getHeight();
        int scrollY = (getScrollY() + (height / 2)) / height;
        if (this.e) {
            scrollY--;
        }
        a(scrollY);
    }

    private void g() {
        this.l = getChildCount();
        if (this.l < 2) {
            this.e = false;
        } else if (this.n) {
            this.e = true;
        }
    }

    public void a(int i) {
        if (this.f2880a.isFinished()) {
            this.d = i;
            int c = c(i) - getScrollY();
            this.f2880a.startScroll(0, getScrollY(), 0, c, Math.abs(c) * 2);
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        this.q = true;
        view.setVisibility(0);
        super.addView(view);
        g();
        requestLayout();
    }

    public void b(int i) {
        if (i == -1) {
            return;
        }
        this.c = i;
        scrollTo(0, c(this.c));
        invalidate();
    }

    @Override // android.view.View
    public void computeScroll() {
        boolean z;
        int i = 0;
        if (this.f2880a.computeScrollOffset()) {
            scrollTo(this.f2880a.getCurrX(), this.f2880a.getCurrY());
            postInvalidate();
            return;
        }
        if (this.d != -2) {
            this.c = this.d;
            if (this.c < 0) {
                i = this.l - 1;
                z = true;
            } else if (this.c >= this.l) {
                z = true;
            } else {
                z = false;
                i = -1;
            }
            if (this.p) {
                c();
            }
            if (this.o) {
                e();
            }
            if (z) {
                b(i);
            }
            if (this.r != null) {
                this.r.a(this.c);
            }
            this.d = -2;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.f == null) {
            this.f = VelocityTracker.obtain();
        }
        this.f.addMovement(motionEvent);
        if (action == 2 && this.h != 0) {
            return true;
        }
        switch (action & 255) {
            case 0:
                this.i = motionEvent.getY();
                this.g = motionEvent.getPointerId(0);
                if (!this.f2880a.isFinished()) {
                    this.f2880a.abortAnimation();
                }
                this.h = 0;
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.g);
                if (findPointerIndex != -1) {
                    float y = motionEvent.getY(findPointerIndex);
                    if (((int) Math.abs(y - this.i)) > this.f2881b) {
                        this.h = 1;
                        this.i = y;
                        break;
                    }
                } else {
                    return false;
                }
                break;
        }
        return this.h != 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.p || this.o) {
            return;
        }
        int i5 = this.e ? this.k : 0;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt != null) {
                childAt.setVisibility(0);
                int measuredHeight = childAt.getMeasuredHeight();
                childAt.layout(0, i5, childAt.getMeasuredWidth(), i5 + measuredHeight);
                i5 += measuredHeight;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.k;
        super.onMeasure(i, i2);
        this.k = View.MeasureSpec.getSize(i2);
        int childCount = getChildCount();
        if (childCount < 2 || (!this.q && this.l < 2)) {
            this.e = false;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            try {
                getChildAt(i4).measure(i, i2);
            } catch (Exception e) {
            }
        }
        if (this.q) {
            this.q = false;
            g();
        }
        if (this.j || i3 != this.k) {
            scrollTo(0, c(this.c));
            this.j = false;
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.r != null) {
            this.r.a(this.c, (i2 - c(this.c)) / getWidth());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0172, code lost:
    
        a(r7.c + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x018a, code lost:
    
        f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0108, code lost:
    
        if (r0 < r7.l) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001c, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0170, code lost:
    
        if (getChildAt(r7.c).getTop() >= getScrollY()) goto L105;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        if (this.f == null) {
            this.f = VelocityTracker.obtain();
        }
        this.f.addMovement(motionEvent);
        int action = motionEvent.getAction();
        float y = motionEvent.getY();
        switch (action) {
            case 0:
                this.m = this.c;
                break;
            case 1:
                if (this.h == 1) {
                    VelocityTracker velocityTracker = this.f;
                    velocityTracker.computeCurrentVelocity(LoginCallBack.REQUEST_LOGINPROTECT);
                    int yVelocity = (int) velocityTracker.getYVelocity();
                    if (yVelocity <= 300 || (!this.e ? this.c > 0 : this.c >= 0)) {
                        if (yVelocity < -300) {
                            if (!this.e) {
                                break;
                            } else {
                                break;
                            }
                        }
                        f();
                    } else if (getChildAt(this.c).getTop() > getScrollY()) {
                        a(this.c - 1);
                    } else {
                        f();
                    }
                    if (this.f != null) {
                        this.f.recycle();
                        this.f = null;
                    }
                }
                this.h = 0;
                break;
            case 2:
                if (((int) Math.abs(y - this.i)) > this.f2881b) {
                    this.h = 1;
                }
                if (this.h == 1) {
                    int i3 = (int) (this.i - y);
                    this.i = y;
                    int scrollY = getScrollY();
                    if (i3 < 0) {
                        if (scrollY > 0) {
                            if (this.e) {
                                int i4 = scrollY + i3;
                                if (i4 < c(0)) {
                                    if (!this.o) {
                                        d();
                                    }
                                } else if (i4 < c(1) && this.p) {
                                    c();
                                }
                            }
                            scrollBy(0, Math.max(-scrollY, i3));
                        }
                    } else if (i3 > 0) {
                        if (this.e) {
                            int i5 = scrollY + i3;
                            if (i5 > c(this.l - 1)) {
                                if (!this.p) {
                                    b();
                                }
                            } else if (i5 > c(this.l - 1) - this.k && this.o) {
                                e();
                            }
                        }
                        try {
                            i = this.p ? getChildAt(0).getBottom() : this.o ? c(this.l - 1) + this.k : getChildAt(this.l - 1).getBottom();
                        } catch (Exception e) {
                            i = 0;
                        }
                        int height = (i - scrollY) - getHeight();
                        if (height > 0) {
                            scrollBy(0, Math.min(height, i3));
                        }
                    }
                    if (this.r != null) {
                        int height2 = getHeight();
                        int scrollY2 = (getScrollY() + (height2 / 2)) / height2;
                        if (this.e) {
                            scrollY2--;
                            if (scrollY2 >= 0) {
                                break;
                            } else {
                                i2 = this.l - 1;
                            }
                            if (this.m != i2 && i2 < this.l && i2 >= 0) {
                                this.m = i2;
                                break;
                            }
                        }
                        i2 = scrollY2;
                        if (this.m != i2) {
                            this.m = i2;
                        }
                    }
                }
                break;
            case 3:
                this.h = 0;
                break;
        }
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        this.q = true;
        super.removeViewAt(i);
        g();
        requestLayout();
    }
}
