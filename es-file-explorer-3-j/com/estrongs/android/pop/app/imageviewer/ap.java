package com.estrongs.android.pop.app.imageviewer;

import android.view.ScaleGestureDetector;

/* loaded from: classes.dex */
public class ap extends ScaleGestureDetector.SimpleOnScaleGestureListener {

    /* renamed from: a, reason: collision with root package name */
    float f947a = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ViewImage f948b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ap(ViewImage viewImage) {
        this.f948b = viewImage;
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        ImageViewTouch imageViewTouch = this.f948b.g;
        if (imageViewTouch.a() >= 1.0f) {
            this.f947a *= scaleGestureDetector.getScaleFactor();
            if (this.f947a - imageViewTouch.h() < 0.0f) {
                this.f947a = imageViewTouch.h();
            }
            if (this.f947a - 3.0f > 0.0f) {
                this.f947a = 3.0f;
            }
            imageViewTouch.a(this.f947a);
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.f947a = this.f948b.g.c();
        return true;
    }
}
