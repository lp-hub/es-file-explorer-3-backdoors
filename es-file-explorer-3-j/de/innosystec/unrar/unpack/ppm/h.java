package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class h extends d {

    /* renamed from: a, reason: collision with root package name */
    private int f3429a;

    public h(byte[] bArr) {
        super(bArr);
    }

    public int a() {
        if (this.c != null) {
            this.f3429a = de.innosystec.unrar.b.b.c(this.c, this.d);
        }
        return this.f3429a;
    }

    public void a(int i) {
        this.f3429a = i;
        if (this.c != null) {
            de.innosystec.unrar.b.b.c(this.c, this.d, i);
        }
    }

    public void a(h hVar) {
        a(hVar.e());
    }

    public String toString() {
        return "State[\n  pos=" + this.d + "\n  size=4\n  next=" + a() + "\n]";
    }
}
