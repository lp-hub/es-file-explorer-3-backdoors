package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class MaxWidthLinearLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private int f2578a;

    /* renamed from: b, reason: collision with root package name */
    private int f2579b;

    public MaxWidthLinearLayout(Context context) {
        super(context);
        this.f2578a = -1;
        this.f2579b = -1;
    }

    public MaxWidthLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2578a = -1;
        this.f2579b = -1;
    }

    @SuppressLint({"NewApi"})
    public MaxWidthLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2578a = -1;
        this.f2579b = -1;
    }

    public void a(int i) {
        this.f2578a = i;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getMeasuredWidth() > this.f2578a && this.f2578a > 0) {
            setMeasuredDimension(this.f2578a, getMeasuredHeight());
        }
        if (getMeasuredHeight() <= this.f2579b || this.f2579b <= 0) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), this.f2579b);
    }
}
