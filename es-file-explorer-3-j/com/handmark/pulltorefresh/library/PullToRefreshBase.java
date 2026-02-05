package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.s;
import com.estrongs.android.ui.view.ESPullImageView;

/* loaded from: classes.dex */
public abstract class PullToRefreshBase<T extends View> extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    T f3270a;

    /* renamed from: b, reason: collision with root package name */
    private int f3271b;
    private float c;
    private float d;
    private float e;
    private float f;
    private boolean g;
    private State h;
    private Mode i;
    private Mode j;
    private FrameLayout k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private Interpolator q;
    private AnimationStyle r;
    private com.handmark.pulltorefresh.library.a.e s;
    private com.handmark.pulltorefresh.library.a.e t;
    private j<T> u;
    private k<T> v;
    private i<T> w;
    private PullToRefreshBase<T>.m x;

    /* loaded from: classes.dex */
    public enum AnimationStyle {
        ROTATE,
        FLIP;

        static AnimationStyle getDefault() {
            return ROTATE;
        }

        static AnimationStyle mapIntToValue(int i) {
            switch (i) {
                case 1:
                    return FLIP;
                default:
                    return ROTATE;
            }
        }

        com.handmark.pulltorefresh.library.a.e createLoadingLayout(Context context, Mode mode, Orientation orientation, TypedArray typedArray) {
            switch (g.d[ordinal()]) {
                case 2:
                    return new com.handmark.pulltorefresh.library.a.b(context, mode, orientation, typedArray);
                default:
                    return new com.handmark.pulltorefresh.library.a.g(context, mode, orientation, typedArray);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Mode {
        DISABLED(0),
        PULL_FROM_START(1),
        PULL_FROM_END(2),
        BOTH(3),
        MANUAL_REFRESH_ONLY(4);

        private int mIntValue;
        public static Mode PULL_DOWN_TO_REFRESH = PULL_FROM_START;
        public static Mode PULL_UP_TO_REFRESH = PULL_FROM_END;

        Mode(int i) {
            this.mIntValue = i;
        }

        static Mode getDefault() {
            return PULL_FROM_START;
        }

        static Mode mapIntToValue(int i) {
            for (Mode mode : values()) {
                if (i == mode.getIntValue()) {
                    return mode;
                }
            }
            return getDefault();
        }

        int getIntValue() {
            return this.mIntValue;
        }

        boolean permitsPullToRefresh() {
            return (this == DISABLED || this == MANUAL_REFRESH_ONLY) ? false : true;
        }

        public boolean showFooterLoadingLayout() {
            return this == PULL_FROM_END || this == BOTH || this == MANUAL_REFRESH_ONLY;
        }

        public boolean showHeaderLoadingLayout() {
            return this == PULL_FROM_START || this == BOTH;
        }
    }

    /* loaded from: classes.dex */
    public enum Orientation {
        VERTICAL,
        HORIZONTAL
    }

    /* loaded from: classes.dex */
    public enum State {
        RESET(0),
        PULL_TO_REFRESH(1),
        RELEASE_TO_REFRESH(2),
        REFRESHING(8),
        MANUAL_REFRESHING(9),
        OVERSCROLLING(16);

        private int mIntValue;

        State(int i) {
            this.mIntValue = i;
        }

        static State mapIntToValue(int i) {
            for (State state : values()) {
                if (i == state.getIntValue()) {
                    return state;
                }
            }
            return RESET;
        }

        int getIntValue() {
            return this.mIntValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class m implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final Interpolator f3286b;
        private final int c;
        private final int d;
        private final long e;
        private l f;
        private boolean g = true;
        private long h = -1;
        private int i = -1;

        public m(int i, int i2, long j, l lVar) {
            this.d = i;
            this.c = i2;
            this.f3286b = PullToRefreshBase.this.q;
            this.e = j;
            this.f = lVar;
        }

        public void a() {
            this.g = false;
            PullToRefreshBase.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.h == -1) {
                this.h = System.currentTimeMillis();
            } else {
                this.i = this.d - Math.round(this.f3286b.getInterpolation(((float) Math.max(Math.min(((System.currentTimeMillis() - this.h) * 1000) / this.e, 1000L), 0L)) / 1000.0f) * (this.d - this.c));
                PullToRefreshBase.this.a(this.i);
            }
            if (this.g && this.c != this.i) {
                com.handmark.pulltorefresh.library.a.i.a(PullToRefreshBase.this, this);
            } else if (this.f != null) {
                this.f.a();
            }
        }
    }

    public PullToRefreshBase(Context context) {
        super(context);
        this.g = false;
        this.h = State.RESET;
        this.i = Mode.getDefault();
        this.l = true;
        this.m = false;
        this.n = true;
        this.o = true;
        this.p = true;
        this.r = AnimationStyle.getDefault();
        b(context, (AttributeSet) null);
    }

    public PullToRefreshBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = false;
        this.h = State.RESET;
        this.i = Mode.getDefault();
        this.l = true;
        this.m = false;
        this.n = true;
        this.o = true;
        this.p = true;
        this.r = AnimationStyle.getDefault();
        b(context, attributeSet);
    }

    public PullToRefreshBase(Context context, Mode mode) {
        super(context);
        this.g = false;
        this.h = State.RESET;
        this.i = Mode.getDefault();
        this.l = true;
        this.m = false;
        this.n = true;
        this.o = true;
        this.p = true;
        this.r = AnimationStyle.getDefault();
        this.i = mode;
        b(context, (AttributeSet) null);
    }

    public PullToRefreshBase(Context context, Mode mode, AnimationStyle animationStyle) {
        super(context);
        this.g = false;
        this.h = State.RESET;
        this.i = Mode.getDefault();
        this.l = true;
        this.m = false;
        this.n = true;
        this.o = true;
        this.p = true;
        this.r = AnimationStyle.getDefault();
        this.i = mode;
        this.r = animationStyle;
        b(context, (AttributeSet) null);
    }

    private final void a(int i, long j) {
        a(i, j, 0L, null);
    }

    private final void a(int i, long j, long j2, l lVar) {
        int scrollX;
        if (this.x != null) {
            this.x.a();
        }
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                scrollX = getScrollX();
                break;
            default:
                scrollX = getScrollY();
                break;
        }
        if (scrollX != i) {
            if (this.q == null) {
                this.q = new DecelerateInterpolator();
            }
            this.x = new m(scrollX, i, j, lVar);
            if (j2 > 0) {
                postDelayed(this.x, j2);
            } else {
                post(this.x);
            }
        }
    }

    private void a(Context context, T t) {
        this.k = new FrameLayout(context);
        this.k.addView(t, -1, -1);
        a(this.k, new LinearLayout.LayoutParams(-1, -1));
    }

    private void b(Context context, AttributeSet attributeSet) {
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                setOrientation(0);
                break;
            default:
                setOrientation(1);
                break;
        }
        setGravity(17);
        this.f3271b = ViewConfiguration.get(context).getScaledTouchSlop();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.f1168b);
        if (obtainStyledAttributes.hasValue(4)) {
            this.i = Mode.mapIntToValue(obtainStyledAttributes.getInteger(4, 0));
        }
        if (obtainStyledAttributes.hasValue(12)) {
            this.r = AnimationStyle.mapIntToValue(obtainStyledAttributes.getInteger(12, 0));
        }
        this.f3270a = a(context, attributeSet);
        a(context, (Context) this.f3270a);
        this.s = a(context, Mode.PULL_FROM_START, obtainStyledAttributes);
        this.t = a(context, Mode.PULL_FROM_END, obtainStyledAttributes);
        if (obtainStyledAttributes.hasValue(0)) {
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                this.f3270a.setBackgroundDrawable(drawable);
            }
        } else if (obtainStyledAttributes.hasValue(16)) {
            com.handmark.pulltorefresh.library.a.h.a("ptrAdapterViewBackground", "ptrRefreshableViewBackground");
            Drawable drawable2 = obtainStyledAttributes.getDrawable(16);
            if (drawable2 != null) {
                this.f3270a.setBackgroundDrawable(drawable2);
            }
        }
        if (obtainStyledAttributes.hasValue(9)) {
            this.o = obtainStyledAttributes.getBoolean(9, true);
        }
        if (obtainStyledAttributes.hasValue(13)) {
            this.m = obtainStyledAttributes.getBoolean(13, false);
        }
        a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (this.u != null) {
            this.u.a(this);
            return;
        }
        if (this.v != null) {
            if (this.j == Mode.PULL_FROM_START) {
                this.v.a(this);
            } else if (this.j == Mode.PULL_FROM_END) {
                this.v.b(this);
            }
        }
    }

    private boolean v() {
        switch (g.c[this.i.ordinal()]) {
            case 1:
                return e();
            case 2:
                return d();
            case 3:
            default:
                return false;
            case 4:
                return e() || d();
        }
    }

    private void w() {
        float f;
        float f2;
        int round;
        int p;
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                f = this.e;
                f2 = this.c;
                break;
            default:
                f = this.f;
                f2 = this.d;
                break;
        }
        switch (g.c[this.j.ordinal()]) {
            case 1:
                round = Math.round(Math.max(f - f2, 0.0f) / 4.0f);
                p = p();
                break;
            default:
                round = Math.round(Math.min(f - f2, 0.0f) / 4.0f);
                p = q();
                break;
        }
        a(round);
        if (round == 0 || m()) {
            return;
        }
        float abs = Math.abs(round) / p;
        switch (g.c[this.j.ordinal()]) {
            case 1:
                this.t.b(abs);
                break;
            default:
                this.s.b(abs);
                break;
        }
        if (this.h == State.RESET || (this.h != State.PULL_TO_REFRESH && p >= Math.abs(round))) {
            a(State.PULL_TO_REFRESH, new boolean[0]);
        } else {
            if (this.h != State.PULL_TO_REFRESH || p >= Math.abs(round)) {
                return;
            }
            a(State.RELEASE_TO_REFRESH, new boolean[0]);
        }
    }

    private LinearLayout.LayoutParams x() {
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                return new LinearLayout.LayoutParams(-2, -1);
            default:
                return new LinearLayout.LayoutParams(-1, -2);
        }
    }

    private int y() {
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                return Math.round(getWidth() / 4.0f);
            default:
                return Math.round(getHeight() / 4.0f);
        }
    }

    protected abstract T a(Context context, AttributeSet attributeSet);

    protected com.handmark.pulltorefresh.library.a.e a(Context context, Mode mode, TypedArray typedArray) {
        com.handmark.pulltorefresh.library.a.e createLoadingLayout = this.r.createLoadingLayout(context, mode, o(), typedArray);
        createLoadingLayout.setVisibility(4);
        return createLoadingLayout;
    }

    public final a a(boolean z, boolean z2) {
        return b(z, z2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        switch (g.c[this.j.ordinal()]) {
            case 1:
                this.t.g();
                return;
            case 2:
                this.s.g();
                return;
            default:
                return;
        }
    }

    protected final void a(int i) {
        int y = y();
        int min = Math.min(y, Math.max(-y, i));
        if (this.p) {
            if (min < 0) {
                this.s.setVisibility(0);
            } else if (min > 0) {
                this.t.setVisibility(0);
            } else {
                this.s.setVisibility(4);
                this.t.setVisibility(4);
            }
        }
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                scrollTo(min, 0);
                return;
            case 2:
                scrollTo(0, min);
                ((ESPullImageView) this.s.findViewById(C0000R.id.pull_to_refresh_image)).a((Math.abs(min) * 1.0d) / this.s.findViewById(C0000R.id.fl_inner).getHeight());
                return;
            default:
                return;
        }
    }

    protected final void a(int i, int i2) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.k.getLayoutParams();
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                if (layoutParams.width != i) {
                    layoutParams.width = i;
                    this.k.requestLayout();
                    return;
                }
                return;
            case 2:
                if (layoutParams.height != i2) {
                    layoutParams.height = i2;
                    this.k.requestLayout();
                    return;
                }
                return;
            default:
                return;
        }
    }

    protected final void a(int i, l lVar) {
        a(i, r(), 0L, lVar);
    }

    protected void a(TypedArray typedArray) {
    }

    protected void a(Bundle bundle) {
    }

    protected final void a(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
    }

    protected final void a(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, -1, layoutParams);
    }

    public final void a(Mode mode) {
        if (mode != this.i) {
            this.i = mode;
            f();
        }
    }

    final void a(State state, boolean... zArr) {
        this.h = state;
        switch (g.f3284b[this.h.ordinal()]) {
            case 1:
                c();
                break;
            case 2:
                a();
                break;
            case 3:
                b();
                break;
            case 4:
            case 5:
                b(zArr[0]);
                break;
        }
        if (this.w != null) {
            this.w.a(this, this.h, this.j);
        }
    }

    public final void a(k<T> kVar) {
        this.v = kVar;
        this.u = null;
    }

    public void a(CharSequence charSequence) {
        h().a(charSequence);
    }

    public void a(CharSequence charSequence, Mode mode) {
        a(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).c(charSequence);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        T j = j();
        if (!(j instanceof ViewGroup)) {
            throw new UnsupportedOperationException("Refreshable View is not a ViewGroup so can't addView");
        }
        ((ViewGroup) j).addView(view, i, layoutParams);
    }

    protected b b(boolean z, boolean z2) {
        b bVar = new b();
        if (z && this.i.showHeaderLoadingLayout()) {
            bVar.a(this.s);
        }
        if (z2 && this.i.showFooterLoadingLayout()) {
            bVar.a(this.t);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        switch (g.c[this.j.ordinal()]) {
            case 1:
                this.t.i();
                return;
            case 2:
                this.s.i();
                return;
            default:
                return;
        }
    }

    protected final void b(int i) {
        a(i, r());
    }

    protected void b(Bundle bundle) {
    }

    public void b(CharSequence charSequence) {
        h().b(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z) {
        if (this.i.showHeaderLoadingLayout()) {
            this.s.h();
        }
        if (this.i.showFooterLoadingLayout()) {
            this.t.h();
        }
        if (!z) {
            u();
            return;
        }
        if (!this.l) {
            b(0);
            return;
        }
        e eVar = new e(this);
        switch (g.c[this.j.ordinal()]) {
            case 1:
            case 3:
                a(p(), eVar);
                return;
            case 2:
            default:
                a(-q(), eVar);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        this.g = false;
        this.p = true;
        this.s.j();
        this.t.j();
        b(0);
    }

    public void c(CharSequence charSequence) {
        a(charSequence, Mode.BOTH);
    }

    protected abstract boolean d();

    protected abstract boolean e();

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        LinearLayout.LayoutParams x = x();
        if (this == this.s.getParent()) {
            removeView(this.s);
        }
        if (this.i.showHeaderLoadingLayout()) {
            a(this.s, 0, x);
        }
        if (this == this.t.getParent()) {
            removeView(this.t);
        }
        if (this.i.showFooterLoadingLayout()) {
            a(this.t, x);
        }
        t();
        this.j = this.i != Mode.BOTH ? this.i : Mode.PULL_FROM_START;
    }

    public final Mode g() {
        return this.j;
    }

    public final a h() {
        return a(true, true);
    }

    public final Mode i() {
        return this.i;
    }

    public final T j() {
        return this.f3270a;
    }

    public final boolean k() {
        return this.i.permitsPullToRefresh();
    }

    public final boolean l() {
        return Build.VERSION.SDK_INT >= 9 && this.o && c.a(this.f3270a);
    }

    public final boolean m() {
        return this.h == State.REFRESHING || this.h == State.MANUAL_REFRESHING;
    }

    public final void n() {
        if (m()) {
            a(State.RESET, new boolean[0]);
        }
    }

    public abstract Orientation o();

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        if (!k()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.g = false;
            return false;
        }
        if (action != 0 && this.g) {
            return true;
        }
        switch (action) {
            case 0:
                if (v()) {
                    float y = motionEvent.getY();
                    this.f = y;
                    this.d = y;
                    float x = motionEvent.getX();
                    this.e = x;
                    this.c = x;
                    this.g = false;
                    break;
                }
                break;
            case 2:
                if (!this.m && m()) {
                    return true;
                }
                if (v()) {
                    float y2 = motionEvent.getY();
                    float x2 = motionEvent.getX();
                    switch (g.f3283a[o().ordinal()]) {
                        case 1:
                            f = x2 - this.c;
                            f2 = y2 - this.d;
                            break;
                        default:
                            f = y2 - this.d;
                            f2 = x2 - this.c;
                            break;
                    }
                    float abs = Math.abs(f);
                    if (abs > this.f3271b && (!this.n || abs > Math.abs(f2))) {
                        if (!this.i.showHeaderLoadingLayout() || f < 1.0f || !d()) {
                            if (this.i.showFooterLoadingLayout() && f <= -1.0f && e()) {
                                this.d = y2;
                                this.c = x2;
                                this.g = true;
                                if (this.i == Mode.BOTH) {
                                    this.j = Mode.PULL_FROM_END;
                                    break;
                                }
                            }
                        } else {
                            this.d = y2;
                            this.c = x2;
                            this.g = true;
                            if (this.i == Mode.BOTH) {
                                this.j = Mode.PULL_FROM_START;
                                break;
                            }
                        }
                    }
                }
                break;
        }
        return this.g;
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        a(Mode.mapIntToValue(bundle.getInt("ptr_mode", 0)));
        this.j = Mode.mapIntToValue(bundle.getInt("ptr_current_mode", 0));
        this.m = bundle.getBoolean("ptr_disable_scrolling", false);
        this.l = bundle.getBoolean("ptr_show_refreshing_view", true);
        super.onRestoreInstanceState(bundle.getParcelable("ptr_super"));
        State mapIntToValue = State.mapIntToValue(bundle.getInt("ptr_state", 0));
        if (mapIntToValue == State.REFRESHING || mapIntToValue == State.MANUAL_REFRESHING) {
            a(mapIntToValue, true);
        }
        a(bundle);
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        b(bundle);
        bundle.putInt("ptr_state", this.h.getIntValue());
        bundle.putInt("ptr_mode", this.i.getIntValue());
        bundle.putInt("ptr_current_mode", this.j.getIntValue());
        bundle.putBoolean("ptr_disable_scrolling", this.m);
        bundle.putBoolean("ptr_show_refreshing_view", this.l);
        bundle.putParcelable("ptr_super", super.onSaveInstanceState());
        return bundle;
    }

    @Override // android.view.View
    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        t();
        a(i, i2);
        post(new f(this));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!k()) {
            return false;
        }
        if (!this.m && m()) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                if (!v()) {
                    return false;
                }
                float y = motionEvent.getY();
                this.f = y;
                this.d = y;
                float x = motionEvent.getX();
                this.e = x;
                this.c = x;
                return true;
            case 1:
            case 3:
                if (!this.g) {
                    return false;
                }
                this.g = false;
                if (this.h == State.RELEASE_TO_REFRESH && (this.u != null || this.v != null)) {
                    a(State.REFRESHING, true);
                    return true;
                }
                if (m()) {
                    b(0);
                    return true;
                }
                a(State.RESET, new boolean[0]);
                return true;
            case 2:
                if (!this.g) {
                    return false;
                }
                this.d = motionEvent.getY();
                this.c = motionEvent.getX();
                w();
                return true;
            default:
                return false;
        }
    }

    protected final int p() {
        return this.t.f();
    }

    protected final int q() {
        return this.s.f();
    }

    protected int r() {
        return 200;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FrameLayout s() {
        return this.k;
    }

    @Override // android.view.View
    public void setLongClickable(boolean z) {
        j().setLongClickable(z);
    }

    protected final void t() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        int y = (int) (y() * 1.2f);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        switch (g.f3283a[o().ordinal()]) {
            case 1:
                if (this.i.showHeaderLoadingLayout()) {
                    this.s.b(y);
                    i5 = -y;
                } else {
                    i5 = 0;
                }
                if (!this.i.showFooterLoadingLayout()) {
                    i4 = i5;
                    i3 = 0;
                    i6 = paddingBottom;
                    i2 = paddingTop;
                    break;
                } else {
                    this.t.b(y);
                    i4 = i5;
                    i3 = -y;
                    i6 = paddingBottom;
                    i2 = paddingTop;
                    break;
                }
            case 2:
                if (this.i.showHeaderLoadingLayout()) {
                    this.s.a(y);
                    i = -y;
                } else {
                    i = 0;
                }
                if (!this.i.showFooterLoadingLayout()) {
                    i2 = i;
                    i3 = paddingRight;
                    i4 = paddingLeft;
                    break;
                } else {
                    this.t.a(y);
                    i6 = -y;
                    i2 = i;
                    i3 = paddingRight;
                    i4 = paddingLeft;
                    break;
                }
            default:
                i6 = paddingBottom;
                i3 = paddingRight;
                i2 = paddingTop;
                i4 = paddingLeft;
                break;
        }
        setPadding(i4, i2, i3, i6);
    }
}
