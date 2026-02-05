package com.b.a.a;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
abstract class e implements b.b.d, k, l, o {

    /* renamed from: a, reason: collision with root package name */
    protected h f100a;

    /* renamed from: b, reason: collision with root package name */
    protected char f101b;
    protected b.b.c c;
    protected boolean f;
    protected n g;
    protected boolean h = false;
    protected boolean j = false;
    protected boolean k = false;
    protected boolean l = false;
    protected boolean m = false;
    protected j n = null;
    private boolean p = false;
    protected boolean d = false;
    protected boolean e = false;
    protected Object o = new Object();
    protected m i = new m(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(h hVar, char c, j jVar) {
        this.f100a = hVar;
        this.f101b = c;
        a(jVar);
    }

    private void b(j jVar) {
        try {
            this.f100a.a(this.f101b, jVar);
            byte[] f = this.f100a.f();
            j a2 = j.a(f[0], f, 3);
            this.f100a.a(a2, (b.b.f) null);
            int b2 = a2.b();
            com.b.a.a.a("client operation got reply", v.c(b2), b2);
            switch (b2) {
                case 144:
                    a((b.b.c) a2);
                    a((b.b.c) a2, false);
                    this.f = true;
                    return;
                case 160:
                    a((b.b.c) a2);
                    a((b.b.c) a2, true);
                    this.e = false;
                    this.f = false;
                    return;
                case 193:
                    if (this.p || !a2.d()) {
                        this.k = true;
                        this.f = false;
                        a((b.b.c) a2);
                        throw new IOException("Authentication Failure");
                    }
                    com.b.a.a.a("client resend request with auth response");
                    j b3 = j.b(jVar);
                    this.f100a.b(a2, b3);
                    this.p = true;
                    b(b3);
                    return;
                default:
                    this.k = true;
                    this.f = false;
                    a((b.b.c) a2);
                    a((b.b.c) a2, true);
                    return;
            }
        } catch (Throwable th) {
            this.k = true;
            throw th;
        }
    }

    private void k() {
        try {
            l();
        } finally {
            this.e = false;
            this.i.close();
            m();
        }
    }

    private void l() {
        while (!j() && this.f) {
            com.b.a.a.a("operation expects operation end");
            a(this.i);
        }
    }

    private void m() {
        if (this.g != null) {
            synchronized (this.o) {
                if (this.g != null) {
                    this.g.close();
                }
                this.g = null;
            }
        }
    }

    protected void a(b.b.c cVar) {
        if (this.c != null) {
            j.a(cVar, this.c);
        }
        this.c = cVar;
    }

    protected void a(b.b.c cVar, boolean z) {
        byte[] bArr = (byte[]) cVar.a(72);
        if (bArr == null && (bArr = (byte[]) cVar.a(73)) != null) {
            this.m = true;
            z = true;
        }
        if (bArr != null) {
            com.b.a.a.a("client received Data eof: " + z + " len: ", bArr.length);
            this.i.a(bArr, z);
        } else if (z) {
            this.i.a(null, z);
        }
    }

    protected void a(j jVar) {
        this.n = jVar;
    }

    @Override // com.b.a.a.o
    public void a(m mVar) {
        b(this.n);
        this.n = null;
    }

    @Override // com.b.a.a.l
    public void a(boolean z, byte[] bArr) {
        if (this.l) {
            return;
        }
        if (this.n != null) {
            b(this.n);
            this.n = null;
        }
        int i = 72;
        if (z) {
            this.f101b = (char) (this.f101b | 128);
            i = 73;
            com.b.a.a.a("client Request Phase ended");
            this.l = true;
        }
        j c = t.c();
        c.a(i, bArr);
        b(c);
    }

    @Override // b.a.a.c
    public DataInputStream b() {
        return new DataInputStream(a());
    }

    @Override // b.b.d
    public void b(b.b.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("headers are null");
        }
        j.a(cVar);
        g();
        if (this.l) {
            throw new IOException("the request phase has already ended");
        }
        if (this.n != null) {
            b(this.n);
            this.n = null;
        }
        b((j) cVar);
    }

    @Override // b.a.a.d
    public DataOutputStream d() {
        return new DataOutputStream(c());
    }

    @Override // b.a.a.a
    public void e() {
        try {
            f();
        } finally {
            k();
            if (!this.d) {
                this.d = true;
                com.b.a.a.a("client operation closed");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        if (this.l) {
            return;
        }
        com.b.a.a.a("client ends Request Phase");
        this.e = false;
        this.l = true;
        this.f101b = (char) (this.f101b | 128);
        b(this.n);
        this.n = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        if (this.d) {
            throw new IOException("operation closed");
        }
    }

    @Override // b.b.d
    public b.b.c h() {
        g();
        f();
        return j.b(this.c);
    }

    @Override // b.b.d
    public int i() {
        g();
        f();
        m();
        l();
        return this.c.b();
    }

    @Override // com.b.a.a.k
    public boolean j() {
        return this.d || this.k;
    }
}
