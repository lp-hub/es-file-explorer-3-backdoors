package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class g extends d {

    /* renamed from: a, reason: collision with root package name */
    private int f3427a;

    /* renamed from: b, reason: collision with root package name */
    private int f3428b;
    private int f;
    private int g;

    public g(byte[] bArr) {
        super(bArr);
    }

    public void a() {
        g gVar = new g(this.c);
        gVar.c(d());
        gVar.a(b());
        gVar.c(b());
        gVar.d(d());
    }

    public void a(int i) {
        this.f = i;
        if (this.c != null) {
            de.innosystec.unrar.b.b.c(this.c, this.d + 4, i);
        }
    }

    public void a(g gVar) {
        g gVar2 = new g(this.c);
        d(gVar.e());
        gVar2.c(d());
        a(gVar2.b());
        gVar2.b(this);
        gVar2.c(b());
        gVar2.c(this);
    }

    public int b() {
        if (this.c != null) {
            this.f = de.innosystec.unrar.b.b.c(this.c, this.d + 4);
        }
        return this.f;
    }

    public void b(int i) {
        this.f3428b = 65535 & i;
        if (this.c != null) {
            de.innosystec.unrar.b.b.a(this.c, this.d + 2, (short) i);
        }
    }

    public void b(g gVar) {
        a(gVar.e());
    }

    public int c() {
        if (this.c != null) {
            this.f3428b = de.innosystec.unrar.b.b.b(this.c, this.d + 2) & 65535;
        }
        return this.f3428b;
    }

    public void c(g gVar) {
        d(gVar.e());
    }

    public int d() {
        if (this.c != null) {
            this.g = de.innosystec.unrar.b.b.c(this.c, this.d + 8);
        }
        return this.g;
    }

    public void d(int i) {
        this.g = i;
        if (this.c != null) {
            de.innosystec.unrar.b.b.c(this.c, this.d + 8, i);
        }
    }

    public void e(int i) {
        this.f3427a = i;
        if (this.c != null) {
            de.innosystec.unrar.b.b.a(this.c, this.d, (short) i);
        }
    }

    public int f() {
        if (this.c != null) {
            this.f3427a = de.innosystec.unrar.b.b.b(this.c, this.d) & 65535;
        }
        return this.f3427a;
    }
}
