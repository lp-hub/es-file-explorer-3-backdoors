package com.estrongs.android.pop.app.imageviewer;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    boolean f975a = false;

    /* renamed from: b, reason: collision with root package name */
    ak f976b = null;
    final /* synthetic */ View.OnTouchListener c;
    final /* synthetic */ ViewImage21 d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(ViewImage21 viewImage21, View.OnTouchListener onTouchListener) {
        this.d = viewImage21;
        this.c = onTouchListener;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.c.onTouch(view, motionEvent);
        if (motionEvent.getPointerCount() > 1) {
            this.d.a(motionEvent);
        } else {
            if (this.d.g == null || this.d.g.c() <= this.d.g.h() || ((this.d.g.d() <= this.d.k.widthPixels && this.d.g.e() <= this.d.k.heightPixels) || this.f975a)) {
                this.d.i.onTouchEvent(motionEvent);
            } else {
                if (this.f976b == null) {
                    this.f976b = new bm(this, motionEvent);
                }
                this.d.g.a(this.f976b);
            }
            if (this.f975a && motionEvent.getAction() == 1) {
                this.d.i.g();
                this.f975a = false;
            }
            this.d.f.onTouchEvent(motionEvent);
        }
        return true;
    }
}
