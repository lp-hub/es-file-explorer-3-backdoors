package com.estrongs.android.pop.app.imageviewer;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
class bq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.pop.app.imageviewer.gallery.e f984a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Bitmap f985b;
    final /* synthetic */ al c;
    final /* synthetic */ bp d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(bp bpVar, com.estrongs.android.pop.app.imageviewer.gallery.e eVar, Bitmap bitmap, al alVar) {
        this.d = bpVar;
        this.f984a = eVar;
        this.f985b = bitmap;
        this.c = alVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.d.d.f929a || !this.f984a.equals(this.d.d.e.a(this.d.f982a))) {
            return;
        }
        if (Math.abs(this.d.d.c - this.d.f982a) < 2) {
            if (this.f985b == null) {
                this.d.f983b.b(this.f984a);
                if (this.d.d.c == this.d.f982a) {
                    this.d.d.g = null;
                }
            } else {
                this.d.f983b.a(this.f984a, this.c);
                if (this.d.d.c == this.d.f982a) {
                    this.d.d.g = this.d.f983b.f989a;
                }
            }
        }
        if (this.d.c != null) {
            this.d.d.f930b.post(this.d.c);
        }
    }
}
