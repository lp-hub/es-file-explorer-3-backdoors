package com.estrongs.android.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ContentViewSwitcher extends RealViewSwitcher implements com.estrongs.android.ui.drag.i, com.estrongs.android.ui.drag.j {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.ui.drag.d f2862a;

    /* renamed from: b, reason: collision with root package name */
    protected List<com.estrongs.android.view.ar> f2863b;
    private int i;
    private boolean j;

    public ContentViewSwitcher(Context context) {
        this(context, null);
    }

    public ContentViewSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2863b = new ArrayList();
        this.j = false;
        this.i = com.estrongs.android.ui.d.a.a(context, 10.0f);
    }

    @Override // com.estrongs.android.ui.drag.i
    public void a() {
    }

    @Override // com.estrongs.android.widget.RealViewSwitcher
    public void a(int i) {
        super.a(i);
        com.estrongs.android.ui.d.e.a(this.e);
    }

    @Override // com.estrongs.android.ui.drag.j
    public void a(View view, boolean z) {
    }

    public void a(com.estrongs.android.ui.drag.d dVar) {
        this.f2862a = dVar;
    }

    public void a(com.estrongs.fs.g gVar, com.estrongs.android.view.ar arVar, boolean z) {
        this.f2862a.a(gVar, arVar, this, com.estrongs.android.ui.drag.d.f1947a, z);
    }

    public void a(List<com.estrongs.android.view.ar> list) {
        this.f2863b = list;
    }

    public void a(boolean z) {
        this.j = z;
    }

    @Override // com.estrongs.android.ui.drag.i
    public void b() {
    }

    @Override // com.estrongs.android.widget.RealViewSwitcher
    public void b(int i) {
        if (getChildCount() == 0) {
            return;
        }
        com.estrongs.android.ui.d.e.a((getChildCount() + i) % getChildCount());
        super.b(i);
    }

    @Override // com.estrongs.android.ui.drag.i
    @TargetApi(8)
    public void c() {
        this.f2863b.get(this.e).D().smoothScrollBy(-this.i, 50);
    }

    @Override // com.estrongs.android.ui.drag.i
    @TargetApi(8)
    public void d() {
        this.f2863b.get(this.e).D().smoothScrollBy(this.i, 50);
    }

    @Override // com.estrongs.android.ui.drag.i
    public Rect e() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], iArr[0] + getMeasuredWidth(), iArr[1] + getMeasuredHeight());
    }

    public boolean f() {
        return this.j;
    }

    @Override // com.estrongs.android.widget.RealViewSwitcher, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.j) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.estrongs.android.widget.RealViewSwitcher, android.widget.ViewAnimator, android.view.ViewGroup
    public void removeViewAt(int i) {
        super.removeViewAt(i);
        int i2 = this.e;
        if (i <= this.e) {
            i2--;
        }
        if (getChildCount() == 1) {
            i2 = 0;
        }
        a(i2);
    }
}
