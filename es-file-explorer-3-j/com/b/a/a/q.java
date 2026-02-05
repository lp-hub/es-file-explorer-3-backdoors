package com.b.a.a;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class q extends p implements l, o {
    /* JADX INFO: Access modifiers changed from: protected */
    public q(s sVar, j jVar, boolean z) {
        super(sVar, jVar);
        if (z) {
            this.g = true;
            this.f = true;
        }
        this.l = new m(this);
        a(jVar, z);
    }

    private void g() {
        this.f = true;
        this.g = true;
        this.e = true;
        this.f111a.a(160, (j) null);
        throw new IOException("Operation aborted");
    }

    @Override // b.a.a.c
    public InputStream a() {
        if (this.d) {
            throw new IOException("operation closed");
        }
        if (this.m) {
            throw new IOException("input stream already open");
        }
        this.m = true;
        return this.l;
    }

    @Override // com.b.a.a.o
    public void a(m mVar) {
        if (this.g || this.h) {
            this.l.a(null, true);
            return;
        }
        com.b.a.a.a("server operation reply continue");
        this.f111a.a(144, this.c);
        this.c = null;
        f();
    }

    @Override // com.b.a.a.l
    public void a(boolean z, byte[] bArr) {
        int i;
        int i2;
        if (this.f111a.i) {
            f();
            if (this.f111a.i) {
                throw new IOException("Client not requesting data");
            }
        }
        j c = t.c();
        if (z) {
            i = this.e ? 160 : 144;
            i2 = 73;
        } else {
            i = 144;
            i2 = 72;
        }
        c.a(i2, bArr);
        if (this.c != null) {
            j.a(c, this.c);
            this.c = null;
        }
        this.f111a.a(i, c);
        if (this.e) {
            return;
        }
        f();
    }

    @Override // com.b.a.a.p, b.a.a.c
    public /* bridge */ /* synthetic */ DataInputStream b() {
        return super.b();
    }

    @Override // com.b.a.a.p, b.b.d
    public /* bridge */ /* synthetic */ void b(b.b.c cVar) {
        super.b(cVar);
    }

    @Override // b.a.a.d
    public OutputStream c() {
        if (this.d) {
            throw new IOException("operation closed");
        }
        if (this.j != null) {
            throw new IOException("output stream already open");
        }
        this.g = true;
        this.j = new n(this.f111a.d, this);
        this.f111a.a(144, this.c);
        this.c = null;
        return this.j;
    }

    @Override // com.b.a.a.p, b.a.a.d
    public /* bridge */ /* synthetic */ DataOutputStream d() {
        return super.d();
    }

    @Override // com.b.a.a.p, b.a.a.a
    public void e() {
        if (this.j != null) {
            this.j.close();
            this.j = null;
        }
        this.l.close();
        super.e();
    }

    @Override // com.b.a.a.p
    protected boolean f() {
        byte[] f = this.f111a.f();
        int i = f[0] & 255;
        boolean z = (i & 128) != 0;
        if (z) {
            com.b.a.a.a("server operation got final packet");
            this.f = true;
        }
        switch (i) {
            case 3:
            case 131:
                if (z) {
                    this.g = true;
                }
                j a2 = j.a(f[0], f, 3);
                j.a(this.f112b, a2);
                a(a2, z);
                return z;
            case 255:
                g();
                return z;
            default:
                this.h = true;
                com.b.a.a.a("server operation invalid request", v.c(i), i);
                this.f111a.a(192, (j) null);
                return z;
        }
    }

    @Override // com.b.a.a.p, b.b.d
    public /* bridge */ /* synthetic */ b.b.c h() {
        return super.h();
    }

    @Override // com.b.a.a.p, b.b.d
    public /* bridge */ /* synthetic */ int i() {
        return super.i();
    }

    @Override // com.b.a.a.p, com.b.a.a.k
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }
}
