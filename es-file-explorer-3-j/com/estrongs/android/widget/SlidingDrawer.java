package com.estrongs.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.sapi2.callback.LoginCallBack;

/* loaded from: classes.dex */
public class SlidingDrawer extends ViewGroup {
    private boolean A;
    private boolean B;
    private boolean C;
    private final int D;
    private final int E;
    private final int F;
    private final int G;
    private final int H;
    private final int I;

    /* renamed from: a, reason: collision with root package name */
    private final int f2874a;

    /* renamed from: b, reason: collision with root package name */
    private final int f2875b;
    private View c;
    private View d;
    private final Rect e;
    private final Rect f;
    private boolean g;
    private boolean h;
    private VelocityTracker i;
    private boolean j;
    private int k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private int p;
    private bi q;
    private bh r;
    private bj s;
    private final Handler t;
    private float u;
    private float v;
    private float w;
    private long x;
    private long y;
    private int z;

    public SlidingDrawer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new Rect();
        this.f = new Rect();
        this.t = new bk(this, null);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.estrongs.android.pop.s.c, i, 0);
        this.j = obtainStyledAttributes.getInt(2, 1) == 1;
        this.m = (int) obtainStyledAttributes.getDimension(3, 0.0f);
        this.n = (int) obtainStyledAttributes.getDimension(4, 0.0f);
        this.B = obtainStyledAttributes.getBoolean(5, true);
        this.C = obtainStyledAttributes.getBoolean(6, true);
        this.k = obtainStyledAttributes.getInt(7, 0);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId == 0) {
            throw new IllegalArgumentException("The handle attribute is required and must refer to a valid child.");
        }
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        if (resourceId2 == 0) {
            throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
        }
        if (resourceId == resourceId2) {
            throw new IllegalArgumentException("The content and handle attributes must refer to different children.");
        }
        this.f2874a = resourceId;
        this.f2875b = resourceId2;
        float f = getResources().getDisplayMetrics().density;
        this.D = (int) ((6.0f * f) + 0.5f);
        this.E = (int) ((100.0f * f) + 0.5f);
        this.F = (int) ((150.0f * f) + 0.5f);
        this.G = (int) ((200.0f * f) + 0.5f);
        this.H = (int) ((2000.0f * f) + 0.5f);
        this.I = (int) ((f * 1000.0f) + 0.5f);
        obtainStyledAttributes.recycle();
        setAlwaysDrawnWithCacheEnabled(false);
    }

    private void a(int i) {
        a("animateClose", "" + i);
        c(i);
        a(i, (this.k == 2 || this.k == 1) ? this.H : -this.H, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c9, code lost:
    
        if (r9 >= (-r7.G)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x014b, code lost:
    
        if (r9 < r7.G) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x010e, code lost:
    
        if (r9 > (-r7.G)) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(int i, float f, boolean z) {
        a("performFling", "" + i);
        a("velocity", f);
        this.w = i;
        this.v = f;
        if (this.l) {
            if (this.k == 1 || this.k == 3) {
                if (!z && f <= this.G) {
                    if (i <= (this.j ? this.o : this.p) + this.n || f <= (-this.G)) {
                        this.u = -this.H;
                        if (f > 0.0f) {
                            this.v = 0.0f;
                        }
                    }
                }
                this.u = this.H;
                if (f < 0.0f) {
                    this.v = 0.0f;
                }
            } else {
                a("delta", (getWidth() - this.n) - ((this.j ? this.o : this.p) * 2));
                if (!z) {
                    if (f <= this.G) {
                        if (i > (getWidth() - this.n) - ((this.j ? this.o : this.p) * 2)) {
                        }
                    }
                    this.u = this.H;
                    if (f < 0.0f) {
                        this.v = 0.0f;
                    }
                }
                this.u = -this.H;
                if (f > 0.0f) {
                    this.v = 0.0f;
                }
            }
        } else if (this.k == 1 || this.k == 3) {
            if (!z) {
                if (f <= this.G) {
                    if (i > (this.j ? getHeight() : getWidth()) / 2) {
                    }
                }
                this.u = this.H;
                if (f < 0.0f) {
                    this.v = 0.0f;
                }
            }
            this.u = -this.H;
            if (f > 0.0f) {
                this.v = 0.0f;
            }
        } else {
            if (!z) {
                if (f >= (-this.G)) {
                    if (i < (this.j ? getHeight() : getWidth()) / 2) {
                    }
                }
                a("not hard enough!");
                this.u = -this.H;
                if (f > 0.0f) {
                    this.v = 0.0f;
                }
            }
            a("hard enough!");
            this.u = this.H;
            if (f < 0.0f) {
                this.v = 0.0f;
            }
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        this.x = uptimeMillis;
        this.y = uptimeMillis + 16;
        this.A = true;
        this.t.removeMessages(LoginCallBack.REQUEST_LOGINPROTECT);
        this.t.sendMessageAtTime(this.t.obtainMessage(LoginCallBack.REQUEST_LOGINPROTECT), this.y);
        i();
    }

    private void a(String str) {
    }

    private void a(String str, double d) {
    }

    private void a(String str, String str2) {
    }

    private void b(int i) {
        a("animateOpen", "" + i);
        c(i);
        float f = (this.k == 2 || this.k == 1) ? -this.H : this.H;
        a("velocity", f);
        a(i, f, true);
    }

    private void c(int i) {
        a("prepareTracking", "" + i);
        this.g = true;
        this.i = VelocityTracker.obtain();
        if (!(!this.l)) {
            if (this.A) {
                this.A = false;
                this.t.removeMessages(LoginCallBack.REQUEST_LOGINPROTECT);
            }
            d(i);
            return;
        }
        this.u = this.H;
        this.v = this.G;
        this.w = (this.j ? getHeight() - this.o : this.k == 1 ? getWidth() - this.p : this.c.getLeft()) + this.m;
        d((int) this.w);
        this.A = true;
        this.t.removeMessages(LoginCallBack.REQUEST_LOGINPROTECT);
        long uptimeMillis = SystemClock.uptimeMillis();
        this.x = uptimeMillis;
        this.y = uptimeMillis + 16;
        this.A = true;
    }

    private void d(int i) {
        a("moveHandle", "" + i);
        View view = this.c;
        int bottom = getBottom();
        int top = getTop();
        int left = getLeft();
        int right = getRight();
        if (this.j) {
            if (this.k != 2) {
                a("direction_down_to_up", "not finished");
                return;
            }
            if (i == -10001) {
                view.offsetTopAndBottom(this.n - view.getTop());
                invalidate();
                return;
            }
            if (i == -10002) {
                view.offsetTopAndBottom((((this.m + bottom) - top) - this.o) - view.getTop());
                invalidate();
                return;
            }
            int top2 = view.getTop();
            int i2 = i - top2;
            if (i < this.n) {
                i2 = this.n - top2;
            } else if (i2 > (((this.m + bottom) - top) - this.o) - top2) {
                i2 = (((this.m + bottom) - top) - this.o) - top2;
            }
            view.offsetTopAndBottom(i2);
            Rect rect = this.e;
            Rect rect2 = this.f;
            view.getHitRect(rect);
            rect2.set(rect);
            rect2.union(rect.left, rect.top - i2, rect.right, rect.bottom - i2);
            rect2.union(0, rect.bottom - i2, getWidth(), (rect.bottom - i2) + this.d.getHeight());
            invalidate(rect2);
            return;
        }
        if (this.k == 1) {
            if (i == -10001) {
                view.offsetLeftAndRight(this.n - view.getLeft());
                invalidate();
                return;
            }
            if (i == -10002) {
                view.offsetLeftAndRight((((this.m + right) - left) - this.p) - view.getLeft());
                invalidate();
                return;
            }
            int left2 = view.getLeft();
            int i3 = i - left2;
            if (i < this.n) {
                i3 = this.n - left2;
            } else if (i3 > (((this.m + right) - left) - this.p) - left2) {
                i3 = (((this.m + right) - left) - this.p) - left2;
            }
            view.offsetLeftAndRight(i3);
            Rect rect3 = this.e;
            Rect rect4 = this.f;
            view.getHitRect(rect3);
            rect4.set(rect3);
            rect4.union(rect3.left - i3, rect3.top, rect3.right - i3, rect3.bottom);
            rect4.union(rect3.right - i3, 0, (rect3.right - i3) + this.d.getWidth(), getHeight());
            invalidate(rect4);
            return;
        }
        if (i == -10001) {
            view.offsetLeftAndRight((getWidth() - this.n) - view.getWidth());
            invalidate();
            return;
        }
        if (i == -10002) {
            view.offsetLeftAndRight(this.m - view.getLeft());
            invalidate();
            return;
        }
        int left3 = view.getLeft();
        int i4 = i - left3;
        if (i < this.m) {
            i4 = this.m - left3;
        } else if (i4 > ((getWidth() - this.m) - this.p) - left3) {
            i4 = ((getWidth() - this.m) - this.p) - left3;
        }
        view.offsetLeftAndRight(i4);
        Rect rect5 = this.e;
        Rect rect6 = this.f;
        view.getHitRect(rect5);
        rect6.set(rect5);
        rect6.union(rect5.left - i4, rect5.top, rect5.right - i4, rect5.bottom);
        rect6.union((rect5.left - this.d.getWidth()) - i4, 0, rect5.left - i4, getHeight());
        invalidate(rect6);
    }

    private void h() {
        a("prepareContent");
        if (this.A) {
            return;
        }
        int bottom = getBottom();
        int top = getTop();
        int left = getLeft();
        int right = getRight();
        View view = this.d;
        if (view.isLayoutRequested()) {
            if (this.j) {
                int i = this.o;
                view.measure(View.MeasureSpec.makeMeasureSpec(right - left, 1073741824), View.MeasureSpec.makeMeasureSpec(((bottom - top) - i) - this.n, 1073741824));
                view.layout(0, this.n + i, view.getMeasuredWidth(), i + this.n + view.getMeasuredHeight());
            } else {
                int width = this.c.getWidth();
                view.measure(View.MeasureSpec.makeMeasureSpec(((right - left) - width) - this.n, 1073741824), View.MeasureSpec.makeMeasureSpec(bottom - top, 1073741824));
                if (this.k != 1) {
                    width = 0;
                }
                int i2 = width + this.n;
                view.layout(i2, 0, view.getMeasuredWidth() + i2, view.getMeasuredHeight());
                a("content layout", "left:" + i2 + "right:" + i2 + view.getMeasuredWidth());
            }
        }
        view.getViewTreeObserver().dispatchOnPreDraw();
        view.buildDrawingCache();
        view.setVisibility(8);
    }

    private void i() {
        a("stopTracking");
        this.c.setPressed(false);
        this.g = false;
        if (this.s != null) {
            this.s.b();
        }
        if (this.i != null) {
            this.i.recycle();
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        a("doAnimation", this.w);
        if (this.A) {
            k();
            if (this.k == 1 || this.k == 2) {
                if (this.w >= ((this.j ? getHeight() : getWidth()) + this.m) - 1) {
                    this.A = false;
                    l();
                    return;
                } else if (this.w < this.n) {
                    this.A = false;
                    m();
                    return;
                } else {
                    d((int) this.w);
                    this.y += 16;
                    this.t.sendMessageAtTime(this.t.obtainMessage(LoginCallBack.REQUEST_LOGINPROTECT), this.y);
                    return;
                }
            }
            if (this.w >= ((this.j ? getHeight() : getWidth()) + this.m) - 1) {
                this.A = false;
                m();
            } else if (this.w < this.n) {
                this.A = false;
                l();
            } else {
                d((int) this.w);
                this.y += 16;
                this.t.sendMessageAtTime(this.t.obtainMessage(LoginCallBack.REQUEST_LOGINPROTECT), this.y);
            }
        }
    }

    private void k() {
        a("incrementAnimation");
        long uptimeMillis = SystemClock.uptimeMillis();
        float f = ((float) (uptimeMillis - this.x)) / 1000.0f;
        float f2 = this.w;
        float f3 = this.v;
        float f4 = this.u;
        a("mAnimatedVelocity", this.v);
        a("mAnimatedAcceleration", this.u);
        this.w = f2 + (f3 * f) + (0.5f * f4 * f * f);
        this.v = (f * f4) + f3;
        this.x = uptimeMillis;
    }

    private void l() {
        a("closeDrawer");
        d(-10002);
        this.d.setVisibility(8);
        this.d.destroyDrawingCache();
        if (this.l) {
            this.l = false;
            if (this.r != null) {
                this.r.a();
            }
        }
    }

    private void m() {
        a("openDrawer");
        d(-10001);
        this.d.setVisibility(0);
        if (this.l) {
            return;
        }
        this.l = true;
        if (this.q != null) {
            this.q.a();
        }
    }

    public void a() {
        if (this.l) {
            l();
        } else {
            m();
        }
        invalidate();
        requestLayout();
    }

    public void a(bi biVar) {
        this.q = biVar;
    }

    public void b() {
        if (this.l) {
            d();
        } else {
            e();
        }
    }

    public void c() {
        l();
        invalidate();
        requestLayout();
    }

    public void d() {
        a("animateClose");
        h();
        bj bjVar = this.s;
        if (bjVar != null) {
            bjVar.a();
        }
        a(this.j ? this.k == 2 ? this.c.getTop() : this.c.getBottom() : this.k == 1 ? this.c.getLeft() : getRight());
        if (bjVar != null) {
            bjVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        long drawingTime = getDrawingTime();
        View view = this.c;
        boolean z = this.j;
        drawChild(canvas, view, drawingTime);
        if (!this.g && !this.A) {
            if (this.l) {
                drawChild(canvas, this.d, drawingTime);
                return;
            }
            return;
        }
        Bitmap drawingCache = this.d.getDrawingCache();
        if (drawingCache != null) {
            if (z) {
                canvas.drawBitmap(drawingCache, 0.0f, this.k == 2 ? this.m : view.getTop(), (Paint) null);
                return;
            } else {
                canvas.drawBitmap(drawingCache, this.k == 1 ? view.getRight() : this.c.getLeft() - this.d.getMeasuredWidth(), 0.0f, (Paint) null);
                return;
            }
        }
        canvas.save();
        canvas.translate(z ? 0.0f : this.k == 1 ? view.getLeft() - this.n : (this.c.getLeft() - this.d.getMeasuredWidth()) - this.n, z ? this.k == 2 ? view.getTop() - this.n : view.getBottom() - this.n : 0.0f);
        drawChild(canvas, this.d, drawingTime);
        canvas.restore();
    }

    public void e() {
        a("animateOpen");
        h();
        bj bjVar = this.s;
        if (bjVar != null) {
            bjVar.a();
        }
        b(this.j ? this.c.getTop() : this.c.getLeft());
        if (bjVar != null) {
            bjVar.b();
        }
    }

    public View f() {
        return this.d;
    }

    public boolean g() {
        return this.l;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.c = findViewById(this.f2874a);
        if (this.c == null) {
            throw new IllegalArgumentException("The handle attribute is must refer to an existing child.");
        }
        this.c.setOnClickListener(new bg(this, null));
        this.d = findViewById(this.f2875b);
        this.d.setOnClickListener(new bf(this));
        if (this.d == null) {
            throw new IllegalArgumentException("The content attribute is must refer to an existing child.");
        }
        this.d.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.h) {
            return false;
        }
        int action = motionEvent.getAction();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Rect rect = this.e;
        View view = this.c;
        view.getHitRect(rect);
        if (!this.g && !rect.contains((int) x, (int) y)) {
            return false;
        }
        if (action == 0) {
            this.g = true;
            view.setPressed(true);
            h();
            if (this.s != null) {
                this.s.a();
            }
            if (this.j) {
                int top = this.c.getTop();
                this.z = ((int) y) - top;
                c(top);
            } else {
                int left = this.c.getLeft();
                this.z = ((int) x) - left;
                c(left);
            }
            this.i.addMovement(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (this.g) {
            return;
        }
        int i7 = i3 - i;
        int i8 = i4 - i2;
        View view = this.c;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        View view2 = this.d;
        if (this.j) {
            i5 = (i7 - measuredWidth) / 2;
            i6 = this.l ? this.n : (i8 - measuredHeight) + this.m;
            view2.layout(0, this.n + measuredHeight, view2.getMeasuredWidth(), this.n + measuredHeight + view2.getMeasuredHeight());
        } else {
            int i9 = (i8 - measuredHeight) / 2;
            if (this.k == 1) {
                int i10 = this.l ? this.n : (i7 - measuredWidth) + this.m;
                view2.layout(this.n + measuredWidth, 0, this.n + measuredWidth + view2.getMeasuredWidth(), view2.getMeasuredHeight());
                i5 = i10;
                i6 = i9;
            } else {
                a("direction", "left_to_right");
                int i11 = this.l ? (i7 - measuredWidth) + this.m : this.m;
                view2.layout(this.m, 0, this.m + view2.getMeasuredWidth(), view2.getMeasuredHeight());
                i5 = i11;
                i6 = i9;
            }
        }
        a("expanded", "" + this.l);
        view.layout(i5, i6, i5 + measuredWidth, i6 + measuredHeight);
        this.o = view.getHeight();
        this.p = view.getWidth();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        View view = this.c;
        measureChild(view, i, i2);
        if (this.j) {
            this.d.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - view.getMeasuredHeight()) - this.n, 1073741824));
        } else {
            this.d.measure(View.MeasureSpec.makeMeasureSpec((size - view.getMeasuredWidth()) - this.n, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }
        setMeasuredDimension(size, size2);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b6  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        float f;
        float f2;
        boolean z2;
        float f3;
        if (this.h) {
            return true;
        }
        int bottom = getBottom();
        int top = getTop();
        int left = getLeft();
        int right = getRight();
        if (this.g) {
            this.i.addMovement(motionEvent);
            switch (motionEvent.getAction()) {
                case 1:
                case 3:
                    a("------------ACTION_CANCEL");
                    VelocityTracker velocityTracker = this.i;
                    velocityTracker.computeCurrentVelocity(this.I);
                    float yVelocity = velocityTracker.getYVelocity();
                    float xVelocity = velocityTracker.getXVelocity();
                    boolean z3 = this.j;
                    if (z3) {
                        z = yVelocity < 0.0f;
                        if (xVelocity < 0.0f) {
                            xVelocity = -xVelocity;
                        }
                        if (xVelocity > this.F) {
                            boolean z4 = z;
                            f = yVelocity;
                            f2 = this.F;
                            z2 = z4;
                            float hypot = (float) Math.hypot(f2, f);
                            f3 = !z2 ? -hypot : hypot;
                            int top2 = this.c.getTop();
                            int left2 = this.c.getLeft();
                            if (Math.abs(f3) < this.E) {
                                a("case5++++++++++");
                                if (!z3) {
                                    top2 = left2;
                                }
                                a(top2, f3, false);
                                break;
                            } else {
                                a("left", left2);
                                a("mTapThreshold + mTopOffset", this.D + this.n);
                                a("mMaximumTapVelocity", this.E);
                                if (!z3 ? this.k != 1 ? (this.l || left2 >= this.D + this.m) && (!this.l || left2 <= (((this.n + right) - left) - this.p) - this.D) : (!this.l || left2 >= this.D + this.n) && (this.l || left2 <= (((this.m + right) - left) - this.p) - this.D) : (!this.l || top2 >= this.D + this.n) && (this.l || top2 <= (((bottom + this.m) - top) - this.o) - this.D)) {
                                    if (!this.B) {
                                        a("case3++++++++++");
                                        if (!z3) {
                                            top2 = left2;
                                        }
                                        a(top2, f3, false);
                                        break;
                                    } else {
                                        playSoundEffect(0);
                                        if (!this.l) {
                                            a("case2++++++++++");
                                            if (!z3) {
                                                top2 = left2;
                                            }
                                            b(top2);
                                            break;
                                        } else {
                                            a("case1++++++++++");
                                            a(z3 ? top2 : left2);
                                            break;
                                        }
                                    }
                                } else {
                                    a("case4++++++++++");
                                    if (!z3) {
                                        top2 = left2;
                                    }
                                    a(top2, f3, false);
                                    break;
                                }
                            }
                        }
                        boolean z5 = z;
                        f = yVelocity;
                        f2 = xVelocity;
                        z2 = z5;
                        float hypot2 = (float) Math.hypot(f2, f);
                        if (!z2) {
                        }
                        int top22 = this.c.getTop();
                        int left22 = this.c.getLeft();
                        if (Math.abs(f3) < this.E) {
                        }
                    } else {
                        z = xVelocity < 0.0f;
                        if (yVelocity < 0.0f) {
                            yVelocity = -yVelocity;
                        }
                        if (yVelocity > this.F) {
                            boolean z6 = z;
                            f = this.F;
                            f2 = xVelocity;
                            z2 = z6;
                            float hypot22 = (float) Math.hypot(f2, f);
                            if (!z2) {
                            }
                            int top222 = this.c.getTop();
                            int left222 = this.c.getLeft();
                            if (Math.abs(f3) < this.E) {
                            }
                        }
                        boolean z52 = z;
                        f = yVelocity;
                        f2 = xVelocity;
                        z2 = z52;
                        float hypot222 = (float) Math.hypot(f2, f);
                        if (!z2) {
                        }
                        int top2222 = this.c.getTop();
                        int left2222 = this.c.getLeft();
                        if (Math.abs(f3) < this.E) {
                        }
                    }
                    break;
                case 2:
                    d(((int) (this.j ? motionEvent.getY() : motionEvent.getX())) - this.z);
                    break;
            }
        }
        a("content layout", "left:" + f().getLeft() + "right:" + f().getRight());
        return this.g || this.A || super.onTouchEvent(motionEvent);
    }
}
