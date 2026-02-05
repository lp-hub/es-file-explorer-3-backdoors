package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bitmap f1013a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CountDownLatch f1014b;
    final /* synthetic */ g c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, Bitmap bitmap, CountDownLatch countDownLatch) {
        this.c = gVar;
        this.f1013a = bitmap;
        this.f1014b = countDownLatch;
    }

    @Override // java.lang.Runnable
    public void run() {
        Bitmap bitmap;
        CropImageView cropImageView;
        CropImageView cropImageView2;
        CropImageView cropImageView3;
        Bitmap bitmap2;
        Bitmap bitmap3 = this.f1013a;
        bitmap = this.c.f997a.s;
        if (bitmap3 != bitmap && this.f1013a != null) {
            cropImageView3 = this.c.f997a.q;
            cropImageView3.a(this.f1013a, true);
            bitmap2 = this.c.f997a.s;
            bitmap2.recycle();
            this.c.f997a.s = this.f1013a;
        }
        cropImageView = this.c.f997a.q;
        if (cropImageView.c() == 1.0f) {
            cropImageView2 = this.c.f997a.q;
            cropImageView2.a(true, true);
        }
        this.f1014b.countDown();
    }
}
