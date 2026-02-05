package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class ColorPickerView extends View {

    /* renamed from: a, reason: collision with root package name */
    public static float f2567a = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    private Paint f2568b;
    private Paint c;
    private final int[] d;
    private a e;
    private int f;
    private RectF g;
    private boolean h;
    private boolean i;
    private int j;
    private int k;
    private int l;

    public ColorPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new int[]{-65536, -65281, -16776961, -16711681, -16711936, -256, -1, -16777216, -65536};
        this.g = new RectF();
        this.j = -1;
        this.k = -1;
        this.l = -1;
        b();
    }

    public ColorPickerView(Context context, a aVar, int i) {
        super(context);
        this.d = new int[]{-65536, -65281, -16776961, -16711681, -16711936, -256, -1, -16777216, -65536};
        this.g = new RectF();
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.e = aVar;
        this.c.setColor(i);
        b();
    }

    private int a(int i, int i2, float f) {
        return Math.round((i2 - i) * f) + i;
    }

    private int a(int[] iArr, float f) {
        if (f <= 0.0f) {
            return iArr[0];
        }
        if (f >= 1.0f) {
            return iArr[iArr.length - 1];
        }
        float length = (iArr.length - 1) * f;
        int i = (int) length;
        float f2 = length - i;
        int i2 = iArr[i];
        int i3 = iArr[i + 1];
        return Color.argb(a(Color.alpha(i2), Color.alpha(i3), f2), a(Color.red(i2), Color.red(i3), f2), a(Color.green(i2), Color.green(i3), f2), a(Color.blue(i2), Color.blue(i3), f2));
    }

    private void b() {
        SweepGradient sweepGradient = new SweepGradient(0.0f, 0.0f, this.d, (float[]) null);
        this.f2568b = new Paint(1);
        this.f2568b.setShader(sweepGradient);
        this.f2568b.setStyle(Paint.Style.STROKE);
        this.c = new Paint(1);
        this.c.setStrokeWidth(5.0f);
    }

    public int a() {
        return this.f;
    }

    public void a(int i) {
        this.c.setColor(i);
        this.f = i;
        if (this.e != null) {
            this.e.a(i);
        }
        invalidate();
    }

    public void a(a aVar) {
        this.e = aVar;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f2568b.setStrokeWidth(this.j * 0.4f);
        float strokeWidth = this.j - (this.f2568b.getStrokeWidth() * 0.5f);
        canvas.translate(this.j, this.j);
        this.g.set(-strokeWidth, -strokeWidth, strokeWidth, strokeWidth);
        canvas.drawOval(this.g, this.f2568b);
        canvas.drawCircle(0.0f, 0.0f, this.l, this.c);
        if (this.h) {
            int color = this.c.getColor();
            this.c.setStyle(Paint.Style.STROKE);
            if (this.i) {
                this.c.setAlpha(255);
            } else {
                this.c.setAlpha(128);
            }
            canvas.drawCircle(0.0f, 0.0f, this.l + this.c.getStrokeWidth(), this.c);
            this.c.setStyle(Paint.Style.FILL);
            this.c.setColor(color);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2)) / 2;
        this.j = min;
        this.k = min;
        this.l = (int) (0.3d * min);
        setMeasuredDimension(this.j * 2, this.k * 2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX() - this.j;
        float y = motionEvent.getY() - this.k;
        boolean z = Math.sqrt((double) ((x * x) + (y * y))) <= ((double) this.l);
        switch (motionEvent.getAction()) {
            case 0:
                this.h = z;
                if (z) {
                    this.i = true;
                    invalidate();
                    break;
                }
                if (!this.h) {
                    if (this.i != z) {
                        this.i = z;
                        invalidate();
                        break;
                    }
                } else {
                    float atan2 = ((float) Math.atan2(y, x)) / 6.283185f;
                    if (atan2 < 0.0f) {
                        atan2 += 1.0f;
                    }
                    this.c.setColor(a(this.d, atan2));
                    this.f = this.c.getColor();
                    this.e.a(this.f);
                    invalidate();
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.h) {
                    this.e.a(this.c.getColor());
                    this.h = false;
                    invalidate();
                    break;
                }
                break;
            case 2:
                if (!this.h) {
                }
                break;
        }
        return true;
    }
}
