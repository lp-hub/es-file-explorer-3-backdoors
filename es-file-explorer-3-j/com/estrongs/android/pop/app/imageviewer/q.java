package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes.dex */
class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bitmap f1026a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ p f1027b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar, Bitmap bitmap) {
        this.f1027b = pVar;
        this.f1026a = bitmap;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        Bitmap bitmap;
        int i2 = this.f1027b.f1024a;
        i = this.f1027b.c.i;
        if (Math.abs(i2 - i) < 5) {
            if (this.f1026a != null) {
                this.f1027b.f1025b.setImageBitmap(this.f1026a);
                return;
            }
            ImageView imageView = this.f1027b.f1025b;
            bitmap = this.f1027b.c.h;
            imageView.setImageBitmap(bitmap);
        }
    }
}
