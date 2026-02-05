package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class j extends d {
    public j(byte[] bArr) {
        super(bArr);
    }

    public static void a(j jVar, j jVar2) {
        byte[] bArr = jVar.c;
        byte[] bArr2 = jVar2.c;
        int i = 0;
        int i2 = jVar.d;
        int i3 = jVar2.d;
        while (i < 6) {
            byte b2 = bArr[i2];
            bArr[i2] = bArr2[i3];
            bArr2[i3] = b2;
            i++;
            i2++;
            i3++;
        }
    }

    public int a() {
        return this.c[this.d] & 255;
    }

    public j a(byte[] bArr) {
        this.c = bArr;
        this.d = 0;
        return this;
    }

    public void a(int i) {
        this.c[this.d] = (byte) i;
    }

    public void a(c cVar) {
        e(cVar.e());
    }

    public void a(j jVar) {
        System.arraycopy(jVar.c, jVar.d, this.c, this.d, 6);
    }

    public void a(k kVar) {
        a(kVar.a());
        b(kVar.b());
        e(kVar.c());
    }

    public int b() {
        return this.c[this.d + 1] & 255;
    }

    public void b(int i) {
        this.c[this.d + 1] = (byte) i;
    }

    public int c() {
        return de.innosystec.unrar.b.b.c(this.c, this.d + 2);
    }

    public j d() {
        c(this.d - 6);
        return this;
    }

    public void d(int i) {
        byte[] bArr = this.c;
        int i2 = this.d + 1;
        bArr[i2] = (byte) (bArr[i2] + i);
    }

    public void e(int i) {
        de.innosystec.unrar.b.b.c(this.c, this.d + 2, i);
    }

    public j f() {
        c(this.d + 6);
        return this;
    }

    public String toString() {
        return "State[\n  pos=" + this.d + "\n  size=6\n  symbol=" + a() + "\n  freq=" + b() + "\n  successor=" + c() + "\n]";
    }
}
