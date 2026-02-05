package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class k extends b {
    private Log g;
    private short h;
    private int i;
    private byte j;

    public k(b bVar, byte[] bArr) {
        super(bVar);
        this.g = LogFactory.getLog(k.class.getName());
        this.h = de.innosystec.unrar.b.b.b(bArr, 0);
        this.i = de.innosystec.unrar.b.b.c(bArr, 2);
        if (c()) {
            this.j = (byte) ((bArr[6] & 255) | this.j);
        }
    }

    @Override // de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        StringBuilder sb = new StringBuilder();
        sb.append("posav: " + n());
        sb.append("\nhighposav: " + ((int) m()));
        sb.append("\nhasencversion: " + c() + (c() ? Byte.valueOf(l()) : ""));
        sb.append("\nhasarchcmt: " + k());
        sb.append("\nisEncrypted: " + o());
        sb.append("\nisMultivolume: " + p());
        sb.append("\nisFirstvolume: " + q());
        sb.append("\nisSolid: " + r());
        sb.append("\nisLocked: " + s());
        sb.append("\nisProtected: " + t());
        sb.append("\nisAV: " + u());
        this.g.info(sb.toString());
    }

    public boolean k() {
        return (this.e & 2) != 0;
    }

    public byte l() {
        return this.j;
    }

    public short m() {
        return this.h;
    }

    public int n() {
        return this.i;
    }

    public boolean o() {
        return (this.e & 128) != 0;
    }

    public boolean p() {
        return (this.e & 1) != 0;
    }

    public boolean q() {
        return (this.e & 256) != 0;
    }

    public boolean r() {
        return (this.e & 8) != 0;
    }

    public boolean s() {
        return (this.e & 4) != 0;
    }

    public boolean t() {
        return (this.e & 64) != 0;
    }

    public boolean u() {
        return (this.e & 32) != 0;
    }

    public boolean v() {
        return (this.e & 16) != 0;
    }
}
