package com.estrongs.android.pop.app;

import android.annotation.TargetApi;
import android.graphics.PointF;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;

@TargetApi(8)
/* loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    private View.OnTouchListener f383a;

    /* renamed from: b, reason: collision with root package name */
    private int f384b = -1;
    private float c = 0.0f;
    private boolean d = false;
    private PointF e;
    private PointF f;

    public a(View.OnTouchListener onTouchListener) {
        this.f383a = onTouchListener;
    }

    private float a(PointF pointF, PointF pointF2) {
        return pointF.x == pointF2.x ? pointF.y > pointF2.y ? 90.0f : -90.0f : (float) ((Math.atan((pointF.y - pointF2.y) / (pointF.x - pointF2.x)) * 180.0d) / 3.141592653589793d);
    }

    private boolean b(PointF pointF, PointF pointF2) {
        return Math.abs(a(pointF, pointF2)) >= 45.0f;
    }

    public abstract boolean a();

    public abstract void b();

    public abstract void c();

    public boolean d() {
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (a()) {
            int action = motionEvent.getAction();
            int pointerCount = motionEvent.getPointerCount();
            if (pointerCount == 1) {
                this.d = false;
                this.c = 0.0f;
                if (action == 0 || action == 2) {
                    this.f384b = 1;
                }
                if (this.f383a != null) {
                    return this.f383a.onTouch(view, motionEvent);
                }
            } else if (pointerCount == 2) {
                float x = motionEvent.getX(0) - motionEvent.getX(1);
                float y = motionEvent.getY(0) - motionEvent.getY(1);
                float sqrt = FloatMath.sqrt((x * x) + (y * y));
                if (action == 261) {
                    this.e = new PointF(motionEvent.getX(0), motionEvent.getY(0));
                    this.f = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                    this.d = false;
                    this.c = sqrt;
                    motionEvent.setAction(3);
                    view.onTouchEvent(motionEvent);
                    return true;
                }
                try {
                    if (0.0f == this.c) {
                        this.c = sqrt;
                    }
                    if (!b(this.e, this.f)) {
                        return true;
                    }
                    this.f384b = 2;
                    if (sqrt - this.c > 40.0f) {
                        if (this.d) {
                            return true;
                        }
                        c();
                        this.d = true;
                        return true;
                    }
                    if (this.c - sqrt <= 40.0f || this.d) {
                        return true;
                    }
                    b();
                    this.d = true;
                    return true;
                } catch (Exception e) {
                    return true;
                }
            }
            if (this.f384b == 2) {
                return true;
            }
        }
        return d();
    }
}
