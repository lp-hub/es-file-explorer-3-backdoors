package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class j extends p {
    private Log g;
    private int h;
    private int i;

    public j(p pVar, byte[] bArr) {
        super(pVar);
        this.g = LogFactory.getLog(getClass());
        this.h = de.innosystec.unrar.b.b.c(bArr, 0);
        this.i = de.innosystec.unrar.b.b.c(bArr, 4);
    }

    @Override // de.innosystec.unrar.rarfile.p, de.innosystec.unrar.rarfile.c, de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        this.g.info("filetype: " + this.h);
        this.g.info("creator :" + this.i);
    }
}
