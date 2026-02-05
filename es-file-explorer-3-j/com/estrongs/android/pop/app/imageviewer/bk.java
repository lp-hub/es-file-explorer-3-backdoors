package com.estrongs.android.pop.app.imageviewer;

/* loaded from: classes.dex */
class bk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f974a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(ViewImage21 viewImage21) {
        this.f974a = viewImage21;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f974a.l();
    }
}
