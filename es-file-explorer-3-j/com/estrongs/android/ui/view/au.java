package com.estrongs.android.ui.view;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopMultiWindowGrid f2618a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(PopMultiWindowGrid popMultiWindowGrid) {
        this.f2618a = popMultiWindowGrid;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        int action = motionEvent.getAction();
        if (action == 0) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.2f);
            float[] array = colorMatrix.getArray();
            float f = -77;
            array[14] = f;
            array[9] = f;
            array[4] = f;
            colorMatrix.set(array);
            imageView3 = this.f2618a.f2585b;
            imageView3.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            return false;
        }
        if (action == 2) {
            return false;
        }
        if (action == 3) {
            imageView2 = this.f2618a.f2585b;
            imageView2.clearColorFilter();
            return false;
        }
        if (action != 1) {
            return false;
        }
        imageView = this.f2618a.f2585b;
        imageView.clearColorFilter();
        return false;
    }
}
