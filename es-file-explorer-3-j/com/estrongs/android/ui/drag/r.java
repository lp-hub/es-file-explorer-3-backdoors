package com.estrongs.android.ui.drag;

import android.os.SystemClock;

/* loaded from: classes.dex */
class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f1966a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar) {
        this.f1966a = qVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        long j = this.f1966a.e;
        long uptimeMillis = SystemClock.uptimeMillis() - j;
        int i = this.f1966a.f1965b;
        float f = ((float) uptimeMillis) / i;
        if (!this.f1966a.f) {
            f = 1.0f - f;
        }
        float f2 = f <= 1.0f ? f < 0.0f ? 0.0f : f : 1.0f;
        float f3 = this.f1966a.g;
        this.f1966a.g = f2;
        this.f1966a.c.a(f2, f3);
        long j2 = ((((int) (uptimeMillis / 33)) + 1) * 33) + j;
        if (uptimeMillis < i) {
            this.f1966a.f1964a.postAtTime(this, j2);
        }
        if (uptimeMillis >= i) {
            this.f1966a.c.b();
            this.f1966a.d = false;
        }
    }
}
