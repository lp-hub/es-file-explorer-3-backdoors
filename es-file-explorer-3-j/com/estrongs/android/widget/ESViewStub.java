package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ESViewStub extends View {

    /* renamed from: a, reason: collision with root package name */
    protected Context f2864a;

    /* renamed from: b, reason: collision with root package name */
    protected int f2865b;
    private int c;
    private int d;
    private WeakReference<View> e;
    private LayoutInflater f;
    private b g;

    public ESViewStub(Context context) {
        super(context);
        this.c = 0;
        this.f2865b = 0;
        a(context);
    }

    public ESViewStub(Context context, int i) {
        super(context);
        this.c = 0;
        this.f2865b = 0;
        this.c = i;
        a(context);
    }

    public ESViewStub(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ESViewStub(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 0;
        this.f2865b = 0;
        a(context);
    }

    private void a(Context context) {
        this.f2864a = context;
        setVisibility(8);
        setWillNotDraw(true);
    }

    public View a() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.c == 0) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        View inflate = (this.f != null ? this.f : LayoutInflater.from(this.f2864a)).inflate(this.c, viewGroup, false);
        if (this.d != -1) {
            inflate.setId(this.d);
        }
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(inflate, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(inflate, indexOfChild);
        }
        this.e = new WeakReference<>(inflate);
        if (this.g != null) {
            this.g.a(this, inflate);
        }
        return inflate;
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(LayoutInflater layoutInflater) {
        this.f = layoutInflater;
    }

    public void b(int i) {
        this.c = i;
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (this.e != null) {
            View view = this.e.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            a();
        }
    }
}
