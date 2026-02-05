package com.estrongs.android.pop.app.imageviewer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f972a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(ViewImage21 viewImage21) {
        this.f972a = viewImage21;
    }

    @Override // java.lang.Runnable
    public void run() {
        ESGallery eSGallery;
        if (this.f972a.c >= this.f972a.e.b() - 1) {
            this.f972a.d();
            return;
        }
        eSGallery = this.f972a.y;
        eSGallery.setSelection(this.f972a.c + 1);
        this.f972a.a(true);
    }
}
