package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* loaded from: classes.dex */
public class al {

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f942a;

    /* renamed from: b, reason: collision with root package name */
    private int f943b;

    public al(Bitmap bitmap) {
        this.f942a = bitmap;
        this.f943b = 0;
    }

    public al(Bitmap bitmap, int i) {
        this.f942a = bitmap;
        this.f943b = i % 360;
    }

    public int a() {
        return this.f943b;
    }

    public void a(int i) {
        this.f943b = i;
    }

    public void a(Bitmap bitmap) {
        this.f942a = bitmap;
    }

    public Bitmap b() {
        return this.f942a;
    }

    public Matrix c() {
        Matrix matrix = new Matrix();
        if (this.f943b != 0) {
            matrix.preTranslate(-(this.f942a.getWidth() / 2), -(this.f942a.getHeight() / 2));
            matrix.postRotate(this.f943b);
            matrix.postTranslate(f() / 2, e() / 2);
        }
        return matrix;
    }

    public boolean d() {
        return (this.f943b / 90) % 2 != 0;
    }

    public int e() {
        return d() ? this.f942a.getWidth() : this.f942a.getHeight();
    }

    public int f() {
        return d() ? this.f942a.getHeight() : this.f942a.getWidth();
    }

    public boolean g() {
        return this.f942a == null || this.f942a.isRecycled();
    }

    public void h() {
        if (this.f942a != null) {
            this.f942a.recycle();
            this.f942a = null;
        }
    }
}
