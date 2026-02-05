package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public class a extends b {
    private byte g;
    private byte h;
    private byte i;
    private int j;

    public a(b bVar, byte[] bArr) {
        super(bVar);
        this.g = (byte) ((bArr[0] & 255) | this.g);
        this.h = (byte) ((bArr[1] & 255) | this.h);
        this.i = (byte) ((bArr[2] & 255) | this.i);
        this.j = de.innosystec.unrar.b.b.c(bArr, 3);
    }
}
