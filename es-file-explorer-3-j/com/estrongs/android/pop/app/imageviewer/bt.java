package com.estrongs.android.pop.app.imageviewer;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
class bt implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f988a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(ViewImage21 viewImage21) {
        this.f988a = viewImage21;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean h;
        h = this.f988a.h();
        if (!h) {
            return false;
        }
        this.f988a.k();
        return false;
    }
}
