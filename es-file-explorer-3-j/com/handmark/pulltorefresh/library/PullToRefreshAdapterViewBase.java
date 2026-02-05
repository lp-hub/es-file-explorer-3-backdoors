package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

/* loaded from: classes.dex */
public abstract class PullToRefreshAdapterViewBase<T extends AbsListView> extends PullToRefreshBase<T> implements AbsListView.OnScrollListener {

    /* renamed from: b, reason: collision with root package name */
    private boolean f3269b;
    private AbsListView.OnScrollListener c;
    private h d;
    private View e;
    private com.handmark.pulltorefresh.library.a.c f;
    private com.handmark.pulltorefresh.library.a.c g;
    private boolean h;
    private boolean i;

    public PullToRefreshAdapterViewBase(Context context) {
        super(context);
        this.i = true;
        ((AbsListView) this.f3270a).setOnScrollListener(this);
    }

    public PullToRefreshAdapterViewBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = true;
        ((AbsListView) this.f3270a).setOnScrollListener(this);
    }

    public PullToRefreshAdapterViewBase(Context context, PullToRefreshBase.Mode mode) {
        super(context, mode);
        this.i = true;
        ((AbsListView) this.f3270a).setOnScrollListener(this);
    }

    public PullToRefreshAdapterViewBase(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.AnimationStyle animationStyle) {
        super(context, mode, animationStyle);
        this.i = true;
        ((AbsListView) this.f3270a).setOnScrollListener(this);
    }

    private static FrameLayout.LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        FrameLayout.LayoutParams layoutParams2 = null;
        if (layoutParams != null) {
            layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                layoutParams2.gravity = ((LinearLayout.LayoutParams) layoutParams).gravity;
            } else {
                layoutParams2.gravity = 17;
            }
        }
        return layoutParams2;
    }

    private void u() {
        PullToRefreshBase.Mode i = i();
        FrameLayout s = s();
        if (i.showHeaderLoadingLayout() && this.f == null) {
            this.f = new com.handmark.pulltorefresh.library.a.c(getContext(), PullToRefreshBase.Mode.PULL_FROM_START);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.rightMargin = getResources().getDimensionPixelSize(C0000R.dimen.indicator_right_padding);
            layoutParams.gravity = 53;
            s.addView(this.f, layoutParams);
        } else if (!i.showHeaderLoadingLayout() && this.f != null) {
            s.removeView(this.f);
            this.f = null;
        }
        if (i.showFooterLoadingLayout() && this.g == null) {
            this.g = new com.handmark.pulltorefresh.library.a.c(getContext(), PullToRefreshBase.Mode.PULL_FROM_END);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.rightMargin = getResources().getDimensionPixelSize(C0000R.dimen.indicator_right_padding);
            layoutParams2.gravity = 85;
            s.addView(this.g, layoutParams2);
            return;
        }
        if (i.showFooterLoadingLayout() || this.g == null) {
            return;
        }
        s.removeView(this.g);
        this.g = null;
    }

    private boolean v() {
        return this.h && k();
    }

    private boolean w() {
        View childAt;
        Adapter adapter = ((AbsListView) this.f3270a).getAdapter();
        if (adapter == null || adapter.isEmpty()) {
            return true;
        }
        if (((AbsListView) this.f3270a).getFirstVisiblePosition() > 1 || (childAt = ((AbsListView) this.f3270a).getChildAt(0)) == null) {
            return false;
        }
        return childAt.getTop() >= ((AbsListView) this.f3270a).getTop();
    }

    private boolean x() {
        Adapter adapter = ((AbsListView) this.f3270a).getAdapter();
        if (adapter == null || adapter.isEmpty()) {
            return true;
        }
        int count = ((AbsListView) this.f3270a).getCount() - 1;
        int lastVisiblePosition = ((AbsListView) this.f3270a).getLastVisiblePosition();
        if (lastVisiblePosition >= count - 1) {
            View childAt = ((AbsListView) this.f3270a).getChildAt(lastVisiblePosition - ((AbsListView) this.f3270a).getFirstVisiblePosition());
            if (childAt != null) {
                return childAt.getBottom() <= ((AbsListView) this.f3270a).getBottom();
            }
        }
        return false;
    }

    private void y() {
        if (this.f != null) {
            s().removeView(this.f);
            this.f = null;
        }
        if (this.g != null) {
            s().removeView(this.g);
            this.g = null;
        }
    }

    private void z() {
        if (this.f != null) {
            if (m() || !d()) {
                if (this.f.a()) {
                    this.f.b();
                }
            } else if (!this.f.a()) {
                this.f.c();
            }
        }
        if (this.g != null) {
            if (m() || !e()) {
                if (this.g.a()) {
                    this.g.b();
                }
            } else {
                if (this.g.a()) {
                    return;
                }
                this.g.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    public void a() {
        super.a();
        if (v()) {
            switch (d.f3280a[g().ordinal()]) {
                case 1:
                    this.g.e();
                    return;
                case 2:
                    this.f.e();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    protected void a(TypedArray typedArray) {
        this.h = typedArray.getBoolean(5, !l());
    }

    public final void a(View view) {
        FrameLayout s = s();
        if (view != null) {
            view.setClickable(true);
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(view);
            }
            FrameLayout.LayoutParams a2 = a(view.getLayoutParams());
            if (a2 != null) {
                s.addView(view, a2);
            } else {
                s.addView(view);
            }
        }
        if (this.f3270a instanceof com.handmark.pulltorefresh.library.a.a) {
            ((com.handmark.pulltorefresh.library.a.a) this.f3270a).a(view);
        } else {
            ((AbsListView) this.f3270a).setEmptyView(view);
        }
        this.e = view;
    }

    public void a(boolean z) {
        this.h = z;
        if (v()) {
            u();
        } else {
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    public void b() {
        super.b();
        if (v()) {
            switch (d.f3280a[g().ordinal()]) {
                case 1:
                    this.g.d();
                    return;
                case 2:
                    this.f.d();
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    public void b(boolean z) {
        super.b(z);
        if (v()) {
            z();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    public void c() {
        super.c();
        if (v()) {
            z();
        }
    }

    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    protected boolean d() {
        return w();
    }

    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    protected boolean e() {
        return x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    public void f() {
        super.f();
        if (v()) {
            u();
        } else {
            y();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.d != null) {
            this.f3269b = i3 > 0 && i + i2 >= i3 + (-1);
        }
        if (v()) {
            z();
        }
        if (this.c != null) {
            this.c.onScroll(absListView, i, i2, i3);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.e == null || this.i) {
            return;
        }
        this.e.scrollTo(-i, -i2);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 0 && this.d != null && this.f3269b) {
            this.d.a();
        }
        if (this.c != null) {
            this.c.onScrollStateChanged(absListView, i);
        }
    }
}
