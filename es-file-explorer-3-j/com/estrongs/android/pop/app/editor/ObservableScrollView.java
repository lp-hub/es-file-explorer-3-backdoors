package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class ObservableScrollView extends ScrollView {

    /* renamed from: a, reason: collision with root package name */
    private f f714a;

    /* renamed from: b, reason: collision with root package name */
    private Runnable f715b;
    private int c;
    private int d;
    private Object e;
    private boolean f;

    public ObservableScrollView(Context context) {
        super(context);
        this.f714a = null;
        this.d = 500;
        this.e = new Object();
        this.f = false;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f714a = null;
        this.d = 500;
        this.e = new Object();
        this.f = false;
        this.f715b = new e(this);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f714a = null;
        this.d = 500;
        this.e = new Object();
        this.f = false;
    }

    public void a() {
        synchronized (this.e) {
            if (!this.f) {
                this.c = getScrollY();
                postDelayed(this.f715b, this.d);
                this.f = true;
            }
        }
    }

    public void a(f fVar) {
        this.f714a = fVar;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.f714a != null) {
            this.f714a.a(this, i, i2, i3, i4);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (IllegalArgumentException e) {
            return false;
        }
    }
}
