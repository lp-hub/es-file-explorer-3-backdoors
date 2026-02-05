package com.estrongs.android.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ViewFlipper;

/* loaded from: classes.dex */
public class ESViewFlipper extends ViewFlipper {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2575a = ESViewFlipper.class.getSimpleName();

    public ESViewFlipper(Context context) {
        super(context);
    }

    public ESViewFlipper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ViewFlipper, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e) {
            stopFlipping();
        }
    }
}
