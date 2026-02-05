package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class q extends p {
    private Log g;
    private int h;
    private int i;
    private String j;
    private String k;

    public q(p pVar, byte[] bArr) {
        super(pVar);
        this.g = LogFactory.getLog(q.class);
        this.h = de.innosystec.unrar.b.b.b(bArr, 0) & 65535;
        this.i = de.innosystec.unrar.b.b.b(bArr, 2) & 65535;
        if (this.h + 4 < bArr.length) {
            byte[] bArr2 = new byte[this.h];
            System.arraycopy(bArr, 4, bArr2, 0, this.h);
            this.j = new String(bArr2);
        }
        int i = this.h + 4;
        if (this.i + i < bArr.length) {
            byte[] bArr3 = new byte[this.i];
            System.arraycopy(bArr, i, bArr3, 0, this.i);
            this.k = new String(bArr3);
        }
    }

    @Override // de.innosystec.unrar.rarfile.p, de.innosystec.unrar.rarfile.c, de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        this.g.info("ownerNameSize: " + this.h);
        this.g.info("owner: " + this.j);
        this.g.info("groupNameSize: " + this.i);
        this.g.info("group: " + this.k);
    }
}
