package com.estrongs.android.pop.app.imageviewer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ al f1033a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f1034b;
    final /* synthetic */ ImageViewTouchBase c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(ImageViewTouchBase imageViewTouchBase, al alVar, boolean z) {
        this.c = imageViewTouchBase;
        this.f1033a = alVar;
        this.f1034b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a(this.f1033a, this.f1034b);
    }
}
