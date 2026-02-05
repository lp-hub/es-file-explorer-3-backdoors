package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class a extends d {
    public a(byte[] bArr) {
        super(bArr);
    }

    public int a() {
        return de.innosystec.unrar.b.b.b(this.c, this.d) & 65535;
    }

    public a a(byte[] bArr) {
        this.c = bArr;
        this.d = 0;
        return this;
    }

    public void a(int i) {
        de.innosystec.unrar.b.b.a(this.c, this.d, (short) i);
    }

    public void a(j jVar) {
        a_(jVar.e());
    }

    public void a_(int i) {
        de.innosystec.unrar.b.b.c(this.c, this.d + 2, i);
    }

    public int b() {
        return de.innosystec.unrar.b.b.c(this.c, this.d + 2);
    }

    public void b(int i) {
        de.innosystec.unrar.b.b.b(this.c, this.d, i);
    }

    public String toString() {
        return "FreqData[\n  pos=" + this.d + "\n  size=6\n  summFreq=" + a() + "\n  stats=" + b() + "\n]";
    }
}
