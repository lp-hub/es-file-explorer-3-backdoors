package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class i extends c {
    private Log g;
    private int h;
    private HostSystem i;
    private int j;
    private int k;
    private byte l;
    private byte m;
    private short n;
    private int o;
    private int p;
    private byte[] q;
    private String r;
    private String s;
    private byte[] t;
    private long u;
    private long v;
    private int w;
    private int x;

    public i(c cVar, byte[] bArr, de.innosystec.unrar.a aVar) {
        super(cVar);
        this.g = LogFactory.getLog(i.class.getName());
        this.t = new byte[8];
        this.x = -1;
        this.h = de.innosystec.unrar.b.b.c(bArr, 0);
        this.i = HostSystem.findHostSystem(bArr[4]);
        this.j = de.innosystec.unrar.b.b.c(bArr, 5);
        this.k = de.innosystec.unrar.b.b.c(bArr, 9);
        this.l = (byte) (this.l | (bArr[13] & 255));
        this.m = (byte) (this.m | (bArr[14] & 255));
        this.n = de.innosystec.unrar.b.b.b(bArr, 15);
        this.w = de.innosystec.unrar.b.b.c(bArr, 17);
        int i = 21;
        if (p()) {
            this.o = de.innosystec.unrar.b.b.c(bArr, 21);
            this.p = de.innosystec.unrar.b.b.c(bArr, 25);
            i = 29;
        } else {
            this.o = 0;
            this.p = 0;
            if (this.h == -1) {
                this.h = -1;
                this.p = Integer.MAX_VALUE;
            }
        }
        this.u |= this.o;
        this.u <<= 32;
        this.u |= l();
        this.v |= this.p;
        this.v <<= 32;
        this.v |= this.h;
        this.n = this.n <= 4096 ? this.n : (short) 4096;
        this.q = new byte[this.n];
        int i2 = i;
        for (int i3 = 0; i3 < this.n; i3++) {
            this.q[i3] = bArr[i2];
            i2++;
        }
        if (o() && n()) {
            this.r = "";
            this.s = "";
            int i4 = 0;
            while (i4 < this.q.length && this.q[i4] != 0) {
                i4++;
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(this.q, 0, bArr2, 0, bArr2.length);
            this.q = bArr2;
        }
    }

    public long m() {
        return this.u;
    }

    public boolean n() {
        return (this.e & 512) != 0;
    }

    public boolean o() {
        return UnrarHeadertype.FileHeader.equals(this.d);
    }

    public boolean p() {
        return (this.e & 256) != 0;
    }

    public byte[] q() {
        return this.q;
    }
}
