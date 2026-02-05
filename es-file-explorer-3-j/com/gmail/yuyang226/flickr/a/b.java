package com.gmail.yuyang226.flickr.a;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public int f3256a;

    /* renamed from: b, reason: collision with root package name */
    public int f3257b;
    public int c;
    public int d;

    public b() {
    }

    public b(int i, int i2, int i3, int i4) {
        this.f3256a = i;
        this.f3257b = i2;
        this.c = i3;
        this.d = i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof b)) {
            b bVar = (b) obj;
            return this.d == bVar.d && this.c == bVar.c && this.f3256a == bVar.f3256a && this.f3257b == bVar.f3257b;
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.d + 31) * 31) + this.c) * 31) + this.f3256a) * 31) + this.f3257b;
    }
}
