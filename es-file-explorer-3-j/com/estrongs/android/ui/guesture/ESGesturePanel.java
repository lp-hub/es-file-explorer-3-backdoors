package com.estrongs.android.ui.guesture;

import android.annotation.SuppressLint;
import android.content.Context;
import android.gesture.Gesture;
import android.gesture.GesturePoint;
import android.gesture.GestureStroke;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.p;
import com.estrongs.android.pop.q;
import java.util.ArrayList;
import java.util.LinkedList;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class ESGesturePanel extends View {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2231a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f2232b;
    private LinkedList<PointF> c;
    private Paint d;
    private Paint e;
    private Bitmap f;
    private int g;
    private Bitmap h;
    private int i;
    private ArrayList<GesturePoint> j;
    private Gesture k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private Paint q;
    private Path r;
    private c s;

    public ESGesturePanel(Context context) {
        super(context);
        this.f2232b = false;
        this.f2231a = false;
        this.c = new LinkedList<>();
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = 32;
        this.h = null;
        this.i = 32;
        this.j = null;
        this.k = null;
        this.l = 1493211874;
        this.m = -1;
        this.n = -1;
        this.q = new Paint();
        this.r = new Path();
    }

    public ESGesturePanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2232b = false;
        this.f2231a = false;
        this.c = new LinkedList<>();
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = 32;
        this.h = null;
        this.i = 32;
        this.j = null;
        this.k = null;
        this.l = 1493211874;
        this.m = -1;
        this.n = -1;
        this.q = new Paint();
        this.r = new Path();
    }

    public ESGesturePanel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2232b = false;
        this.f2231a = false;
        this.c = new LinkedList<>();
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = 32;
        this.h = null;
        this.i = 32;
        this.j = null;
        this.k = null;
        this.l = 1493211874;
        this.m = -1;
        this.n = -1;
        this.q = new Paint();
        this.r = new Path();
    }

    public void a() {
        this.f2232b = true;
        if (this.m == -1) {
            DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
            int min = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
            this.m = min / 36;
            this.n = min / 24;
        }
        invalidate();
    }

    public void a(float f, float f2) {
        synchronized (this.c) {
            this.c.add(new PointF(f, f2));
        }
    }

    public void a(int i, int i2) {
        this.o = i;
        this.p = i2;
        invalidate();
    }

    public void a(c cVar) {
        this.s = cVar;
    }

    public void b() {
        this.f2232b = false;
        synchronized (this.c) {
            this.c.clear();
        }
        invalidate();
    }

    public void c() {
        Point t = q.a(getContext()).t(getContext().getResources().getConfiguration().orientation == 1);
        if (t == null) {
            a(-1, -1);
        } else {
            a(t.x, t.y);
        }
    }

    public int d() {
        return this.o;
    }

    public int e() {
        return this.p;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        PointF[] pointFArr;
        super.onDraw(canvas);
        if (!this.f2232b) {
            if (!this.f2231a && b.c() && b.f2234a) {
                try {
                    if (this.f == null) {
                        this.f = BitmapFactory.decodeResource(getResources(), C0000R.drawable.gesture_button);
                        this.g = this.f.getWidth() / 2;
                        ESGestureCtrl.f2229b = this.g;
                        c();
                    }
                    if (this.o == -1) {
                        this.o = getWidth() / 2;
                    }
                    if (this.p == -1) {
                        this.p = getHeight() / 2;
                    }
                    canvas.drawBitmap(this.f, this.o - this.g, this.p - this.g, this.q);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            return;
        }
        synchronized (this.c) {
            pointFArr = new PointF[this.c.size()];
            this.c.toArray(pointFArr);
        }
        if (pointFArr != null && pointFArr.length > 1) {
            if (this.d == null) {
                this.d = new Paint();
                this.d.setStrokeWidth(this.m);
                this.d.setColor(this.l);
                this.d.setAntiAlias(true);
                this.d.setDither(true);
                this.d.setStrokeCap(Paint.Cap.ROUND);
                this.d.setStrokeJoin(Paint.Join.ROUND);
                this.d.setStyle(Paint.Style.STROKE);
                this.e = new Paint();
                this.e.setAntiAlias(true);
                this.e.setDither(true);
                this.e.setStyle(Paint.Style.FILL);
                this.e.setColor(this.l);
            }
            PointF pointF = pointFArr[0];
            if (this.f2231a) {
                canvas.drawCircle(pointF.x, pointF.y, this.n, this.e);
            }
            this.r.reset();
            this.r.moveTo(pointF.x, pointF.y);
            for (int i = 1; i < pointFArr.length; i++) {
                this.r.lineTo(pointFArr[i].x, pointFArr[i].y);
            }
            canvas.drawPath(this.r, this.d);
        }
        if (this.f2231a) {
            return;
        }
        try {
            if (this.h == null) {
                this.h = BitmapFactory.decodeResource(getResources(), C0000R.drawable.gesture_button_click);
                this.i = this.h.getWidth() / 2;
                c();
            }
            if (this.o == -1) {
                this.o = getWidth() / 2;
            }
            if (this.p == -1) {
                this.p = getHeight() / 2;
            }
            canvas.drawBitmap(this.h, this.o - this.i, this.p - this.i, this.q);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f2231a) {
            return super.onTouchEvent(motionEvent);
        }
        int i = 0;
        if (p.a() >= 8) {
            try {
                i = motionEvent.getActionIndex();
            } catch (Exception e) {
            }
        }
        if (i != 0) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                if (this.j != null) {
                    this.j.clear();
                } else {
                    this.j = new ArrayList<>();
                }
                b();
                this.k = null;
                a(motionEvent.getX(), motionEvent.getY());
                this.j.add(new GesturePoint(motionEvent.getX(), motionEvent.getY(), System.currentTimeMillis()));
                break;
            case 1:
                this.j.add(new GesturePoint(motionEvent.getX(), motionEvent.getY(), System.currentTimeMillis()));
                this.k = new Gesture();
                this.k.addStroke(new GestureStroke(this.j));
                if (this.s != null) {
                    this.s.a(this.k);
                    break;
                }
                break;
            case 2:
                a(motionEvent.getX(), motionEvent.getY());
                a();
                this.j.add(new GesturePoint(motionEvent.getX(), motionEvent.getY(), System.currentTimeMillis()));
                break;
            case 3:
                b();
                this.j.clear();
                this.k = null;
                break;
        }
        return true;
    }
}
