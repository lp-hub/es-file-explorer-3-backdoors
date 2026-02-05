package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
class iv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ iu f1045a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iv(iu iuVar) {
        this.f1045a = iuVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:2:0x0008 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean c;
        boolean c2;
        boolean f;
        long j;
        while (c) {
            f = this.f1045a.f1044a.f();
            if (!f) {
                j = this.f1045a.f1044a.h;
                if (j >= 262144) {
                    break;
                } else {
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e) {
                    }
                }
            } else {
                break;
            }
        }
        c2 = this.f1045a.f1044a.c();
        if (c2) {
            this.f1045a.f1044a.a(false);
        }
    }
}
