package de.a.a.a.a;

import java.util.zip.ZipException;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    protected h f3389a;

    /* renamed from: b, reason: collision with root package name */
    protected long f3390b;
    protected boolean c;
    protected boolean d;
    protected short e;
    protected long f;
    protected String g;
    protected int h;
    protected short i;
    protected short j;
    protected long k;
    protected int l;
    protected int m;
    protected byte n;
    protected short o = 0;

    public g(h hVar, long j) {
        this.f3389a = hVar;
        this.f3390b = j;
        a();
    }

    protected void a() {
        if (this.f3389a.a(this.f3390b) != 33639248) {
            throw new ZipException("expected CENSIC not found in central directory (at end of zip file)");
        }
        this.o = this.f3389a.b(this.f3390b + 8);
        this.c = (this.o & 1) > 0;
        this.i = this.f3389a.b(this.f3390b + 10);
        this.l = this.f3389a.a(this.f3390b + 20);
        this.m = this.f3389a.a(this.f3390b + 24);
        this.e = this.f3389a.b(this.f3390b + 28);
        this.k = this.f3389a.a(this.f3390b + 28 + 14) & 4294967295L;
        this.g = new String(this.f3389a.a(this.f3390b + 46, this.e), "utf-8");
        this.f = this.k + 30 + this.e;
        this.j = this.f3389a.b(this.k + 28);
        if (this.c) {
            byte[] a2 = this.f3389a.a(this.f, 2);
            if (a2[0] == 1 && a2[1] == -103) {
                this.d = true;
                this.n = this.f3389a.c(this.f + 8);
                this.i = this.f3389a.b(this.f + 9);
            } else {
                if (this.j == 0) {
                    throw new ZipException("extra field is of length 0 - this is probably not a WinZip AES encrypted entry");
                }
                byte[] a3 = this.f3389a.a(this.f, this.j);
                int length = a3.length;
                int i = 0;
                while (i < length - 1 && a3[i] != 1 && a3[i + 1] != -103) {
                    byte[] bArr = new byte[2];
                    System.arraycopy(a3, i + 2, bArr, 0, bArr.length);
                    i += f.b(bArr) + 4;
                }
                if (i <= length - 2) {
                    a2[0] = a3[i];
                    a2[1] = a3[i + 1];
                    if (a2[0] == 1 && a2[1] == -103) {
                        this.d = true;
                        this.n = a3[i + 8];
                        this.i = f.b(new byte[]{a3[i + 9], a3[i + 10]});
                    }
                }
            }
        }
        this.h = this.j + 30 + this.e;
    }

    public int b() {
        return this.l;
    }

    public int c() {
        return this.m;
    }

    public boolean d() {
        return this.c;
    }

    public short e() {
        return this.j;
    }

    public long f() {
        return this.k;
    }

    protected long g() {
        return this.f;
    }

    public long h() {
        return f() + k() + l();
    }

    public short i() {
        return this.i;
    }

    public byte j() {
        return this.n;
    }

    public int k() {
        return this.h;
    }

    public short l() {
        return this.d ? (short) 18 : (short) 0;
    }

    public boolean m() {
        return this.d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("fileName\t\t = ").append(this.g).append('\n');
        sb.append("uncompressedSize\t = ").append(c()).append('\n');
        sb.append("compressedSize\t\t = ").append(b()).append('\n');
        sb.append("encryptionStrength\t = ").append((int) j()).append('\n');
        sb.append("extraFieldOffset\t = ").append(g()).append('\n');
        sb.append("extraFieldLength\t = ").append((int) e()).append('\n');
        sb.append("localHeaderOffset\t = ").append(f()).append('\n');
        sb.append("localHeaderSize\t\t = ").append(k()).append('\n');
        sb.append("offset\t\t\t = ").append(h()).append('\n');
        return sb.toString();
    }
}
