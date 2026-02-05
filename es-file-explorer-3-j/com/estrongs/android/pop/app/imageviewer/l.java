package com.estrongs.android.pop.app.imageviewer;

/* loaded from: classes.dex */
class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f1021a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar) {
        this.f1021a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        CropImageView cropImageView;
        CropImageView cropImageView2;
        CropImageView cropImageView3;
        this.f1021a.e.f913a = this.f1021a.d > 1;
        if (this.f1021a.d > 0) {
            for (int i = 0; i < this.f1021a.d; i++) {
                this.f1021a.a(this.f1021a.c[i]);
            }
        } else {
            this.f1021a.a();
        }
        cropImageView = this.f1021a.e.q;
        cropImageView.invalidate();
        cropImageView2 = this.f1021a.e.q;
        if (cropImageView2.f915a.size() == 1) {
            CropImage cropImage = this.f1021a.e;
            cropImageView3 = this.f1021a.e.q;
            cropImage.c = cropImageView3.f915a.get(0);
            this.f1021a.e.c.a(true);
        }
    }
}
