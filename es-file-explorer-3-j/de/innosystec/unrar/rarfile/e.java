package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class e extends p {
    private Log g;
    private int h;
    private byte i;
    private byte j;
    private int k;

    public e(p pVar, byte[] bArr) {
        super(pVar);
        this.g = LogFactory.getLog(getClass());
        this.h = de.innosystec.unrar.b.b.c(bArr, 0);
        this.i = (byte) ((bArr[4] & 255) | this.i);
        this.j = (byte) ((bArr[5] & 255) | this.j);
        this.k = de.innosystec.unrar.b.b.c(bArr, 6);
    }

    @Override // de.innosystec.unrar.rarfile.p, de.innosystec.unrar.rarfile.c, de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        this.g.info("unpSize: " + this.h);
        this.g.info("unpVersion: " + ((int) this.i));
        this.g.info("method: " + ((int) this.j));
        this.g.info("EACRC:" + this.k);
    }
}
