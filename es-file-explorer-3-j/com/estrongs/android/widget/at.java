package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class at extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ap f2898a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public at(ap apVar, Context context) {
        super(context);
        this.f2898a = apVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            this.f2898a.f();
            return true;
        }
        if (keyEvent.getAction() != 1 || keyEvent.isCanceled()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        this.f2898a.f();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener;
        View.OnTouchListener onTouchListener2;
        onTouchListener = this.f2898a.o;
        if (onTouchListener != null) {
            onTouchListener2 = this.f2898a.o;
            if (onTouchListener2.onTouch(this, motionEvent)) {
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        View view;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() != 0) {
            if (motionEvent.getAction() != 4) {
                return super.onTouchEvent(motionEvent);
            }
            this.f2898a.f();
            return true;
        }
        Rect rect = new Rect();
        view = this.f2898a.h;
        view.getGlobalVisibleRect(rect);
        if (rect.contains(x, y)) {
            return true;
        }
        this.f2898a.f();
        return true;
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i) {
        View view;
        View view2;
        view = this.f2898a.h;
        if (view == null) {
            super.sendAccessibilityEvent(i);
        } else {
            view2 = this.f2898a.h;
            view2.sendAccessibilityEvent(i);
        }
    }
}
