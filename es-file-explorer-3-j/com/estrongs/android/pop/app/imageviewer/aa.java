package com.estrongs.android.pop.app.imageviewer;

/* loaded from: classes.dex */
class aa implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ float f933a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ long f934b;
    final /* synthetic */ float c;
    final /* synthetic */ float d;
    final /* synthetic */ float e;
    final /* synthetic */ float f;
    final /* synthetic */ ImageViewTouchBase g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(ImageViewTouchBase imageViewTouchBase, float f, long j, float f2, float f3, float f4, float f5) {
        this.g = imageViewTouchBase;
        this.f933a = f;
        this.f934b = j;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = f5;
    }

    @Override // java.lang.Runnable
    public void run() {
        float min = Math.min(this.f933a, (float) (System.currentTimeMillis() - this.f934b));
        this.g.a(this.c + (this.d * min), this.e, this.f);
        if (min < this.f933a) {
            this.g.o.post(this);
        }
    }
}
