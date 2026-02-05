package org.mozilla.universalchardet.prober.b;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    protected c f3526a;

    /* renamed from: b, reason: collision with root package name */
    protected int f3527b;
    protected c c;
    protected int[] d;
    protected String e;

    public d(c cVar, int i, c cVar2, int[] iArr, String str) {
        this.f3526a = cVar;
        this.f3527b = i;
        this.c = cVar2;
        this.d = iArr;
        this.e = str;
    }

    public int a(byte b2) {
        return this.f3526a.a(b2 & 255);
    }

    public int a(int i) {
        return this.d[i];
    }

    public int a(int i, int i2) {
        return this.c.a((this.f3527b * i2) + i);
    }
}
