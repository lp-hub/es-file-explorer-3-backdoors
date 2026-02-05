package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Gallery;

/* loaded from: classes.dex */
public class ESGallery extends Gallery {

    /* renamed from: a, reason: collision with root package name */
    private m f917a;

    public ESGallery(Context context) {
        super(context);
    }

    public ESGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ESGallery(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a(m mVar) {
        this.f917a = mVar;
    }

    @Override // android.widget.Gallery, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.f917a != null) {
            this.f917a.a(2);
        }
        return super.onFling(motionEvent, motionEvent2, f, f2);
    }
}
