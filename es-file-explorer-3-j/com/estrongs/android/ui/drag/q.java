package com.estrongs.android.ui.drag;

import android.os.Handler;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    Handler f1964a;

    /* renamed from: b, reason: collision with root package name */
    int f1965b;
    s c;
    boolean d;
    long e;
    boolean f;
    float g;
    Runnable h = new r(this);

    public q(boolean z, int i, s sVar) {
        this.g = z ? 1.0f : 0.0f;
        this.f = z;
        this.f1965b = i;
        this.c = sVar;
        this.f1964a = new Handler();
    }

    public void a(boolean z) {
        a(z, SystemClock.uptimeMillis());
    }

    public void a(boolean z, long j) {
        if (z != this.f) {
            if (this.d) {
                long uptimeMillis = SystemClock.uptimeMillis();
                this.e = (uptimeMillis + (uptimeMillis - this.e)) - this.f1965b;
            } else {
                this.e = j;
                this.d = true;
                this.c.a();
                this.f1964a.postAtTime(this.h, SystemClock.uptimeMillis() + 33);
            }
            this.f = z;
        }
    }
}
