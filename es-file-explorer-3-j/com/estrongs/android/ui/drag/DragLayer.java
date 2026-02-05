package com.estrongs.android.ui.drag;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class DragLayer extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    d f1938a;

    public DragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(d dVar) {
        this.f1938a = dVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f1938a != null ? this.f1938a.a(keyEvent) || super.dispatchKeyEvent(keyEvent) : super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        return this.f1938a != null ? this.f1938a.a(view, i) : super.dispatchUnhandledMove(view, i);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1938a != null ? this.f1938a.a(motionEvent) : super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f1938a != null ? this.f1938a.b(motionEvent) : super.onTouchEvent(motionEvent);
    }
}
