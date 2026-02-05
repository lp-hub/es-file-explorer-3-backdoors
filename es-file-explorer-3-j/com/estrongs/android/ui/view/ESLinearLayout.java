package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class ESLinearLayout extends LinearLayout {
    public ESLinearLayout(Context context) {
        super(context);
    }

    public ESLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @SuppressLint({"NewApi"})
    public ESLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        try {
            super.dispatchDraw(canvas);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
