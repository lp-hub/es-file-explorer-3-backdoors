package com.estrongs.android.ui.drag;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.estrongs.android.view.ar;

/* loaded from: classes.dex */
public class DragPanel extends LinearLayout implements i, j {

    /* renamed from: a, reason: collision with root package name */
    d f1939a;

    /* renamed from: b, reason: collision with root package name */
    protected ar f1940b;
    private int c;

    public DragPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = com.estrongs.android.ui.d.a.a(context, 10.0f);
    }

    @SuppressLint({"NewApi"})
    public DragPanel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = com.estrongs.android.ui.d.a.a(context, 10.0f);
    }

    @Override // com.estrongs.android.ui.drag.i
    public void a() {
    }

    @Override // com.estrongs.android.ui.drag.j
    public void a(View view, boolean z) {
    }

    @Override // com.estrongs.android.ui.drag.i
    public void b() {
    }

    @Override // com.estrongs.android.ui.drag.i
    @TargetApi(8)
    public void c() {
        this.f1940b.D().smoothScrollBy(-this.c, 50);
    }

    @Override // com.estrongs.android.ui.drag.i
    @TargetApi(8)
    public void d() {
        this.f1940b.D().smoothScrollBy(this.c, 50);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f1939a != null ? this.f1939a.a(keyEvent) || super.dispatchKeyEvent(keyEvent) : super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        return this.f1939a != null ? this.f1939a.a(view, i) : super.dispatchUnhandledMove(view, i);
    }

    @Override // com.estrongs.android.ui.drag.i
    public Rect e() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], iArr[0] + getMeasuredWidth(), iArr[1] + getMeasuredHeight());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1939a != null ? this.f1939a.a(motionEvent) : super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f1939a != null ? this.f1939a.b(motionEvent) : super.onTouchEvent(motionEvent);
    }
}
