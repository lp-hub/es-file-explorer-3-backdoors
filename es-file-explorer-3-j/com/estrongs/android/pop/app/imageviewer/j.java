package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bitmap f1017a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CropImage f1018b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(CropImage cropImage, Bitmap bitmap) {
        this.f1018b = cropImage;
        this.f1017a = bitmap;
    }

    @Override // java.lang.Runnable
    public void run() {
        CropImageView cropImageView;
        cropImageView = this.f1018b.q;
        cropImageView.b();
        this.f1017a.recycle();
    }
}
