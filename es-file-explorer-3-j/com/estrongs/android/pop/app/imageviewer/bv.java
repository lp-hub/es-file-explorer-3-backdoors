package com.estrongs.android.pop.app.imageviewer;

import android.view.GestureDetector;
import android.view.MotionEvent;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class bv extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a, reason: collision with root package name */
    float f991a = 1.2f;

    /* renamed from: b, reason: collision with root package name */
    int f992b = FTPReply.SERVICE_NOT_READY;
    int c = 200;
    final /* synthetic */ ViewImage21 d;

    /* JADX INFO: Access modifiers changed from: protected */
    public bv(ViewImage21 viewImage21) {
        this.d = viewImage21;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        boolean h;
        if (this.d.f929a) {
            return false;
        }
        h = this.d.h();
        if (h) {
            this.d.k();
            return true;
        }
        ImageViewTouch imageViewTouch = this.d.g;
        if (imageViewTouch == null) {
            return false;
        }
        if (imageViewTouch.a() < 1.0f) {
            return true;
        }
        if (imageViewTouch.c() > 1.0f) {
            this.d.g.a(1.0f);
        } else {
            this.d.g.b(3.0f, motionEvent.getX(), motionEvent.getY());
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        boolean h;
        if (this.d.f929a) {
            return false;
        }
        h = this.d.h();
        if (h) {
            this.d.k();
            return true;
        }
        ImageViewTouch imageViewTouch = this.d.g;
        if (imageViewTouch == null || imageViewTouch.c() <= 1.0f) {
            return true;
        }
        imageViewTouch.b(-f, -f2);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        boolean h;
        boolean z;
        int i;
        if (this.d.f929a) {
            return false;
        }
        h = this.d.h();
        if (h) {
            this.d.k();
            return true;
        }
        z = this.d.t;
        if (z) {
            this.d.e();
            return true;
        }
        i = this.d.u;
        if (i == 2) {
            this.d.d();
        } else {
            this.d.f();
        }
        this.d.a();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return !this.d.f929a;
    }
}
