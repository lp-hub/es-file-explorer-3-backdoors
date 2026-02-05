package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private int f3430a;

    /* renamed from: b, reason: collision with root package name */
    private int f3431b;
    private int c;

    public int a() {
        int i = this.f3430a >>> this.f3431b;
        this.f3430a -= i;
        return (i == 0 ? 1 : 0) + i;
    }

    public void a(int i) {
        this.f3431b = 3;
        this.f3430a = (i << this.f3431b) & 65535;
        this.c = 4;
    }

    public void b() {
        if (this.f3431b < 7) {
            int i = this.c - 1;
            this.c = i;
            if (i == 0) {
                this.f3430a += this.f3430a;
                int i2 = this.f3431b;
                this.f3431b = i2 + 1;
                this.c = 3 << i2;
            }
        }
        this.f3430a &= 65535;
        this.c &= 255;
        this.f3431b &= 255;
    }

    public void b(int i) {
        this.f3431b = i & 255;
    }

    public int c() {
        return this.f3430a;
    }

    public void c(int i) {
        this.f3430a = 65535 & i;
    }

    public void d(int i) {
        c(c() + i);
    }

    public String toString() {
        return "SEE2Context[\n  size=4\n  summ=" + this.f3430a + "\n  shift=" + this.f3431b + "\n  count=" + this.c + "\n]";
    }
}
