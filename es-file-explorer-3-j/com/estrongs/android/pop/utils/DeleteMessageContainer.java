package com.estrongs.android.pop.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
class DeleteMessageContainer extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private int f1169a;

    /* renamed from: b, reason: collision with root package name */
    private int f1170b;
    private boolean c;
    private Context d;

    public DeleteMessageContainer(Context context) {
        super(context);
        this.f1169a = 0;
        this.c = false;
        this.d = null;
        this.d = context;
        this.f1170b = ((Activity) context).getWindowManager().getDefaultDisplay().getWidth();
    }

    public DeleteMessageContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1169a = 0;
        this.c = false;
        this.d = null;
        this.d = context;
        this.f1170b = ((Activity) context).getWindowManager().getDefaultDisplay().getWidth();
    }

    @SuppressLint({"NewApi"})
    public DeleteMessageContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1169a = 0;
        this.c = false;
        this.d = null;
        this.d = context;
        this.f1170b = ((Activity) context).getWindowManager().getDefaultDisplay().getWidth();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View childAt = getChildAt(0);
        super.onMeasure(i, i2);
        if (childAt == null) {
            setMeasuredDimension(this.f1170b, this.f1169a);
            return;
        }
        int measuredHeight = childAt.getMeasuredHeight();
        int measuredWidth = childAt.getMeasuredWidth();
        View childAt2 = getChildAt(1);
        int measuredHeight2 = childAt2 != null ? measuredHeight + childAt2.getMeasuredHeight() : measuredHeight;
        if (this.f1169a < measuredHeight2) {
            this.f1169a = measuredHeight2;
        }
        if (!this.c || this.f1170b == ((Activity) this.d).getWindowManager().getDefaultDisplay().getWidth()) {
            setMeasuredDimension(measuredWidth, this.f1169a);
        } else {
            setMeasuredDimension(measuredWidth, measuredHeight2);
        }
    }
}
