package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public class o extends b {
    private int g;
    private short h;
    private short i;

    public o(b bVar, byte[] bArr) {
        super(bVar);
        this.g = 0;
        this.h = (short) 0;
        this.i = (short) 0;
        this.g = de.innosystec.unrar.b.b.c(bArr, 0);
        this.h = de.innosystec.unrar.b.b.b(bArr, 4);
        this.i = de.innosystec.unrar.b.b.b(bArr, 6);
    }
}
