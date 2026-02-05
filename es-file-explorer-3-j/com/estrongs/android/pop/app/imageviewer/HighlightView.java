package com.estrongs.android.pop.app.imageviewer;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
class HighlightView {

    /* renamed from: a, reason: collision with root package name */
    View f918a;

    /* renamed from: b, reason: collision with root package name */
    boolean f919b;
    boolean c;
    Rect d;
    RectF e;
    Matrix f;
    private RectF h;
    private float j;
    private Drawable l;
    private Drawable m;
    private Drawable n;
    private ModifyMode g = ModifyMode.None;
    private boolean i = false;
    private boolean k = false;
    private final Paint o = new Paint();
    private final Paint p = new Paint();
    private final Paint q = new Paint();

    /* loaded from: classes.dex */
    enum ModifyMode {
        None,
        Move,
        Grow
    }

    public HighlightView(View view) {
        this.f918a = view;
    }

    private void d() {
        Resources resources = this.f918a.getResources();
        this.l = resources.getDrawable(C0000R.drawable.crop_width);
        this.m = resources.getDrawable(C0000R.drawable.crop_height);
        this.n = resources.getDrawable(C0000R.drawable.crop_auto);
    }

    private Rect e() {
        RectF rectF = new RectF(this.e.left, this.e.top, this.e.right, this.e.bottom);
        this.f.mapRect(rectF);
        return new Rect(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
    }

    public int a(float f, float f2) {
        boolean z = false;
        Rect e = e();
        if (this.k) {
            float centerX = f - e.centerX();
            float centerY = f2 - e.centerY();
            int sqrt = (int) Math.sqrt((centerX * centerX) + (centerY * centerY));
            int width = this.d.width() / 2;
            return ((float) Math.abs(sqrt - width)) <= 20.0f ? Math.abs(centerY) > Math.abs(centerX) ? centerY < 0.0f ? 8 : 16 : centerX < 0.0f ? 2 : 4 : sqrt >= width ? 1 : 32;
        }
        boolean z2 = f2 >= ((float) e.top) - 20.0f && f2 < ((float) e.bottom) + 20.0f;
        if (f >= e.left - 20.0f && f < e.right + 20.0f) {
            z = true;
        }
        int i = (Math.abs(((float) e.left) - f) >= 20.0f || !z2) ? 1 : 3;
        if (Math.abs(e.right - f) < 20.0f && z2) {
            i |= 4;
        }
        if (Math.abs(e.top - f2) < 20.0f && z) {
            i |= 8;
        }
        int i2 = (Math.abs(((float) e.bottom) - f2) >= 20.0f || !z) ? i : i | 16;
        if (i2 == 1 && e.contains((int) f, (int) f2)) {
            return 32;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, float f, float f2) {
        Rect e = e();
        if (i == 1) {
            return;
        }
        if (i == 32) {
            b((this.e.width() / e.width()) * f, (this.e.height() / e.height()) * f2);
            return;
        }
        if ((i & 6) == 0) {
            f = 0.0f;
        }
        if ((i & 24) == 0) {
            f2 = 0.0f;
        }
        c(f * (this.e.width() / e.width()) * ((i & 2) != 0 ? -1 : 1), ((i & 8) != 0 ? -1 : 1) * f2 * (this.e.height() / e.height()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Canvas canvas) {
        if (this.c) {
            return;
        }
        canvas.save();
        Path path = new Path();
        if (!a()) {
            this.q.setColor(-16777216);
            canvas.drawRect(this.d, this.q);
            return;
        }
        Rect rect = new Rect();
        this.f918a.getDrawingRect(rect);
        if (this.k) {
            float width = this.d.width();
            path.addCircle(this.d.left + (width / 2.0f), (this.d.height() / 2.0f) + this.d.top, width / 2.0f, Path.Direction.CW);
            this.q.setColor(-1112874);
        } else {
            path.addRect(new RectF(this.d), Path.Direction.CW);
            this.q.setColor(-30208);
        }
        try {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
        } catch (UnsupportedOperationException e) {
        }
        canvas.drawRect(rect, a() ? this.o : this.p);
        canvas.restore();
        canvas.drawPath(path, this.q);
        if (this.g == ModifyMode.Grow) {
            if (this.k) {
                int intrinsicWidth = this.n.getIntrinsicWidth();
                int intrinsicHeight = this.n.getIntrinsicHeight();
                int round = (int) Math.round(Math.cos(0.7853981633974483d) * (this.d.width() / 2.0d));
                int width2 = ((this.d.left + (this.d.width() / 2)) + round) - (intrinsicWidth / 2);
                int height = ((this.d.top + (this.d.height() / 2)) - round) - (intrinsicHeight / 2);
                this.n.setBounds(width2, height, this.n.getIntrinsicWidth() + width2, this.n.getIntrinsicHeight() + height);
                this.n.draw(canvas);
                return;
            }
            int i = this.d.left + 1;
            int i2 = this.d.right + 1;
            int i3 = this.d.top + 4;
            int i4 = this.d.bottom + 3;
            int intrinsicWidth2 = this.l.getIntrinsicWidth() / 2;
            int intrinsicHeight2 = this.l.getIntrinsicHeight() / 2;
            int intrinsicHeight3 = this.m.getIntrinsicHeight() / 2;
            int intrinsicWidth3 = this.m.getIntrinsicWidth() / 2;
            int i5 = this.d.left + ((this.d.right - this.d.left) / 2);
            int i6 = this.d.top + ((this.d.bottom - this.d.top) / 2);
            this.l.setBounds(i - intrinsicWidth2, i6 - intrinsicHeight2, i + intrinsicWidth2, i6 + intrinsicHeight2);
            this.l.draw(canvas);
            this.l.setBounds(i2 - intrinsicWidth2, i6 - intrinsicHeight2, i2 + intrinsicWidth2, i6 + intrinsicHeight2);
            this.l.draw(canvas);
            this.m.setBounds(i5 - intrinsicWidth3, i3 - intrinsicHeight3, i5 + intrinsicWidth3, i3 + intrinsicHeight3);
            this.m.draw(canvas);
            this.m.setBounds(i5 - intrinsicWidth3, i4 - intrinsicHeight3, i5 + intrinsicWidth3, i4 + intrinsicHeight3);
            this.m.draw(canvas);
        }
    }

    public void a(Matrix matrix, Rect rect, RectF rectF, boolean z, boolean z2) {
        if (z) {
            z2 = true;
        }
        this.f = new Matrix(matrix);
        this.e = rectF;
        this.h = new RectF(rect);
        this.i = z2;
        this.k = z;
        this.j = this.e.width() / this.e.height();
        this.d = e();
        this.o.setARGB(FTPReply.DATA_CONNECTION_ALREADY_OPEN, 50, 50, 50);
        this.p.setARGB(FTPReply.DATA_CONNECTION_ALREADY_OPEN, 50, 50, 50);
        this.q.setStrokeWidth(3.0f);
        this.q.setStyle(Paint.Style.STROKE);
        this.q.setAntiAlias(true);
        this.g = ModifyMode.None;
        d();
    }

    public void a(ModifyMode modifyMode) {
        if (modifyMode != this.g) {
            this.g = modifyMode;
            this.f918a.invalidate();
        }
    }

    public void a(boolean z) {
        this.f919b = z;
    }

    public boolean a() {
        return this.f919b;
    }

    public Rect b() {
        return new Rect((int) this.e.left, (int) this.e.top, (int) this.e.right, (int) this.e.bottom);
    }

    void b(float f, float f2) {
        Rect rect = new Rect(this.d);
        this.e.offset(f, f2);
        this.e.offset(Math.max(0.0f, this.h.left - this.e.left), Math.max(0.0f, this.h.top - this.e.top));
        this.e.offset(Math.min(0.0f, this.h.right - this.e.right), Math.min(0.0f, this.h.bottom - this.e.bottom));
        this.d = e();
        rect.union(this.d);
        rect.inset(-10, -10);
        this.f918a.invalidate(rect);
    }

    public void b(boolean z) {
        this.c = z;
    }

    public void c() {
        this.d = e();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void c(float f, float f2) {
        float f3;
        float f4;
        float f5;
        if (this.i) {
            if (f != 0.0f) {
                f2 = f / this.j;
            } else if (f2 != 0.0f) {
                f = f2 * this.j;
            }
        }
        RectF rectF = new RectF(this.e);
        if (f > 0.0f && rectF.width() + (2.0f * f) > this.h.width()) {
            f = (this.h.width() - rectF.width()) / 2.0f;
            if (this.i) {
                f3 = f / this.j;
                f4 = f;
                if (f3 > 0.0f && rectF.height() + (2.0f * f3) > this.h.height()) {
                    f3 = (this.h.height() - rectF.height()) / 2.0f;
                    if (this.i) {
                        f4 = this.j * f3;
                    }
                }
                rectF.inset(-f4, -f3);
                if (rectF.width() < 25.0f) {
                    rectF.inset((-(25.0f - rectF.width())) / 2.0f, 0.0f);
                }
                f5 = !this.i ? 25.0f / this.j : 25.0f;
                if (rectF.height() < f5) {
                    rectF.inset(0.0f, (-(f5 - rectF.height())) / 2.0f);
                }
                if (rectF.left >= this.h.left) {
                    rectF.offset(this.h.left - rectF.left, 0.0f);
                } else if (rectF.right > this.h.right) {
                    rectF.offset(-(rectF.right - this.h.right), 0.0f);
                }
                if (rectF.top >= this.h.top) {
                    rectF.offset(0.0f, this.h.top - rectF.top);
                } else if (rectF.bottom > this.h.bottom) {
                    rectF.offset(0.0f, -(rectF.bottom - this.h.bottom));
                }
                this.e.set(rectF);
                this.d = e();
                this.f918a.invalidate();
            }
        }
        f3 = f2;
        f4 = f;
        if (f3 > 0.0f) {
            f3 = (this.h.height() - rectF.height()) / 2.0f;
            if (this.i) {
            }
        }
        rectF.inset(-f4, -f3);
        if (rectF.width() < 25.0f) {
        }
        if (!this.i) {
        }
        if (rectF.height() < f5) {
        }
        if (rectF.left >= this.h.left) {
        }
        if (rectF.top >= this.h.top) {
        }
        this.e.set(rectF);
        this.d = e();
        this.f918a.invalidate();
    }
}
