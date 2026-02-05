package com.estrongs.android.pop.app.imageviewer;

import android.util.DisplayMetrics;
import android.widget.SpinnerAdapter;

/* loaded from: classes.dex */
class aw implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.imageviewer.gallery.e f956a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ au f957b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(au auVar, com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        this.f957b = auVar;
        this.f956a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        o oVar;
        o oVar2;
        ESGallery eSGallery;
        o oVar3;
        ESGallery eSGallery2;
        int b2 = this.f957b.f954a.e.b();
        if (b2 == 0) {
            this.f957b.f954a.finish();
            return;
        }
        if (b2 <= this.f957b.f954a.c) {
            this.f957b.f954a.c = b2 - 1;
        }
        int a2 = this.f957b.f954a.e.a(this.f956a);
        this.f957b.f954a.K = new o(this.f957b.f954a, this.f957b.f954a.e);
        oVar = this.f957b.f954a.K;
        oVar.a(this.f957b.f954a.f930b);
        this.f957b.f954a.k = new DisplayMetrics();
        this.f957b.f954a.getWindowManager().getDefaultDisplay().getMetrics(this.f957b.f954a.k);
        int i = (int) (84.0f * this.f957b.f954a.k.scaledDensity);
        oVar2 = this.f957b.f954a.K;
        oVar2.b(i);
        eSGallery = this.f957b.f954a.y;
        oVar3 = this.f957b.f954a.K;
        eSGallery.setAdapter((SpinnerAdapter) oVar3);
        eSGallery2 = this.f957b.f954a.y;
        eSGallery2.setSelection(a2);
    }
}
