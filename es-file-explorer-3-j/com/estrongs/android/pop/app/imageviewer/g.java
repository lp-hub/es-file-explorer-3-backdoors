package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.os.Handler;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CropImage f997a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(CropImage cropImage) {
        this.f997a = cropImage;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.pop.app.imageviewer.gallery.e eVar;
        Bitmap bitmap;
        Handler handler;
        com.estrongs.android.pop.app.imageviewer.gallery.e eVar2;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        eVar = this.f997a.t;
        if (eVar != null) {
            eVar2 = this.f997a.t;
            bitmap = eVar2.a(-1, 1048576);
        } else {
            bitmap = this.f997a.s;
        }
        handler = this.f997a.l;
        handler.post(new h(this, bitmap, countDownLatch));
        try {
            countDownLatch.await();
            this.f997a.d.run();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
