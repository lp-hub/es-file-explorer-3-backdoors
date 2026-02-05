package de.innosystec.unrar.rarfile;

/* loaded from: classes.dex */
public class f extends b {
    private int g;
    private short h;

    public f(b bVar, byte[] bArr) {
        super(bVar);
        int i = 0;
        if (a()) {
            this.g = de.innosystec.unrar.b.b.c(bArr, 0);
            i = 4;
        }
        if (b()) {
            this.h = de.innosystec.unrar.b.b.b(bArr, i);
        }
    }
}
