package com.b.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
class r extends p implements l, o {
    /* JADX INFO: Access modifiers changed from: protected */
    public r(s sVar, j jVar, boolean z) {
        super(sVar, jVar);
        this.l = new m(this);
        a(jVar, z);
    }

    private void g() {
        this.e = true;
        this.f111a.a(160, (j) null);
        e();
        throw new IOException("Operation aborted by client");
    }

    @Override // b.a.a.c
    public InputStream a() {
        if (this.d) {
            throw new IOException("operation closed");
        }
        if (this.m) {
            throw new IOException("input stream already open");
        }
        com.b.a.a.a("openInputStream");
        this.m = true;
        return this.l;
    }

    @Override // com.b.a.a.o
    public void a(m mVar) {
        if (this.f || this.h) {
            mVar.a(null, true);
            return;
        }
        com.b.a.a.a("server operation reply continue");
        this.f111a.a(144, this.c);
        this.c = null;
        f();
    }

    @Override // com.b.a.a.l
    public void a(boolean z, byte[] bArr) {
        if (this.f111a.i) {
            f();
            if (this.f111a.i) {
                throw new IOException("Client not requesting data");
            }
        }
        j c = t.c();
        c.a(z ? 73 : 72, bArr);
        if (this.c != null) {
            j.a(c, this.c);
            this.c = null;
        }
        this.f111a.a(144, c);
        f();
    }

    @Override // b.a.a.d
    public OutputStream c() {
        if (this.d) {
            throw new IOException("operation closed");
        }
        if (this.j != null) {
            throw new IOException("output stream already open");
        }
        this.j = new n(this.f111a.d, this);
        return this.j;
    }

    @Override // com.b.a.a.p, b.a.a.a
    public void e() {
        com.b.a.a.a("server close put operation");
        if (this.l != null) {
            this.l.close();
            this.l = null;
        }
        if (this.j != null) {
            this.j.close();
            this.j = null;
        }
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
            case 2:
            case 130:
                j a2 = j.a(f[0], f, 3);
                if (this.f111a.a(a2)) {
                    j.a(this.f112b, a2);
                    a(a2, z);
                } else {
                    this.h = true;
                    this.f111a.a(193, (j) null);
                }
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
}
