package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;

/* loaded from: classes.dex */
public class TranslateImageView extends ESImageView {

    /* renamed from: a, reason: collision with root package name */
    private Handler f2876a;

    /* renamed from: b, reason: collision with root package name */
    private Bitmap f2877b;
    private int c;
    private int d;
    private int e;
    private int f;
    private long g;
    private bn h;
    private bm i;
    private Rect j;
    private boolean k;
    private Runnable l;
    private Drawable m;
    private Drawable n;
    private Paint o;
    private ColorMatrixColorFilter p;
    private ColorMatrix q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private VelocityTracker w;

    public TranslateImageView(Context context) {
        super(context);
        this.f2876a = new Handler();
        this.f = 250;
        this.j = new Rect();
        this.k = false;
        a();
    }

    public TranslateImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2876a = new Handler();
        this.f = 250;
        this.j = new Rect();
        this.k = false;
        a();
    }

    public TranslateImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2876a = new Handler();
        this.f = 250;
        this.j = new Rect();
        this.k = false;
        a();
    }

    private void a() {
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.k = false;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.u = viewConfiguration.getScaledTouchSlop();
        this.v = viewConfiguration.getScaledMinimumFlingVelocity();
        this.l = new bl(this);
        this.m = getContext().getResources().getDrawable(C0000R.drawable.main_right_shadow);
        this.n = getContext().getResources().getDrawable(C0000R.drawable.main_left_shadow);
        this.o = new Paint();
        this.q = new ColorMatrix();
        this.p = new ColorMatrixColorFilter(this.q);
        this.o.setColorFilter(this.p);
    }

    private void b() {
        if (this.f == 0) {
            this.d = this.e;
            return;
        }
        int i = this.e - this.c;
        int currentTimeMillis = (int) (System.currentTimeMillis() - this.g);
        if (currentTimeMillis > this.f) {
            currentTimeMillis = this.f;
        }
        this.d = ((currentTimeMillis * i) / this.f) + this.c;
    }

    private Rect c() {
        if (this.d > 0) {
            this.j.set(this.d, 0, getRight(), getBottom());
        } else if (this.d < 0) {
            this.j.set(0, 0, getRight() + this.d, getBottom());
        } else {
            this.j.set(0, 0, getRight(), getBottom());
        }
        return this.j;
    }

    public void a(int i) {
        this.e = i;
    }

    public void a(int i, int i2) {
        if (this.k) {
            return;
        }
        this.e = i;
        this.f = i2;
        this.k = true;
        this.g = System.currentTimeMillis();
        this.f2876a.post(this.l);
        invalidate();
    }

    public void a(Bitmap bitmap) {
        this.f2877b = bitmap;
        postInvalidate();
    }

    public void a(bm bmVar) {
        this.i = bmVar;
    }

    public void a(bn bnVar) {
        this.h = bnVar;
    }

    public void b(int i) {
        this.f = i;
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int i = 0;
        super.dispatchDraw(canvas);
        canvas.save();
        try {
            if (this.k) {
                b();
            }
            int width = this.f2877b.getWidth();
            if (this.d > 0) {
                i = this.d - this.m.getIntrinsicWidth() < 0 ? this.d : this.m.getIntrinsicWidth();
            } else if (this.d < 0) {
                i = this.d + this.n.getIntrinsicWidth() < 0 ? 0 - this.n.getIntrinsicWidth() : this.d;
            }
            int abs = 0 - Math.abs((this.d * 80) / width);
            float[] array = this.q.getArray();
            float f = abs;
            array[14] = f;
            array[9] = f;
            array[4] = f;
            this.q.set(array);
            this.p = new ColorMatrixColorFilter(this.q);
            this.o.setColorFilter(this.p);
            canvas.translate(this.d - i, 0.0f);
            if (this.d > 0) {
                canvas.drawBitmap(this.f2877b, i, 0.0f, this.o);
                this.m.setBounds(i - this.m.getIntrinsicWidth(), 0, i, getMeasuredHeight());
                this.m.draw(canvas);
            } else if (this.d < 0) {
                canvas.drawBitmap(this.f2877b, i, 0.0f, this.o);
                this.n.setBounds(width + i, 0, i + width + this.n.getIntrinsicWidth(), getMeasuredHeight());
                this.n.draw(canvas);
            } else {
                canvas.drawBitmap(this.f2877b, i, 0.0f, this.o);
            }
        } catch (Throwable th) {
        }
        canvas.restore();
        if (this.k) {
            this.f2876a.post(this.l);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                if (!c().contains(x, y)) {
                    return false;
                }
                this.s = x;
                this.t = y;
                this.w = VelocityTracker.obtain();
                this.w.addMovement(motionEvent);
                return super.onTouchEvent(motionEvent);
            case 1:
            case 3:
                if (this.r == -1) {
                    if (((int) Math.sqrt(((x - this.s) * (x - this.s)) + ((y - this.t) * (y - this.t)))) > this.u) {
                        this.r = 0;
                    }
                }
                if (this.r == 0) {
                    this.w.computeCurrentVelocity(100);
                    int xVelocity = (int) this.w.getXVelocity();
                    if (this.e > 0) {
                        if (this.d >= this.e) {
                            this.h = null;
                            int i = ((this.d - this.e) * 250) / this.e;
                            this.c = this.d;
                            a(this.e, i);
                        } else if (xVelocity <= 0 || xVelocity <= this.v) {
                            this.h = null;
                            int i2 = ((this.d + 0) * 250) / this.e;
                            this.c = this.d;
                            a(0, i2);
                        } else {
                            this.h = null;
                            int i3 = ((this.e - this.d) * 250) / this.e;
                            this.c = this.d;
                            a(this.e, i3);
                        }
                    } else if (this.e < 0) {
                        if (this.d < this.e) {
                            this.h = null;
                            int i4 = ((this.d - this.e) * 250) / this.e;
                            this.c = this.d;
                            a(this.e, i4);
                        } else if (xVelocity >= 0 || xVelocity >= 0 - this.v) {
                            this.h = null;
                            int i5 = ((this.d + 0) * 250) / this.e;
                            this.c = this.d;
                            a(0, i5);
                        } else {
                            this.h = null;
                            int i6 = ((this.e - this.d) * 250) / this.e;
                            this.c = this.d;
                            a(this.e, i6);
                        }
                    }
                    this.r = -1;
                } else if (this.r == -1) {
                    a(0, 300);
                }
                this.w.recycle();
                return super.onTouchEvent(motionEvent);
            case 2:
                if (this.r == -1) {
                    if (((int) Math.sqrt(((y - this.t) * (y - this.t)) + ((x - this.s) * (x - this.s)))) > this.u) {
                        this.r = 0;
                    }
                } else {
                    this.w.addMovement(motionEvent);
                }
                if (this.r == 0) {
                    int i7 = x - this.s;
                    if (this.r == 0) {
                        this.d = i7 + this.e;
                        if (this.e > 0) {
                            if (this.d < 0) {
                                this.d = 0;
                            } else if (this.d > this.e) {
                                this.d = this.e;
                            }
                        } else if (this.e < 0) {
                            if (this.d > 0) {
                                this.d = 0;
                            } else if (this.d < this.e) {
                                this.d = this.e;
                            }
                        }
                        invalidate();
                    }
                }
                return super.onTouchEvent(motionEvent);
            default:
                return super.onTouchEvent(motionEvent);
        }
    }
}
