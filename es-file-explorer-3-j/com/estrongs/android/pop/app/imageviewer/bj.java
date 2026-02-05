package com.estrongs.android.pop.app.imageviewer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f973a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(ViewImage21 viewImage21) {
        this.f973a = viewImage21;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable;
        Runnable runnable2;
        int i;
        this.f973a.i.getCurrentView().startAnimation(this.f973a.i.getOutAnimation());
        n nVar = this.f973a.f930b;
        runnable = this.f973a.H;
        nVar.removeCallbacks(runnable);
        n nVar2 = this.f973a.f930b;
        runnable2 = this.f973a.H;
        i = this.f973a.J;
        nVar2.postDelayed(runnable2, i - 50);
    }
}
