package com.estrongs.android.pop.app.a.a;

/* loaded from: classes.dex */
public abstract class c {
    protected int c = 0;

    /* renamed from: a, reason: collision with root package name */
    protected int f387a = 0;

    /* renamed from: b, reason: collision with root package name */
    protected int f388b = -1;

    protected abstract int a(int i);

    protected abstract void a();

    protected abstract void b();

    public void b(int i) {
        boolean z = this.f387a != i;
        this.f387a = i;
        if (z) {
            a();
        }
    }

    public abstract void c();

    public void c(int i) {
        this.f388b = i;
        b();
    }

    public abstract int d();

    public void d(int i) {
        this.c = i;
    }

    public abstract int e();

    public int e(int i) {
        if (this.f387a == 0) {
            return -1;
        }
        return this.c == 1 ? this.f388b % this.f387a : a(i);
    }

    public abstract int f();
}
