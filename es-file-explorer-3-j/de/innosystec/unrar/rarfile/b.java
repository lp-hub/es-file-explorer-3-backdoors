package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    Log f3404a;

    /* renamed from: b, reason: collision with root package name */
    protected long f3405b;
    protected short c;
    protected byte d;
    protected short e;
    protected short f;

    public b() {
        this.f3404a = LogFactory.getLog(b.class.getName());
        this.c = (short) 0;
        this.d = (byte) 0;
        this.e = (short) 0;
        this.f = (short) 0;
    }

    public b(b bVar) {
        this.f3404a = LogFactory.getLog(b.class.getName());
        this.c = (short) 0;
        this.d = (byte) 0;
        this.e = (short) 0;
        this.f = (short) 0;
        this.e = bVar.f();
        this.c = bVar.g();
        this.d = bVar.i().getHeaderByte();
        this.f = bVar.h();
        this.f3405b = bVar.e();
    }

    public b(byte[] bArr) {
        this.f3404a = LogFactory.getLog(b.class.getName());
        this.c = (short) 0;
        this.d = (byte) 0;
        this.e = (short) 0;
        this.f = (short) 0;
        this.c = de.innosystec.unrar.b.b.b(bArr, 0);
        this.d = (byte) ((bArr[2] & 255) | this.d);
        this.e = de.innosystec.unrar.b.b.b(bArr, 3);
        this.f = de.innosystec.unrar.b.b.b(bArr, 5);
    }

    public void a(long j) {
        this.f3405b = j;
    }

    public boolean a() {
        return (this.e & 2) != 0;
    }

    public boolean b() {
        return (this.e & 8) != 0;
    }

    public boolean c() {
        return (this.e & 512) != 0;
    }

    public boolean d() {
        if (UnrarHeadertype.SubHeader.equals(this.d)) {
            return true;
        }
        return UnrarHeadertype.NewSubHeader.equals(this.d) && (this.e & 16) != 0;
    }

    public long e() {
        return this.f3405b;
    }

    public short f() {
        return this.e;
    }

    public short g() {
        return this.c;
    }

    public short h() {
        return this.f;
    }

    public UnrarHeadertype i() {
        return UnrarHeadertype.findType(this.d);
    }

    public void j() {
        StringBuilder sb = new StringBuilder();
        sb.append("HeaderType: " + i());
        sb.append("\nHeadCRC: " + Integer.toHexString(g()));
        sb.append("\nFlags: " + Integer.toHexString(f()));
        sb.append("\nHeaderSize: " + ((int) h()));
        sb.append("\nPosition in file: " + e());
        this.f3404a.info(sb.toString());
    }
}
