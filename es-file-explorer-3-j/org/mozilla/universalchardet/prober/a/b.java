package org.mozilla.universalchardet.prober.a;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    protected int[] f3518a;

    /* renamed from: b, reason: collision with root package name */
    protected float f3519b;
    protected boolean c;
    private int d;
    private int e;

    public b() {
        b();
    }

    public float a() {
        if (this.e <= 0 || this.d <= 4) {
            return 0.01f;
        }
        if (this.e != this.d) {
            float f = (this.d / (this.e - this.d)) * this.f3519b;
            if (f < 0.99f) {
                return f;
            }
        }
        return 0.99f;
    }

    protected abstract int a(byte[] bArr, int i);

    public void a(byte[] bArr, int i, int i2) {
        int a2 = i2 == 2 ? a(bArr, i) : -1;
        if (a2 >= 0) {
            this.e++;
            if (a2 >= this.f3518a.length || 512 <= this.f3518a[a2]) {
                return;
            }
            this.d++;
        }
    }

    public void b() {
        this.c = false;
        this.e = 0;
        this.d = 0;
    }

    public boolean c() {
        return this.e > 1024;
    }
}
