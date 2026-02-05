package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private long f3423a;

    /* renamed from: b, reason: collision with root package name */
    private long f3424b;
    private long c;
    private final f d = new f();
    private de.innosystec.unrar.unpack.b e;

    private int e() {
        return this.e.a();
    }

    public long a(int i) {
        this.c >>>= i;
        return ((this.f3424b - this.f3423a) / this.c) & 4294967295L;
    }

    public f a() {
        return this.d;
    }

    public void a(de.innosystec.unrar.unpack.b bVar) {
        this.e = bVar;
        this.f3424b = 0L;
        this.f3423a = 0L;
        this.c = 4294967295L;
        for (int i = 0; i < 4; i++) {
            this.f3424b = ((this.f3424b << 8) | e()) & 4294967295L;
        }
    }

    public int b() {
        this.c = (this.c / this.d.c()) & 4294967295L;
        return (int) ((this.f3424b - this.f3423a) / this.c);
    }

    public void c() {
        this.f3423a = (this.f3423a + (this.c * this.d.b())) & 4294967295L;
        this.c = (this.c * (this.d.a() - this.d.b())) & 4294967295L;
    }

    public void d() {
        boolean z = false;
        while (true) {
            if ((this.f3423a ^ (this.f3423a + this.c)) >= 16777216) {
                z = this.c < 32768;
                if (!z) {
                    return;
                }
            }
            if (z) {
                this.c = (-this.f3423a) & 32767 & 4294967295L;
                z = false;
            }
            this.f3424b = ((this.f3424b << 8) | e()) & 4294967295L;
            this.c = (this.c << 8) & 4294967295L;
            this.f3423a = (this.f3423a << 8) & 4294967295L;
        }
    }

    public String toString() {
        return "RangeCoder[\n  low=" + this.f3423a + "\n  code=" + this.f3424b + "\n  range=" + this.c + "\n  subrange=" + this.d + "]";
    }
}
