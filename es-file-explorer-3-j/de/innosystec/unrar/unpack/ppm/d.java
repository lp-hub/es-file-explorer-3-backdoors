package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public abstract class d {
    static final /* synthetic */ boolean e;
    protected byte[] c;
    protected int d;

    static {
        e = !d.class.desiredAssertionStatus();
    }

    public d(byte[] bArr) {
        this.c = bArr;
    }

    public void c(int i) {
        if (!e && this.c == null) {
            throw new AssertionError();
        }
        if (!e && (i < 0 || i >= this.c.length)) {
            throw new AssertionError(i);
        }
        this.d = i;
    }

    public int e() {
        if (e || this.c != null) {
            return this.d;
        }
        throw new AssertionError();
    }
}
