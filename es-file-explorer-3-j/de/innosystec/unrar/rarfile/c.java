package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class c extends b {
    private Log g;
    private int h;
    private int i;

    public c() {
        this.g = LogFactory.getLog(c.class.getName());
    }

    public c(b bVar, byte[] bArr) {
        super(bVar);
        this.g = LogFactory.getLog(c.class.getName());
        this.i = de.innosystec.unrar.b.b.c(bArr, 0);
        this.h = this.i;
    }

    public c(c cVar) {
        super(cVar);
        this.g = LogFactory.getLog(c.class.getName());
        this.i = cVar.k();
        this.h = this.i;
        this.f3405b = cVar.e();
    }

    @Override // de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        this.g.info("DataSize: " + k() + " packSize: " + l());
    }

    public int k() {
        return this.h;
    }

    public int l() {
        return this.i;
    }
}
