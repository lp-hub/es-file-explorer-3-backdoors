package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private long f3425a;

    /* renamed from: b, reason: collision with root package name */
    private long f3426b;
    private long c;

    public long a() {
        return this.f3426b;
    }

    public void a(int i) {
        c(c() + i);
    }

    public void a(long j) {
        this.f3426b = 4294967295L & j;
    }

    public long b() {
        return this.f3425a & 4294967295L;
    }

    public void b(long j) {
        this.f3425a = 4294967295L & j;
    }

    public long c() {
        return this.c;
    }

    public void c(long j) {
        this.c = 4294967295L & j;
    }

    public String toString() {
        return "SubRange[\n  lowCount=" + this.f3425a + "\n  highCount=" + this.f3426b + "\n  scale=" + this.c + "]";
    }
}
