package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private int f3432a;

    /* renamed from: b, reason: collision with root package name */
    private int f3433b;
    private int c;

    public int a() {
        return this.f3432a;
    }

    public void a(int i) {
        this.f3432a = i & 255;
    }

    public void a(c cVar) {
        d(cVar.e());
    }

    public void a(j jVar) {
        b(jVar.b());
        d(jVar.c());
        a(jVar.a());
    }

    public int b() {
        return this.f3433b;
    }

    public void b(int i) {
        this.f3433b = i & 255;
    }

    public int c() {
        return this.c;
    }

    public void c(int i) {
        this.f3433b = (this.f3433b - i) & 255;
    }

    public void d(int i) {
        this.c = i;
    }

    public String toString() {
        return "State[\n  symbol=" + a() + "\n  freq=" + b() + "\n  successor=" + c() + "\n]";
    }
}
