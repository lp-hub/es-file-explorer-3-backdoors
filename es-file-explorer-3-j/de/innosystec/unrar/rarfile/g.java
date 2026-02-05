package de.innosystec.unrar.rarfile;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.Date;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class g extends c {
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
    private byte[] u;
    private Date v;
    private long w;
    private long x;
    private int y;
    private int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(c cVar, byte[] bArr, de.innosystec.unrar.a aVar) {
        super(cVar);
        this.g = LogFactory.getLog(g.class.getName());
        this.u = new byte[8];
        this.z = -1;
        this.h = de.innosystec.unrar.b.b.c(bArr, 0);
        this.i = HostSystem.findHostSystem(bArr[4]);
        this.j = de.innosystec.unrar.b.b.c(bArr, 5);
        this.k = de.innosystec.unrar.b.b.c(bArr, 9);
        this.l = (byte) (this.l | (bArr[13] & 255));
        this.m = (byte) (this.m | (bArr[14] & 255));
        this.n = de.innosystec.unrar.b.b.b(bArr, 15);
        this.y = de.innosystec.unrar.b.b.c(bArr, 17);
        int i = 21;
        if (B()) {
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
        this.w |= this.o;
        this.w <<= 32;
        this.w |= l();
        this.x |= this.p;
        this.x <<= 32;
        this.x |= this.h;
        this.n = this.n > 4096 ? (short) 4096 : this.n;
        this.q = new byte[this.n];
        int i2 = i;
        for (int i3 = 0; i3 < this.n; i3++) {
            this.q[i3] = bArr[i2];
            i2++;
        }
        if (z()) {
            if (y()) {
                this.r = "";
                this.s = "";
                int i4 = 0;
                while (i4 < this.q.length && this.q[i4] != 0) {
                    i4++;
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(this.q, 0, bArr2, 0, bArr2.length);
                try {
                    if (aVar.j()) {
                        String a2 = com.estrongs.android.util.g.a(bArr2, bArr2.length);
                        if (Charset.isSupported(a2)) {
                            aVar.a(a2);
                        }
                    }
                    this.r = new String(bArr2, aVar.i());
                } catch (UnsupportedEncodingException e) {
                    this.r = new String(bArr2);
                }
                if (i4 != this.n) {
                    this.s = h.b(this.q, i4 + 1);
                } else {
                    this.s = this.r;
                }
            } else {
                try {
                    if (aVar.j()) {
                        String a3 = com.estrongs.android.util.g.a(this.q, this.q.length);
                        if (Charset.isSupported(a3)) {
                            aVar.a(a3);
                        }
                    }
                    this.r = new String(this.q, aVar.i());
                } catch (UnsupportedEncodingException e2) {
                    this.r = new String(this.q);
                }
                this.s = this.r;
            }
        }
        if (this.s != null) {
            this.s = this.s.replaceAll("\\?", " ");
        }
        if (UnrarHeadertype.NewSubHeader.equals(this.d)) {
            int i5 = (this.f - 32) - this.n;
            int i6 = A() ? i5 - 8 : i5;
            if (i6 > 0) {
                this.t = new byte[i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    this.t[i7] = bArr[i2];
                    i2++;
                }
            }
            if (m.f.a(this.q)) {
                this.z = this.t[8] + (this.t[9] << 8) + (this.t[10] << 16) + (this.t[11] << 24);
            }
        }
        if (A()) {
            for (int i8 = 0; i8 < 8; i8++) {
                this.u[i8] = bArr[i2];
                i2++;
            }
        }
        this.v = a(this.k);
    }

    private Date a(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, (i >>> 25) + 1980);
        calendar.set(2, ((i >>> 21) & 15) - 1);
        calendar.set(5, (i >>> 16) & 31);
        calendar.set(11, (i >>> 11) & 31);
        calendar.set(12, (i >>> 5) & 63);
        calendar.set(13, (i & 31) * 2);
        return calendar.getTime();
    }

    public boolean A() {
        return (this.e & 1024) != 0;
    }

    public boolean B() {
        return (this.e & 256) != 0;
    }

    public boolean C() {
        return (this.e & 224) == 224;
    }

    @Override // de.innosystec.unrar.rarfile.c, de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        StringBuilder sb = new StringBuilder();
        sb.append("unpSize: " + q());
        sb.append("\nHostOS: " + this.i.name());
        sb.append("\nMDate: " + this.v);
        sb.append("\nFileName: " + n());
        sb.append("\nunpMethod: " + Integer.toHexString(p()));
        sb.append("\nunpVersion: " + Integer.toHexString(r()));
        sb.append("\nfullpackedsize: " + s());
        sb.append("\nfullunpackedsize: " + t());
        sb.append("\nisEncrypted: " + x());
        sb.append("\nisfileHeader: " + z());
        sb.append("\nisSolid: " + w());
        sb.append("\nisSplitafter: " + u());
        sb.append("\nisSplitBefore:" + v());
        sb.append("\nunpSize: " + q());
        sb.append("\ndataSize: " + k());
        sb.append("\nisUnicode: " + y());
        sb.append("\nhasVolumeNumber: " + b());
        sb.append("\nhasArchiveDataCRC: " + a());
        sb.append("\nhasSalt: " + A());
        sb.append("\nhasEncryptVersions: " + c());
        sb.append("\nisSubBlock: " + d());
        this.g.info(sb.toString());
    }

    public int m() {
        return this.j;
    }

    public String n() {
        return this.r;
    }

    public String o() {
        return this.s;
    }

    public byte p() {
        return this.m;
    }

    public int q() {
        return this.h;
    }

    public byte r() {
        return this.l;
    }

    public long s() {
        return this.w;
    }

    public long t() {
        return this.x;
    }

    public String toString() {
        return super.toString();
    }

    public boolean u() {
        return (this.e & 2) != 0;
    }

    public boolean v() {
        return (this.e & 1) != 0;
    }

    public boolean w() {
        return (this.e & 16) != 0;
    }

    public boolean x() {
        return (this.e & 4) != 0;
    }

    public boolean y() {
        return (this.e & 512) != 0;
    }

    public boolean z() {
        return UnrarHeadertype.FileHeader.equals(this.d);
    }
}
