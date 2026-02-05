package com.estrongs.android.pop.app.imageviewer;

import android.view.MotionEvent;

/* loaded from: classes.dex */
class bm implements ak {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MotionEvent f977a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bl f978b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(bl blVar, MotionEvent motionEvent) {
        this.f978b = blVar;
        this.f977a = motionEvent;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.ak
    public void a(int i, float f) {
        if ((i == 0 && f > 10.0f) || (i == 1 && f < -10.0f)) {
            this.f978b.d.i.onTouchEvent(this.f977a);
            this.f978b.f975a = true;
        }
        if ((this.f978b.d.c == 0 && i == 0) || (this.f978b.d.c == this.f978b.d.e.b() - 1 && i == 1)) {
            this.f978b.f975a = false;
        }
    }
}
