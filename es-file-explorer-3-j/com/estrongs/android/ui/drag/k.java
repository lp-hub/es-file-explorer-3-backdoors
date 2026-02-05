package com.estrongs.android.ui.drag;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class k extends View implements s {

    /* renamed from: a, reason: collision with root package name */
    q f1955a;

    /* renamed from: b, reason: collision with root package name */
    private Bitmap f1956b;
    private Paint c;
    private int d;
    private int e;
    private float f;
    private float g;
    private WindowManager.LayoutParams h;
    private WindowManager i;

    public k(Context context, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6) {
        super(context);
        this.g = 1.0f;
        this.i = (WindowManager) context.getSystemService("window");
        this.f1955a = new q(false, FTPReply.RESTART_MARKER, this);
        Matrix matrix = new Matrix();
        float f = i5;
        float f2 = (40.0f + f) / f;
        this.f = f2;
        matrix.setScale(f2, f2);
        this.f1956b = Bitmap.createBitmap(bitmap, i3, i4, i5, i6, matrix, true);
        this.d = i + 20;
        this.e = i2 + 20;
    }

    @Override // com.estrongs.android.ui.drag.s
    public void a() {
    }

    @Override // com.estrongs.android.ui.drag.s
    public void a(float f, float f2) {
        this.g = (((this.f - 1.0f) * f) + 1.0f) / this.f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        WindowManager.LayoutParams layoutParams = this.h;
        layoutParams.x = i - this.d;
        layoutParams.y = i2 - this.e;
        this.i.updateViewLayout(this, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Bitmap bitmap, int i) {
        this.f1956b = bitmap;
        this.e += i;
    }

    public void a(IBinder iBinder, int i, int i2) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, i - this.d, i2 - this.e, 1002, 768, -3);
        layoutParams.gravity = 51;
        layoutParams.token = iBinder;
        layoutParams.setTitle("NaviDragView");
        this.h = layoutParams;
        this.i.addView(this, layoutParams);
        this.g = 1.0f / this.f;
        this.f1955a.a(true);
    }

    @Override // com.estrongs.android.ui.drag.s
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.i.removeView(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap d() {
        return this.f1956b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.d - 20;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.e - 20;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1956b.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = this.g;
        if (f < 0.999f) {
            float width = this.f1956b.getWidth();
            float f2 = (width - (width * f)) / 2.0f;
            canvas.translate(f2, f2);
            canvas.scale(f, f);
        }
        if (this.c == null) {
            this.c = new Paint();
        }
        this.c.setAlpha(200);
        if (this.f1956b.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.f1956b, 0.0f, 0.0f, this.c);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.f1956b.getWidth(), this.f1956b.getHeight());
    }
}
