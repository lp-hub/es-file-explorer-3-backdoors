package com.estrongs.android.pop.app.imageviewer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f949a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(ViewImage21 viewImage21) {
        this.f949a = viewImage21;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean h;
        h = this.f949a.h();
        if (h) {
            return;
        }
        this.f949a.e();
    }
}
