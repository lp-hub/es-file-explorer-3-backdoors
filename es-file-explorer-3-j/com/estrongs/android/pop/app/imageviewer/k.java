package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.FaceDetector;
import android.os.Handler;

/* loaded from: classes.dex */
class k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    Matrix f1020b;
    int d;
    final /* synthetic */ CropImage e;

    /* renamed from: a, reason: collision with root package name */
    float f1019a = 1.0f;
    FaceDetector.Face[] c = new FaceDetector.Face[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(CropImage cropImage) {
        this.e = cropImage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a() {
        CropImageView cropImageView;
        Bitmap bitmap;
        Bitmap bitmap2;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        CropImageView cropImageView2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z2 = false;
        cropImageView = this.e.q;
        HighlightView highlightView = new HighlightView(cropImageView);
        bitmap = this.e.s;
        int width = bitmap.getWidth();
        bitmap2 = this.e.s;
        int height = bitmap2.getHeight();
        Rect rect = new Rect(0, 0, width, height);
        int min = (Math.min(width, height) * 4) / 5;
        i = this.e.h;
        if (i != 0) {
            i6 = this.e.i;
            if (i6 != 0) {
                i7 = this.e.h;
                i8 = this.e.i;
                if (i7 > i8) {
                    i11 = this.e.i;
                    i12 = this.e.h;
                    i2 = (i11 * min) / i12;
                    i3 = min;
                } else {
                    i9 = this.e.h;
                    i10 = this.e.i;
                    i3 = (i9 * min) / i10;
                    i2 = min;
                }
                RectF rectF = new RectF((width - i3) / 2, (height - i2) / 2, i3 + r6, i2 + r7);
                Matrix matrix = this.f1020b;
                z = this.e.k;
                i4 = this.e.h;
                if (i4 != 0) {
                    i5 = this.e.i;
                    if (i5 != 0) {
                        z2 = true;
                    }
                }
                highlightView.a(matrix, rect, rectF, z, z2);
                cropImageView2 = this.e.q;
                cropImageView2.a(highlightView);
            }
        }
        i2 = min;
        i3 = min;
        RectF rectF2 = new RectF((width - i3) / 2, (height - i2) / 2, i3 + r6, i2 + r7);
        Matrix matrix2 = this.f1020b;
        z = this.e.k;
        i4 = this.e.h;
        if (i4 != 0) {
        }
        highlightView.a(matrix2, rect, rectF2, z, z2);
        cropImageView2 = this.e.q;
        cropImageView2.a(highlightView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FaceDetector.Face face) {
        CropImageView cropImageView;
        Bitmap bitmap;
        Bitmap bitmap2;
        boolean z;
        int i;
        CropImageView cropImageView2;
        int i2;
        boolean z2 = false;
        PointF pointF = new PointF();
        int eyesDistance = ((int) (face.eyesDistance() * this.f1019a)) * 2;
        face.getMidPoint(pointF);
        pointF.x *= this.f1019a;
        pointF.y *= this.f1019a;
        int i3 = (int) pointF.x;
        int i4 = (int) pointF.y;
        cropImageView = this.e.q;
        HighlightView highlightView = new HighlightView(cropImageView);
        bitmap = this.e.s;
        int width = bitmap.getWidth();
        bitmap2 = this.e.s;
        Rect rect = new Rect(0, 0, width, bitmap2.getHeight());
        RectF rectF = new RectF(i3, i4, i3, i4);
        rectF.inset(-eyesDistance, -eyesDistance);
        if (rectF.left < 0.0f) {
            rectF.inset(-rectF.left, -rectF.left);
        }
        if (rectF.top < 0.0f) {
            rectF.inset(-rectF.top, -rectF.top);
        }
        if (rectF.right > rect.right) {
            rectF.inset(rectF.right - rect.right, rectF.right - rect.right);
        }
        if (rectF.bottom > rect.bottom) {
            rectF.inset(rectF.bottom - rect.bottom, rectF.bottom - rect.bottom);
        }
        Matrix matrix = this.f1020b;
        z = this.e.k;
        i = this.e.h;
        if (i != 0) {
            i2 = this.e.i;
            if (i2 != 0) {
                z2 = true;
            }
        }
        highlightView.a(matrix, rect, rectF, z, z2);
        cropImageView2 = this.e.q;
        cropImageView2.a(highlightView);
    }

    private Bitmap b() {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        Bitmap bitmap4;
        Bitmap bitmap5;
        Bitmap bitmap6;
        bitmap = this.e.s;
        if (bitmap == null) {
            return null;
        }
        bitmap2 = this.e.s;
        if (bitmap2.getWidth() > 256) {
            bitmap6 = this.e.s;
            this.f1019a = 256.0f / bitmap6.getWidth();
        }
        Matrix matrix = new Matrix();
        matrix.setScale(this.f1019a, this.f1019a);
        bitmap3 = this.e.s;
        bitmap4 = this.e.s;
        int width = bitmap4.getWidth();
        bitmap5 = this.e.s;
        return Bitmap.createBitmap(bitmap3, 0, 0, width, bitmap5.getHeight(), matrix, true);
    }

    @Override // java.lang.Runnable
    public void run() {
        CropImageView cropImageView;
        Handler handler;
        Bitmap bitmap;
        boolean z;
        cropImageView = this.e.q;
        this.f1020b = cropImageView.getImageMatrix();
        Bitmap b2 = b();
        this.f1019a = 1.0f / this.f1019a;
        if (b2 != null) {
            z = this.e.j;
            if (z) {
                this.d = new FaceDetector(b2.getWidth(), b2.getHeight(), this.c.length).findFaces(b2, this.c);
            }
        }
        if (b2 != null) {
            bitmap = this.e.s;
            if (b2 != bitmap) {
                b2.recycle();
            }
        }
        handler = this.e.l;
        handler.post(new l(this));
    }
}
