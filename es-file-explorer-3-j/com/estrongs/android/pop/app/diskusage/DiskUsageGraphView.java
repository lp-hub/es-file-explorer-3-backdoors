package com.estrongs.android.pop.app.diskusage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class DiskUsageGraphView extends View {
    private static int f = 6;
    private static DisplayMetrics m = new DisplayMetrics();

    /* renamed from: a, reason: collision with root package name */
    int[] f660a;

    /* renamed from: b, reason: collision with root package name */
    float[] f661b;
    int[] c;
    long[] d;
    private boolean e;
    private Path g;
    private int h;
    private int i;
    private Drawable j;
    private Paint k;
    private Rect l;

    public DiskUsageGraphView(Context context) {
        super(context);
        this.e = false;
        this.f660a = null;
        this.g = null;
        this.h = 0;
        this.i = 0;
        this.j = null;
        this.k = new Paint();
        this.l = new Rect();
        this.f661b = null;
        this.c = null;
        this.d = null;
    }

    public DiskUsageGraphView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f660a = null;
        this.g = null;
        this.h = 0;
        this.i = 0;
        this.j = null;
        this.k = new Paint();
        this.l = new Rect();
        this.f661b = null;
        this.c = null;
        this.d = null;
    }

    public DiskUsageGraphView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f660a = null;
        this.g = null;
        this.h = 0;
        this.i = 0;
        this.j = null;
        this.k = new Paint();
        this.l = new Rect();
        this.f661b = null;
        this.c = null;
        this.d = null;
    }

    private Path a(int i, int i2) {
        Path path = new Path();
        int i3 = (int) ((m.density == 0.0f ? 1.5d : m.density) * f);
        path.moveTo(i3, 0.0f);
        path.lineTo(i - (i3 * 2), 0.0f);
        path.arcTo(new RectF(i - (i3 * 2), 0.0f, i, i3 * 2), 270.0f, 90.0f);
        path.lineTo(i, i2 - i3);
        path.arcTo(new RectF(i - (i3 * 2), i2 - (i3 * 2), i, i2), 0.0f, 90.0f);
        path.lineTo(i3, i2);
        path.arcTo(new RectF(0.0f, i2 - (i3 * 2), i3 * 2, i2), 90.0f, 90.0f);
        path.lineTo(0.0f, i3);
        path.arcTo(new RectF(0.0f, 0.0f, i3 * 2, i3 * 2), 180.0f, 90.0f);
        return path;
    }

    public void a(long[] jArr, int[] iArr) {
        this.f661b = new float[jArr.length - 1];
        float f2 = (float) jArr[jArr.length - 1];
        for (int i = 0; i < jArr.length - 1; i++) {
            this.f661b[i] = jArr[jArr.length + (-1)] == 0 ? 0.0f : ((float) jArr[i]) / f2;
        }
        this.d = jArr;
        this.c = iArr;
        this.e = true;
        postInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.h != width || this.i != height || this.g == null) {
            this.g = a(width, height);
            this.h = width;
            this.i = height;
        }
        if (this.e || this.f660a == null || this.d[this.d.length - 1] != 0) {
            this.e = false;
            this.f660a = new int[this.f661b.length];
            int i2 = 0;
            for (int i3 = 0; i3 < this.f661b.length; i3++) {
                if (this.d[i3] == 0) {
                    this.f660a[i3] = 0;
                } else {
                    this.f660a[i3] = (int) (height * this.f661b[i3]);
                    if (this.f660a[i3] < 2) {
                        i2 += 2 - this.f660a[i3];
                        this.f660a[i3] = 2;
                    } else if (i2 != 0) {
                        if (this.f660a[i3] > i2 + 2) {
                            int[] iArr = this.f660a;
                            iArr[i3] = iArr[i3] - i2;
                            i2 = 0;
                        } else if (this.f660a[i3] > 4) {
                            this.f660a[i3] = r4[i3] - 2;
                            i2 -= 2;
                        }
                    }
                }
            }
        }
        canvas.save();
        try {
            canvas.clipPath(this.g);
        } catch (UnsupportedOperationException e) {
        }
        try {
            this.k.setDither(true);
            this.k.setAntiAlias(true);
        } catch (Exception e2) {
        }
        if (this.d[this.d.length - 1] != 0) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < this.f660a.length - 1) {
                if (this.f660a[i4] == 0) {
                    i = i5;
                } else {
                    this.k.setColor(this.c[i4]);
                    canvas.drawRect(0.0f, i5, width, this.f660a[i4] + i5, this.k);
                    i = this.f660a[i4] + i5;
                }
                i4++;
                i5 = i;
            }
            if (this.f660a[this.f660a.length - 1] != 0) {
                this.k.setColor(this.c[this.f660a.length - 1]);
                canvas.drawRect(0.0f, i5, width, height, this.k);
            }
        } else {
            this.k.setColor(-4012083);
            canvas.drawRect(0.0f, 0, width, height, this.k);
        }
        if (this.j == null) {
            this.j = getContext().getResources().getDrawable(C0000R.drawable.left_disk_graphic_bg_2);
        }
        canvas.getClipBounds(this.l);
        this.j.setBounds(this.l);
        this.j.draw(canvas);
        canvas.restore();
    }
}
