package com.estrongs.android.pop.app.imageviewer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView;
import com.estrongs.android.pop.esclasses.ESImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class ImageViewTouchBase extends ESImageView {

    /* renamed from: a, reason: collision with root package name */
    private final Matrix f926a;

    /* renamed from: b, reason: collision with root package name */
    private final float[] f927b;
    private ab c;
    private Runnable d;
    protected Matrix f;
    protected Matrix g;
    protected final al h;
    int i;
    int j;
    float k;
    float l;
    int m;
    int n;
    protected Handler o;

    public ImageViewTouchBase(Context context) {
        super(context);
        this.f = new Matrix();
        this.g = new Matrix();
        this.f926a = new Matrix();
        this.f927b = new float[9];
        this.h = new al(null);
        this.i = -1;
        this.j = -1;
        this.l = -1.0f;
        this.o = new Handler();
        this.d = null;
        a();
    }

    public ImageViewTouchBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new Matrix();
        this.g = new Matrix();
        this.f926a = new Matrix();
        this.f927b = new float[9];
        this.h = new al(null);
        this.i = -1;
        this.j = -1;
        this.l = -1.0f;
        this.o = new Handler();
        this.d = null;
        a();
    }

    private void a() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private void a(Bitmap bitmap, int i) {
        super.setImageBitmap(bitmap);
        Drawable drawable = getDrawable();
        if (drawable != null) {
            drawable.setDither(true);
        }
        Bitmap b2 = this.h.b();
        this.h.a(bitmap);
        this.h.a(i);
        if (b2 != null && b2 != bitmap && this.c != null) {
            this.c.a(b2);
        }
        if (bitmap != null) {
            this.m = bitmap.getWidth();
            this.n = bitmap.getHeight();
        }
    }

    private void a(al alVar, Matrix matrix) {
        float width = getWidth();
        float height = getHeight();
        float f = alVar.f();
        float e = alVar.e();
        matrix.reset();
        float min = Math.min(Math.min(width / f, 3.0f), Math.min(height / e, 3.0f));
        matrix.postConcat(alVar.c());
        matrix.postScale(min, min);
        matrix.postTranslate((width - (f * min)) / 2.0f, (height - (e * min)) / 2.0f);
    }

    protected float a(Matrix matrix) {
        return a(matrix, 0);
    }

    protected float a(Matrix matrix, int i) {
        matrix.getValues(this.f927b);
        return this.f927b[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(float f) {
        a(f, getWidth() / 2.0f, getHeight() / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(float f, float f2) {
        this.g.postTranslate(f, f2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(float f, float f2, float f3) {
        if (f > this.k) {
            f = this.k;
        }
        float c = f / c();
        this.g.postScale(c, c, f2, f3);
        setImageMatrix(f());
        a(true, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(float f, float f2, float f3, float f4) {
        float c = (f - c()) / f4;
        float c2 = c();
        this.o.post(new aa(this, f4, System.currentTimeMillis(), c2, c, f2, f3));
    }

    public void a(int i) {
        int a2 = this.h.a() + i;
        if (a2 >= 360) {
            a2 -= 360;
        }
        this.h.a(a2);
        a(this.h, false);
    }

    public void a(Bitmap bitmap, boolean z) {
        a(new al(bitmap), z);
    }

    public void a(al alVar, boolean z) {
        if (getWidth() <= 0) {
            this.d = new z(this, alVar, z);
            return;
        }
        if (alVar.b() != null) {
            a(alVar, this.f);
            a(alVar.b(), alVar.a());
        } else {
            this.f.reset();
            setImageBitmap(null);
        }
        if (z) {
            this.g.reset();
        }
        setImageMatrix(f());
        this.k = g();
        if (this.l < 0.0f) {
            this.l = c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(boolean z, boolean z2) {
        float f;
        float f2 = 0.0f;
        if (this.h.b() == null) {
            return;
        }
        Matrix f3 = f();
        RectF rectF = new RectF(0.0f, 0.0f, this.h.b().getWidth(), this.h.b().getHeight());
        f3.mapRect(rectF);
        float height = rectF.height();
        float width = rectF.width();
        this.m = (int) width;
        this.n = (int) height;
        if (z2) {
            int height2 = getHeight();
            if (height < height2) {
                f = ((height2 - height) / 2.0f) - rectF.top;
            } else if (rectF.top > 0.0f) {
                f = -rectF.top;
            } else if (rectF.bottom < height2) {
                f = getHeight() - rectF.bottom;
            }
            if (z) {
                int width2 = getWidth();
                if (width < width2) {
                    f2 = ((width2 - width) / 2.0f) - rectF.left;
                } else if (rectF.left > 0.0f) {
                    f2 = -rectF.left;
                } else if (rectF.right < width2) {
                    f2 = width2 - rectF.right;
                }
            }
            a(f2, f);
            setImageMatrix(f());
        }
        f = 0.0f;
        if (z) {
        }
        a(f2, f);
        setImageMatrix(f());
    }

    public void b() {
        a((Bitmap) null, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(float f, float f2, float f3) {
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        c(width - f2, height - f3);
        a(f, width, height);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float c() {
        return a(this.g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(float f, float f2) {
        a(f, f2);
        setImageMatrix(f());
    }

    public int d() {
        return this.m;
    }

    public int e() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Matrix f() {
        this.f926a.set(this.f);
        this.f926a.postConcat(this.g);
        return this.f926a;
    }

    protected float g() {
        if (this.h.b() == null) {
            return 1.0f;
        }
        return Math.max(this.h.f() / this.i, this.h.e() / this.j) * 4.0f;
    }

    public float h() {
        return this.l;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            ((Activity) getContext()).finish();
            return true;
        }
        if (i == 4 && keyEvent.getRepeatCount() == 0) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4 || c() <= 1.0f) {
            return super.onKeyUp(i, keyEvent);
        }
        a(1.0f);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.i = i3 - i;
        this.j = i4 - i2;
        Runnable runnable = this.d;
        if (runnable != null) {
            this.d = null;
            runnable.run();
        }
        if (this.h.b() != null) {
            a(this.h, this.f);
            setImageMatrix(f());
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        a(bitmap, 0);
    }
}
