package android.support.v4.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.baidu.sapi2.callback.LoginCallBack;
import java.util.ArrayList;
import java.util.Comparator;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f50a = {R.attr.layout_gravity};

    /* renamed from: b, reason: collision with root package name */
    private static final Comparator<bf> f51b = new bc();
    private static final Interpolator c = new bd();
    private int A;
    private int B;
    private int C;
    private float D;
    private float E;
    private float F;
    private int G;
    private VelocityTracker H;
    private int I;
    private int J;
    private int K;
    private int L;
    private boolean M;
    private android.support.v4.c.a N;
    private android.support.v4.c.a O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private int S;
    private bi T;
    private bi U;
    private bh V;
    private int W;
    private final ArrayList<bf> d;
    private final bf e;
    private final Rect f;
    private x g;
    private int h;
    private int i;
    private Parcelable j;
    private ClassLoader k;
    private Scroller l;
    private int m;
    private Drawable n;
    private int o;
    private int p;
    private float q;
    private float r;
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private boolean y;
    private boolean z;

    /* loaded from: classes.dex */
    public class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public boolean f52a;

        /* renamed from: b, reason: collision with root package name */
        public int f53b;
        public float c;
        public boolean d;

        public LayoutParams() {
            super(-1, -1);
            this.c = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.c = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f50a);
            this.f53b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes.dex */
    public class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.a.a.a(new bj());

        /* renamed from: a, reason: collision with root package name */
        int f54a;

        /* renamed from: b, reason: collision with root package name */
        Parcelable f55b;
        ClassLoader c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f54a = parcel.readInt();
            this.f55b = parcel.readParcelable(classLoader);
            this.c = classLoader;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f54a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f54a);
            parcel.writeParcelable(this.f55b, i);
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new ArrayList<>();
        this.e = new bf();
        this.f = new Rect();
        this.i = -1;
        this.j = null;
        this.k = null;
        this.q = -3.4028235E38f;
        this.r = Float.MAX_VALUE;
        this.x = 1;
        this.G = -1;
        this.P = true;
        this.Q = false;
        this.W = 0;
        a();
    }

    private int a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.K || Math.abs(i2) <= this.I) {
            i = (int) (i + f + 0.5f);
        } else if (i2 <= 0) {
            i++;
        }
        if (this.d.size() <= 0) {
            return i;
        }
        return Math.max(this.d.get(0).f72b, Math.min(i, this.d.get(this.d.size() - 1).f72b));
    }

    private Rect a(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    private void a(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.d.isEmpty()) {
            int scrollX = (int) ((i + i3) * (getScrollX() / (i2 + i4)));
            scrollTo(scrollX, getScrollY());
            if (this.l.isFinished()) {
                return;
            }
            this.l.startScroll(scrollX, 0, (int) (c(this.h).e * i), 0, this.l.getDuration() - this.l.timePassed());
            return;
        }
        bf c2 = c(this.h);
        int min = (int) ((c2 != null ? Math.min(c2.e, this.r) : 0.0f) * i);
        if (min != getScrollX()) {
            h();
            scrollTo(min, getScrollY());
        }
    }

    private void a(bf bfVar, int i, bf bfVar2) {
        bf bfVar3;
        bf bfVar4;
        int a2 = this.g.a();
        int width = getWidth();
        float f = width > 0 ? this.m / width : 0.0f;
        if (bfVar2 != null) {
            int i2 = bfVar2.f72b;
            if (i2 < bfVar.f72b) {
                float f2 = bfVar2.e + bfVar2.d + f;
                int i3 = i2 + 1;
                int i4 = 0;
                while (i3 <= bfVar.f72b && i4 < this.d.size()) {
                    bf bfVar5 = this.d.get(i4);
                    while (true) {
                        bfVar4 = bfVar5;
                        if (i3 <= bfVar4.f72b || i4 >= this.d.size() - 1) {
                            break;
                        }
                        i4++;
                        bfVar5 = this.d.get(i4);
                    }
                    while (i3 < bfVar4.f72b) {
                        f2 += this.g.b(i3) + f;
                        i3++;
                    }
                    bfVar4.e = f2;
                    f2 += bfVar4.d + f;
                    i3++;
                }
            } else if (i2 > bfVar.f72b) {
                int size = this.d.size() - 1;
                float f3 = bfVar2.e;
                int i5 = i2 - 1;
                while (i5 >= bfVar.f72b && size >= 0) {
                    bf bfVar6 = this.d.get(size);
                    while (true) {
                        bfVar3 = bfVar6;
                        if (i5 >= bfVar3.f72b || size <= 0) {
                            break;
                        }
                        size--;
                        bfVar6 = this.d.get(size);
                    }
                    while (i5 > bfVar3.f72b) {
                        f3 -= this.g.b(i5) + f;
                        i5--;
                    }
                    f3 -= bfVar3.d + f;
                    bfVar3.e = f3;
                    i5--;
                }
            }
        }
        int size2 = this.d.size();
        float f4 = bfVar.e;
        int i6 = bfVar.f72b - 1;
        this.q = bfVar.f72b == 0 ? bfVar.e : -3.4028235E38f;
        this.r = bfVar.f72b == a2 + (-1) ? (bfVar.e + bfVar.d) - 1.0f : Float.MAX_VALUE;
        for (int i7 = i - 1; i7 >= 0; i7--) {
            bf bfVar7 = this.d.get(i7);
            float f5 = f4;
            while (i6 > bfVar7.f72b) {
                f5 -= this.g.b(i6) + f;
                i6--;
            }
            f4 = f5 - (bfVar7.d + f);
            bfVar7.e = f4;
            if (bfVar7.f72b == 0) {
                this.q = f4;
            }
            i6--;
        }
        float f6 = bfVar.e + bfVar.d + f;
        int i8 = bfVar.f72b + 1;
        for (int i9 = i + 1; i9 < size2; i9++) {
            bf bfVar8 = this.d.get(i9);
            float f7 = f6;
            while (i8 < bfVar8.f72b) {
                f7 = this.g.b(i8) + f + f7;
                i8++;
            }
            if (bfVar8.f72b == a2 - 1) {
                this.r = (bfVar8.d + f7) - 1.0f;
            }
            bfVar8.e = f7;
            f6 = f7 + bfVar8.d + f;
            i8++;
        }
        this.Q = false;
    }

    private void a(MotionEvent motionEvent) {
        int a2 = s.a(motionEvent);
        if (s.b(motionEvent, a2) == this.G) {
            int i = a2 == 0 ? 1 : 0;
            this.E = s.c(motionEvent, i);
            this.G = s.b(motionEvent, i);
            if (this.H != null) {
                this.H.clear();
            }
        }
    }

    private void a(boolean z) {
        if (this.v != z) {
            this.v = z;
        }
    }

    private boolean a(float f, float f2) {
        return (f < ((float) this.B) && f2 > 0.0f) || (f > ((float) (getWidth() - this.B)) && f2 < 0.0f);
    }

    private boolean b(float f) {
        boolean z;
        float f2;
        boolean z2 = true;
        float f3 = this.E - f;
        this.E = f;
        float scrollX = getScrollX() + f3;
        int width = getWidth();
        float f4 = width * this.q;
        float f5 = width * this.r;
        bf bfVar = this.d.get(0);
        bf bfVar2 = this.d.get(this.d.size() - 1);
        if (bfVar.f72b != 0) {
            f4 = bfVar.e * width;
            z = false;
        } else {
            z = true;
        }
        if (bfVar2.f72b != this.g.a() - 1) {
            f2 = bfVar2.e * width;
            z2 = false;
        } else {
            f2 = f5;
        }
        if (scrollX < f4) {
            if (z) {
                r2 = this.N.a(Math.abs(f4 - scrollX) / width);
            }
        } else if (scrollX > f2) {
            r2 = z2 ? this.O.a(Math.abs(scrollX - f2) / width) : false;
            f4 = f2;
        } else {
            f4 = scrollX;
        }
        this.E += f4 - ((int) f4);
        scrollTo((int) f4, getScrollY());
        f((int) f4);
        return r2;
    }

    private void e(int i) {
        if (this.W == i) {
            return;
        }
        this.W = i;
        if (this.T != null) {
            this.T.b(i);
        }
    }

    private boolean f(int i) {
        if (this.d.size() == 0) {
            this.R = false;
            a(0, 0.0f, 0);
            if (this.R) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        bf i2 = i();
        int width = getWidth();
        int i3 = this.m + width;
        int i4 = i2.f72b;
        float f = ((i / width) - i2.e) / (i2.d + (this.m / width));
        this.R = false;
        a(i4, f, (int) (i3 * f));
        if (this.R) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private void h() {
        boolean z = this.W == 2;
        if (z) {
            a(false);
            this.l.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.l.getCurrX();
            int currY = this.l.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
            }
            e(0);
        }
        this.w = false;
        boolean z2 = z;
        for (int i = 0; i < this.d.size(); i++) {
            bf bfVar = this.d.get(i);
            if (bfVar.c) {
                bfVar.c = false;
                z2 = true;
            }
        }
        if (z2) {
            d();
        }
    }

    private bf i() {
        int i;
        bf bfVar;
        int width = getWidth();
        float scrollX = width > 0 ? getScrollX() / width : 0.0f;
        float f = width > 0 ? this.m / width : 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i2 = -1;
        int i3 = 0;
        boolean z = true;
        bf bfVar2 = null;
        while (i3 < this.d.size()) {
            bf bfVar3 = this.d.get(i3);
            if (z || bfVar3.f72b == i2 + 1) {
                i = i3;
                bfVar = bfVar3;
            } else {
                bf bfVar4 = this.e;
                bfVar4.e = f2 + f3 + f;
                bfVar4.f72b = i2 + 1;
                bfVar4.d = this.g.b(bfVar4.f72b);
                i = i3 - 1;
                bfVar = bfVar4;
            }
            float f4 = bfVar.e;
            float f5 = bfVar.d + f4 + f;
            if (!z && scrollX < f4) {
                return bfVar2;
            }
            if (scrollX < f5 || i == this.d.size() - 1) {
                return bfVar;
            }
            f3 = f4;
            i2 = bfVar.f72b;
            z = false;
            f2 = bfVar.d;
            bfVar2 = bfVar;
            i3 = i + 1;
        }
        return bfVar2;
    }

    private void j() {
        this.y = false;
        this.z = false;
        if (this.H != null) {
            this.H.recycle();
            this.H = null;
        }
    }

    float a(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    bf a(int i, int i2) {
        bf bfVar = new bf();
        bfVar.f72b = i;
        bfVar.f71a = this.g.a((ViewGroup) this, i);
        bfVar.d = this.g.b(i);
        if (i2 < 0 || i2 >= this.d.size()) {
            this.d.add(bfVar);
        } else {
            this.d.add(i2, bfVar);
        }
        return bfVar;
    }

    bf a(View view) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.d.size()) {
                return null;
            }
            bf bfVar = this.d.get(i2);
            if (this.g.a(view, bfVar.f71a)) {
                return bfVar;
            }
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi a(bi biVar) {
        bi biVar2 = this.U;
        this.U = biVar;
        return biVar2;
    }

    void a() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.l = new Scroller(context, c);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.C = ax.a(viewConfiguration);
        this.I = viewConfiguration.getScaledMinimumFlingVelocity();
        this.J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.N = new android.support.v4.c.a(context);
        this.O = new android.support.v4.c.a(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.K = (int) (25.0f * f);
        this.L = (int) (2.0f * f);
        this.A = (int) (f * 16.0f);
        am.a(this, new bg(this));
        if (am.c(this) == 0) {
            am.b(this, 1);
        }
    }

    public void a(int i) {
        this.w = false;
        a(i, !this.P, false);
    }

    protected void a(int i, float f, int i2) {
        int measuredWidth;
        int i3;
        int i4;
        if (this.S > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i5 = 0;
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f52a) {
                    switch (layoutParams.f53b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            int i6 = paddingRight;
                            i3 = paddingLeft;
                            i4 = i6;
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            int i7 = paddingRight;
                            i3 = paddingLeft;
                            i4 = i7;
                            break;
                        case 3:
                            int width2 = childAt.getWidth() + paddingLeft;
                            int i8 = paddingLeft;
                            i4 = paddingRight;
                            i3 = width2;
                            measuredWidth = i8;
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            int measuredWidth2 = paddingRight + childAt.getMeasuredWidth();
                            i3 = paddingLeft;
                            i4 = measuredWidth2;
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                } else {
                    int i9 = paddingRight;
                    i3 = paddingLeft;
                    i4 = i9;
                }
                i5++;
                int i10 = i4;
                paddingLeft = i3;
                paddingRight = i10;
            }
        }
        if (this.T != null) {
            this.T.a(i, f, i2);
        }
        if (this.U != null) {
            this.U.a(i, f, i2);
        }
        this.R = true;
    }

    void a(int i, int i2, int i3) {
        int abs;
        if (getChildCount() == 0) {
            a(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            h();
            d();
            e(0);
            return;
        }
        a(true);
        e(2);
        int width = getWidth();
        int i6 = width / 2;
        float a2 = (i6 * a(Math.min(1.0f, (Math.abs(i4) * 1.0f) / width))) + i6;
        int abs2 = Math.abs(i3);
        if (abs2 > 0) {
            abs = Math.round(1000.0f * Math.abs(a2 / abs2)) * 4;
        } else {
            abs = (int) (((Math.abs(i4) / ((width * this.g.b(this.h)) + this.m)) + 1.0f) * 100.0f);
        }
        this.l.startScroll(scrollX, scrollY, i4, i5, Math.min(abs, 600));
        am.b(this);
    }

    public void a(int i, boolean z) {
        this.w = false;
        a(i, z, false);
    }

    void a(int i, boolean z, boolean z2) {
        a(i, z, z2, 0);
    }

    void a(int i, boolean z, boolean z2, int i2) {
        if (this.g == null || this.g.a() <= 0) {
            a(false);
            return;
        }
        if (!z2 && this.h == i && this.d.size() != 0) {
            a(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.g.a()) {
            i = this.g.a() - 1;
        }
        int i3 = this.x;
        if (i > this.h + i3 || i < this.h - i3) {
            for (int i4 = 0; i4 < this.d.size(); i4++) {
                this.d.get(i4).c = true;
            }
        }
        boolean z3 = this.h != i;
        b(i);
        bf c2 = c(i);
        int max = c2 != null ? (int) (Math.max(this.q, Math.min(c2.e, this.r)) * getWidth()) : 0;
        if (z) {
            a(max, 0, i2);
            if (z3 && this.T != null) {
                this.T.a(i);
            }
            if (!z3 || this.U == null) {
                return;
            }
            this.U.a(i);
            return;
        }
        if (z3 && this.T != null) {
            this.T.a(i);
        }
        if (z3 && this.U != null) {
            this.U.a(i);
        }
        h();
        scrollTo(max, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(bh bhVar) {
        this.V = bhVar;
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 21:
                return d(17);
            case 22:
                return d(66);
            case 61:
                if (Build.VERSION.SDK_INT < 11) {
                    return false;
                }
                if (n.a(keyEvent)) {
                    return d(2);
                }
                if (n.a(keyEvent, 1)) {
                    return d(1);
                }
                return false;
            default:
                return false;
        }
    }

    protected boolean a(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom() && a(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && am.a(view, -i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        bf a2;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.f72b == this.h) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        bf a2;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.f72b == this.h) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams generateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        LayoutParams layoutParams2 = (LayoutParams) generateLayoutParams;
        layoutParams2.f52a |= view instanceof be;
        if (!this.u) {
            super.addView(view, i, generateLayoutParams);
        } else {
            if (layoutParams2 != null && layoutParams2.f52a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.d = true;
            addViewInLayout(view, i, generateLayoutParams);
        }
    }

    bf b(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return a(view);
            }
            if (parent == null || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return null;
    }

    public x b() {
        return this.g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
    
        if (r0.f72b == r14.h) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void b(int i) {
        bf bfVar;
        int i2;
        bf bfVar2;
        bf a2;
        if (this.h != i) {
            bf c2 = c(this.h);
            this.h = i;
            bfVar = c2;
        } else {
            bfVar = null;
        }
        if (this.g == null || this.w || getWindowToken() == null) {
            return;
        }
        this.g.a((ViewGroup) this);
        int i3 = this.x;
        int max = Math.max(0, this.h - i3);
        int a3 = this.g.a();
        int min = Math.min(a3 - 1, i3 + this.h);
        int i4 = 0;
        while (true) {
            i2 = i4;
            if (i2 >= this.d.size()) {
                break;
            }
            bfVar2 = this.d.get(i2);
            if (bfVar2.f72b < this.h) {
                i4 = i2 + 1;
            }
        }
        bfVar2 = null;
        bf a4 = (bfVar2 != null || a3 <= 0) ? bfVar2 : a(this.h, i2);
        if (a4 != null) {
            int i5 = i2 - 1;
            bf bfVar3 = i5 >= 0 ? this.d.get(i5) : null;
            float f = 2.0f - a4.d;
            float f2 = 0.0f;
            int i6 = i2;
            int i7 = i5;
            for (int i8 = this.h - 1; i8 >= 0; i8--) {
                if (f2 >= f && i8 < max) {
                    if (bfVar3 == null) {
                        break;
                    }
                    if (i8 == bfVar3.f72b && !bfVar3.c) {
                        this.d.remove(i7);
                        this.g.a((ViewGroup) this, i8, bfVar3.f71a);
                        i7--;
                        i6--;
                        bfVar3 = i7 >= 0 ? this.d.get(i7) : null;
                    }
                } else if (bfVar3 == null || i8 != bfVar3.f72b) {
                    f2 += a(i8, i7 + 1).d;
                    i6++;
                    bfVar3 = i7 >= 0 ? this.d.get(i7) : null;
                } else {
                    f2 += bfVar3.d;
                    i7--;
                    bfVar3 = i7 >= 0 ? this.d.get(i7) : null;
                }
            }
            float f3 = a4.d;
            int i9 = i6 + 1;
            if (f3 < 2.0f) {
                bf bfVar4 = i9 < this.d.size() ? this.d.get(i9) : null;
                float f4 = f3;
                int i10 = i9;
                int i11 = this.h + 1;
                while (i11 < a3) {
                    if (f4 >= 2.0f && i11 > min) {
                        if (bfVar4 == null) {
                            break;
                        }
                        if (i11 == bfVar4.f72b && !bfVar4.c) {
                            this.d.remove(i10);
                            this.g.a((ViewGroup) this, i11, bfVar4.f71a);
                            bfVar4 = i10 < this.d.size() ? this.d.get(i10) : null;
                        }
                    } else if (bfVar4 == null || i11 != bfVar4.f72b) {
                        bf a5 = a(i11, i10);
                        i10++;
                        f4 += a5.d;
                        bfVar4 = i10 < this.d.size() ? this.d.get(i10) : null;
                    } else {
                        f4 += bfVar4.d;
                        i10++;
                        bfVar4 = i10 < this.d.size() ? this.d.get(i10) : null;
                    }
                    i11++;
                    bfVar4 = bfVar4;
                    f4 = f4;
                }
            }
            a(a4, i6, bfVar);
        }
        this.g.b((ViewGroup) this, this.h, a4 != null ? a4.f71a : null);
        this.g.b((ViewGroup) this);
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (!layoutParams.f52a && layoutParams.c == 0.0f && (a2 = a(childAt)) != null) {
                layoutParams.c = a2.d;
            }
        }
        if (hasFocus()) {
            View findFocus = findFocus();
            bf b2 = findFocus != null ? b(findFocus) : null;
            if (b2 == null || b2.f72b != this.h) {
                for (int i13 = 0; i13 < getChildCount(); i13++) {
                    View childAt2 = getChildAt(i13);
                    bf a6 = a(childAt2);
                    if (a6 != null && a6.f72b == this.h && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    public int c() {
        return this.h;
    }

    bf c(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.d.size()) {
                return null;
            }
            bf bfVar = this.d.get(i3);
            if (bfVar.f72b == i) {
                return bfVar;
            }
            i2 = i3 + 1;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.l.isFinished() || !this.l.computeScrollOffset()) {
            h();
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.l.getCurrX();
        int currY = this.l.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!f(currX)) {
                this.l.abortAnimation();
                scrollTo(0, currY);
            }
        }
        am.b(this);
    }

    void d() {
        b(this.h);
    }

    public boolean d(int i) {
        boolean e;
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        if (findNextFocus == null || findNextFocus == findFocus) {
            if (i == 17 || i == 1) {
                e = e();
            } else {
                if (i == 66 || i == 2) {
                    e = f();
                }
                e = false;
            }
        } else if (i == 17) {
            e = (findFocus == null || a(this.f, findNextFocus).left < a(this.f, findFocus).left) ? findNextFocus.requestFocus() : e();
        } else {
            if (i == 66) {
                e = (findFocus == null || a(this.f, findNextFocus).left > a(this.f, findFocus).left) ? findNextFocus.requestFocus() : f();
            }
            e = false;
        }
        if (e) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        bf a2;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.f72b == this.h && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean z = false;
        int a2 = am.a(this);
        if (a2 == 0 || (a2 == 1 && this.g != null && this.g.a() > 1)) {
            if (!this.N.a()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.q * width);
                this.N.a(height, width);
                z = false | this.N.a(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.O.a()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.r + 1.0f)) * width2);
                this.O.a(height2, width2);
                z |= this.O.a(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.N.b();
            this.O.b();
        }
        if (z) {
            am.b(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.n;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    boolean e() {
        if (this.h <= 0) {
            return false;
        }
        a(this.h - 1, true);
        return true;
    }

    boolean f() {
        if (this.g == null || this.h >= this.g.a() - 1) {
            return false;
        }
        a(this.h + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.P = true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        if (this.m <= 0 || this.n == null || this.d.size() <= 0 || this.g == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f2 = this.m / width;
        bf bfVar = this.d.get(0);
        float f3 = bfVar.e;
        int size = this.d.size();
        int i = bfVar.f72b;
        int i2 = this.d.get(size - 1).f72b;
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4++) {
            while (i4 > bfVar.f72b && i3 < size) {
                i3++;
                bfVar = this.d.get(i3);
            }
            if (i4 == bfVar.f72b) {
                f = (bfVar.e + bfVar.d) * width;
                f3 = bfVar.e + bfVar.d + f2;
            } else {
                float b2 = this.g.b(i4);
                f = (f3 + b2) * width;
                f3 += b2 + f2;
            }
            if (this.m + f > scrollX) {
                this.n.setBounds((int) f, this.o, (int) (this.m + f + 0.5f), this.p);
                this.n.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.y = false;
            this.z = false;
            this.G = -1;
            if (this.H == null) {
                return false;
            }
            this.H.recycle();
            this.H = null;
            return false;
        }
        if (action != 0) {
            if (this.y) {
                return true;
            }
            if (this.z) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = motionEvent.getX();
                this.D = x;
                this.E = x;
                this.F = motionEvent.getY();
                this.G = s.b(motionEvent, 0);
                this.z = false;
                this.l.computeScrollOffset();
                if (this.W == 2 && Math.abs(this.l.getFinalX() - this.l.getCurrX()) > this.L) {
                    this.l.abortAnimation();
                    this.w = false;
                    d();
                    this.y = true;
                    e(1);
                    break;
                } else {
                    h();
                    this.y = false;
                    break;
                }
            case 2:
                int i = this.G;
                if (i != -1) {
                    int a2 = s.a(motionEvent, i);
                    float c2 = s.c(motionEvent, a2);
                    float f = c2 - this.E;
                    float abs = Math.abs(f);
                    float d = s.d(motionEvent, a2);
                    float abs2 = Math.abs(d - this.F);
                    if (f != 0.0f && !a(this.E, f) && a(this, false, (int) f, (int) c2, (int) d)) {
                        this.E = c2;
                        this.D = c2;
                        this.F = d;
                        this.z = true;
                        return false;
                    }
                    if (abs > this.C && abs > abs2) {
                        this.y = true;
                        e(1);
                        this.E = f > 0.0f ? this.D + this.C : this.D - this.C;
                        a(true);
                    } else if (abs2 > this.C) {
                        this.z = true;
                    }
                    if (this.y && b(c2)) {
                        am.b(this);
                        break;
                    }
                }
                break;
            case 6:
                a(motionEvent);
                break;
        }
        if (this.H == null) {
            this.H = VelocityTracker.obtain();
        }
        this.H.addMovement(motionEvent);
        return this.y;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        bf a2;
        int i5;
        int i6;
        int i7;
        int measuredHeight;
        int i8;
        int i9;
        this.u = true;
        d();
        this.u = false;
        int childCount = getChildCount();
        int i10 = i3 - i;
        int i11 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i12 = 0;
        int i13 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f52a) {
                    int i14 = layoutParams.f53b & 7;
                    int i15 = layoutParams.f53b & 112;
                    switch (i14) {
                        case 1:
                            i7 = Math.max((i10 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            i7 = paddingLeft;
                            break;
                        case 3:
                            i7 = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case 5:
                            int measuredWidth = (i10 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            i7 = measuredWidth;
                            break;
                    }
                    switch (i15) {
                        case 16:
                            measuredHeight = Math.max((i11 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            int i16 = paddingBottom;
                            i8 = paddingTop;
                            i9 = i16;
                            break;
                        case 48:
                            int measuredHeight2 = childAt.getMeasuredHeight() + paddingTop;
                            int i17 = paddingTop;
                            i9 = paddingBottom;
                            i8 = measuredHeight2;
                            measuredHeight = i17;
                            break;
                        case 80:
                            measuredHeight = (i11 - paddingBottom) - childAt.getMeasuredHeight();
                            int measuredHeight3 = paddingBottom + childAt.getMeasuredHeight();
                            i8 = paddingTop;
                            i9 = measuredHeight3;
                            break;
                        default:
                            measuredHeight = paddingTop;
                            int i18 = paddingBottom;
                            i8 = paddingTop;
                            i9 = i18;
                            break;
                    }
                    int i19 = i7 + scrollX;
                    childAt.layout(i19, measuredHeight, childAt.getMeasuredWidth() + i19, childAt.getMeasuredHeight() + measuredHeight);
                    i5 = i12 + 1;
                    i6 = i8;
                    paddingBottom = i9;
                    i13++;
                    paddingLeft = paddingLeft;
                    paddingRight = paddingRight;
                    paddingTop = i6;
                    i12 = i5;
                }
            }
            i5 = i12;
            i6 = paddingTop;
            i13++;
            paddingLeft = paddingLeft;
            paddingRight = paddingRight;
            paddingTop = i6;
            i12 = i5;
        }
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.f52a && (a2 = a(childAt2)) != null) {
                    int i21 = ((int) (a2.e * i10)) + paddingLeft;
                    if (layoutParams2.d) {
                        layoutParams2.d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (layoutParams2.c * ((i10 - paddingLeft) - paddingRight)), 1073741824), View.MeasureSpec.makeMeasureSpec((i11 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i21, paddingTop, childAt2.getMeasuredWidth() + i21, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.o = paddingTop;
        this.p = i11 - paddingBottom;
        this.S = i12;
        this.P = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        LayoutParams layoutParams2;
        int i3;
        int i4;
        int i5;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.B = Math.min(measuredWidth / 10, this.A);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8 && (layoutParams2 = (LayoutParams) childAt.getLayoutParams()) != null && layoutParams2.f52a) {
                int i7 = layoutParams2.f53b & 7;
                int i8 = layoutParams2.f53b & 112;
                int i9 = Integer.MIN_VALUE;
                int i10 = Integer.MIN_VALUE;
                boolean z = i8 == 48 || i8 == 80;
                boolean z2 = i7 == 3 || i7 == 5;
                if (z) {
                    i9 = 1073741824;
                } else if (z2) {
                    i10 = 1073741824;
                }
                if (layoutParams2.width != -2) {
                    i3 = 1073741824;
                    i4 = layoutParams2.width != -1 ? layoutParams2.width : paddingLeft;
                } else {
                    i3 = i9;
                    i4 = paddingLeft;
                }
                if (layoutParams2.height != -2) {
                    i10 = 1073741824;
                    if (layoutParams2.height != -1) {
                        i5 = layoutParams2.height;
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i3), View.MeasureSpec.makeMeasureSpec(i5, i10));
                        if (!z) {
                            measuredHeight -= childAt.getMeasuredHeight();
                        } else if (z2) {
                            paddingLeft -= childAt.getMeasuredWidth();
                        }
                    }
                }
                i5 = measuredHeight;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i3), View.MeasureSpec.makeMeasureSpec(i5, i10));
                if (!z) {
                }
            }
        }
        this.s = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.t = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.u = true;
        d();
        this.u = false;
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8 && ((layoutParams = (LayoutParams) childAt2.getLayoutParams()) == null || !layoutParams.f52a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (layoutParams.c * paddingLeft), 1073741824), this.t);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        bf a2;
        int i3 = -1;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.f72b == this.h && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i3;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.g != null) {
            this.g.a(savedState.f55b, savedState.c);
            a(savedState.f54a, false, true);
        } else {
            this.i = savedState.f54a;
            this.j = savedState.f55b;
            this.k = savedState.c;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f54a = this.h;
        if (this.g != null) {
            savedState.f55b = this.g.b();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            a(i, i3, this.m, this.m);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.M) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.g == null || this.g.a() == 0) {
            return false;
        }
        if (this.H == null) {
            this.H = VelocityTracker.obtain();
        }
        this.H.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.l.abortAnimation();
                this.w = false;
                d();
                this.y = true;
                e(1);
                float x = motionEvent.getX();
                this.D = x;
                this.E = x;
                this.G = s.b(motionEvent, 0);
                break;
            case 1:
                if (this.y) {
                    VelocityTracker velocityTracker = this.H;
                    velocityTracker.computeCurrentVelocity(LoginCallBack.REQUEST_LOGINPROTECT, this.J);
                    int a2 = (int) ah.a(velocityTracker, this.G);
                    this.w = true;
                    int width = getWidth();
                    int scrollX = getScrollX();
                    bf i = i();
                    a(a(i.f72b, ((scrollX / width) - i.e) / i.d, a2, (int) (s.c(motionEvent, s.a(motionEvent, this.G)) - this.D)), true, true, a2);
                    this.G = -1;
                    j();
                    z = this.O.c() | this.N.c();
                    break;
                }
                break;
            case 2:
                if (!this.y) {
                    int a3 = s.a(motionEvent, this.G);
                    float c2 = s.c(motionEvent, a3);
                    float abs = Math.abs(c2 - this.E);
                    float abs2 = Math.abs(s.d(motionEvent, a3) - this.F);
                    if (abs > this.C && abs > abs2) {
                        this.y = true;
                        this.E = c2 - this.D > 0.0f ? this.D + this.C : this.D - this.C;
                        e(1);
                        a(true);
                    }
                }
                if (this.y) {
                    z = false | b(s.c(motionEvent, s.a(motionEvent, this.G)));
                    break;
                }
                break;
            case 3:
                if (this.y) {
                    a(this.h, true, true);
                    this.G = -1;
                    j();
                    z = this.O.c() | this.N.c();
                    break;
                }
                break;
            case 5:
                int a4 = s.a(motionEvent);
                this.E = s.c(motionEvent, a4);
                this.G = s.b(motionEvent, a4);
                break;
            case 6:
                a(motionEvent);
                this.E = s.c(motionEvent, s.a(motionEvent, this.G));
                break;
        }
        if (z) {
            am.b(this);
        }
        return true;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.n;
    }
}
