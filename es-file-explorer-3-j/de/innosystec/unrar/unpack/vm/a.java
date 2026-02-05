package de.innosystec.unrar.unpack.vm;

/* loaded from: classes.dex */
public class a {
    protected int ak;
    protected int al;
    protected byte[] am = new byte[32768];

    public void c(int i) {
        int i2 = this.al + i;
        this.ak += i2 >> 3;
        this.al = i2 & 7;
    }

    public void d(int i) {
        c(i);
    }

    public boolean e(int i) {
        return this.ak + i >= 32768;
    }

    public void l() {
        this.ak = 0;
        this.al = 0;
    }

    public int m() {
        return (((((this.am[this.ak] & 255) << 16) + ((this.am[this.ak + 1] & 255) << 8)) + (this.am[this.ak + 2] & 255)) >>> (8 - this.al)) & 65535;
    }

    public int n() {
        return m();
    }

    public byte[] o() {
        return this.am;
    }
}
