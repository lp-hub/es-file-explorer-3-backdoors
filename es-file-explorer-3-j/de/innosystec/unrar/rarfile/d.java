package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public class d extends b {
    private short g;
    private byte h;
    private byte i;
    private short j;

    public d(b bVar, byte[] bArr) {
        super(bVar);
        this.g = de.innosystec.unrar.b.b.b(bArr, 0);
        this.h = (byte) ((bArr[2] & 255) | this.h);
        this.i = (byte) ((bArr[3] & 255) | this.i);
        this.j = de.innosystec.unrar.b.b.b(bArr, 4);
    }
}
