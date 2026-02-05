package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements t {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1024a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ImageView f1025b;
    final /* synthetic */ o c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar, int i, ImageView imageView) {
        this.c = oVar;
        this.f1024a = i;
        this.f1025b = imageView;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.t
    public void a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar, Bitmap bitmap) {
        int i;
        int i2 = this.f1024a;
        i = this.c.i;
        if (Math.abs(i2 - i) < 5) {
            this.c.f1023b.a(new q(this, bitmap));
        }
    }
}
