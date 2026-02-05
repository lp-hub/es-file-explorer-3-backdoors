package com.estrongs.android.view;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
class cy implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View.OnTouchListener f2830a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cs f2831b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy(cs csVar, View.OnTouchListener onTouchListener) {
        this.f2831b = csVar;
        this.f2830a = onTouchListener;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 1) {
            return this.f2830a.onTouch(view, motionEvent);
        }
        return false;
    }
}
