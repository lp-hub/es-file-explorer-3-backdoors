package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public class n extends c {
    private byte g;
    private short h;
    private int i;
    private byte j;

    public n(c cVar, byte[] bArr) {
        super(cVar);
        this.g = (byte) (this.g | (bArr[0] & 255));
        this.h = de.innosystec.unrar.b.b.b(bArr, 0);
        this.i = de.innosystec.unrar.b.b.c(bArr, 2);
        this.j = (byte) ((bArr[6] & 255) | this.j);
    }
}
