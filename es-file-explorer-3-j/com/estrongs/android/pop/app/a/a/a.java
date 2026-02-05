package com.estrongs.android.pop.app.a.a;

/* loaded from: classes.dex */
public class a extends c {
    @Override // com.estrongs.android.pop.app.a.a.c
    protected int a(int i) {
        if (this.f387a == 0) {
            return -1;
        }
        if (i == -1) {
            return this.f387a - 1;
        }
        if (i < this.f387a) {
            return i;
        }
        if (this.c == 2) {
            return i % this.f387a;
        }
        return -1;
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    protected void a() {
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    protected void b() {
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public void c() {
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public int d() {
        if (this.f387a == 0) {
            return -1;
        }
        return (this.f388b + 1) % this.f387a;
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public int e() {
        if (this.f387a == 0) {
            return -1;
        }
        return ((this.f388b - 1) + this.f387a) % this.f387a;
    }

    @Override // com.estrongs.android.pop.app.a.a.c
    public int f() {
        return 0;
    }
}
