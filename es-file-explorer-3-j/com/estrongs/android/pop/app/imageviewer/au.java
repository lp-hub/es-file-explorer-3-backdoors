package com.estrongs.android.pop.app.imageviewer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f954a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public au(ViewImage21 viewImage21, String str) {
        super(str);
        this.f954a = viewImage21;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        com.estrongs.android.pop.app.imageviewer.gallery.e m;
        m = this.f954a.m();
        if (m == null) {
            this.f954a.runOnUiThread(new av(this));
        } else {
            this.f954a.runOnUiThread(new aw(this, m));
        }
    }
}
