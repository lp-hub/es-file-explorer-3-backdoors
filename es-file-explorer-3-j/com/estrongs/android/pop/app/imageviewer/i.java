package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bitmap f1015a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CropImage f1016b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(CropImage cropImage, Bitmap bitmap) {
        this.f1016b = cropImage;
        this.f1015a = bitmap;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1016b.a(this.f1015a);
    }
}
