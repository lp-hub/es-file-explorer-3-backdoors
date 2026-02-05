package com.estrongs.android.pop.app.imageviewer;

import android.annotation.TargetApi;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

@TargetApi(8)
/* loaded from: classes.dex */
public class ViewImage extends ViewImage21 {
    private ScaleGestureDetector r = null;

    @Override // com.estrongs.android.pop.app.imageviewer.ViewImage21
    protected void a(MotionEvent motionEvent) {
        if (this.r == null) {
            this.r = new ScaleGestureDetector(this, new ap(this));
        }
        this.r.onTouchEvent(motionEvent);
    }
}
