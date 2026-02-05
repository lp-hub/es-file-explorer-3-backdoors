package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class p extends c {
    private Log g;
    private short h;
    private byte i;

    public p(c cVar, byte[] bArr) {
        super(cVar);
        this.g = LogFactory.getLog(getClass());
        this.h = de.innosystec.unrar.b.b.b(bArr, 0);
        this.i = (byte) ((bArr[2] & 255) | this.i);
    }

    public p(p pVar) {
        super(pVar);
        this.g = LogFactory.getLog(getClass());
        this.h = pVar.n().getSubblocktype();
        this.i = pVar.m();
    }

    @Override // de.innosystec.unrar.rarfile.c, de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        this.g.info("subtype: " + n());
        this.g.info("level: " + ((int) this.i));
    }

    public byte m() {
        return this.i;
    }

    public SubBlockHeaderType n() {
        return SubBlockHeaderType.findSubblockHeaderType(this.h);
    }
}
