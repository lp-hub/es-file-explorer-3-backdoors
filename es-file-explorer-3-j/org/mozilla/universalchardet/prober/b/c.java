package org.mozilla.universalchardet.prober.b;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private int f3524a;

    /* renamed from: b, reason: collision with root package name */
    private int f3525b;
    private int c;
    private int d;
    private int[] e;

    public c(int i, int i2, int i3, int i4, int[] iArr) {
        this.f3524a = i;
        this.f3525b = i2;
        this.c = i3;
        this.d = i4;
        this.e = iArr;
    }

    public static int a(int i, int i2) {
        return (i2 << 16) | i;
    }

    public static int a(int i, int i2, int i3, int i4) {
        return a((i2 << 8) | i, (i4 << 8) | i3);
    }

    public static int a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return a((i2 << 4) | i, (i4 << 4) | i3, (i6 << 4) | i5, (i8 << 4) | i7);
    }

    public int a(int i) {
        return (this.e[i >> this.f3524a] >> ((this.f3525b & i) << this.c)) & this.d;
    }
}
