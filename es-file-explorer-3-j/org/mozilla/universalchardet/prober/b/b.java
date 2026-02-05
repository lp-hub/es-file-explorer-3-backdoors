package org.mozilla.universalchardet.prober.b;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    protected d f3522a;

    /* renamed from: b, reason: collision with root package name */
    protected int f3523b = 0;
    protected int c;
    protected int d;

    public b(d dVar) {
        this.f3522a = dVar;
    }

    public int a() {
        return this.c;
    }

    public int a(byte b2) {
        int a2 = this.f3522a.a(b2);
        if (this.f3523b == 0) {
            this.d = 0;
            this.c = this.f3522a.a(a2);
        }
        this.f3523b = this.f3522a.a(a2, this.f3523b);
        this.d++;
        return this.f3523b;
    }

    public void b() {
        this.f3523b = 0;
    }
}
