package com.b.a.a;

import java.io.IOException;
import jcifs.netbios.NbtException;

/* loaded from: classes.dex */
public class h extends t implements b.b.b {

    /* renamed from: a, reason: collision with root package name */
    private e f102a;

    public h(b.a.a.e eVar, i iVar) {
        super(eVar, iVar);
        this.i = false;
        this.f115b = false;
        this.f102a = null;
    }

    private b.b.c a(b.b.c cVar, boolean z, boolean z2, boolean z3) {
        byte[] bArr = new byte[2];
        bArr[0] = (byte) ((z2 ? 0 : 2) | (z ? 1 : 0));
        bArr[1] = 0;
        a(133, bArr, (j) cVar);
        byte[] f = f();
        j a2 = j.a(f[0], f, 3);
        a((j) cVar, a2);
        if (z3 || a2.b() != 193 || !a2.d()) {
            return a2;
        }
        j b2 = j.b(cVar);
        b(a2, b2);
        return a(b2, z, z2, true);
    }

    private b.b.c b(b.b.c cVar, boolean z) {
        f(cVar);
        if (this.f115b) {
            throw new IOException("Session already connected");
        }
        a(128, new byte[]{16, 0, v.a(this.f.c), v.b(this.f.c)}, (j) cVar);
        byte[] f = f();
        if (f.length < 6) {
            if (f.length == 3) {
                throw new IOException("Invalid response from OBEX server " + v.a(f[0]));
            }
            throw new IOException("Invalid response from OBEX server");
        }
        int a2 = v.a(f[5], f[6]);
        if (a2 < 255) {
            throw new IOException("Invalid MTU " + a2);
        }
        if (a2 < this.d) {
            this.d = a2;
        }
        com.b.a.a.a("mtu selected", this.d);
        j a3 = j.a(f[0], f, 7);
        Object a4 = a3.a(203);
        if (a4 != null) {
            this.c = ((Long) a4).longValue();
        }
        a((j) cVar, a3);
        if (!z && a3.b() == 193 && a3.d()) {
            j b2 = j.b(cVar);
            b(a3, b2);
            return b((b.b.c) b2, true);
        }
        if (a3.b() == 160) {
            this.f115b = true;
        }
        return a3;
    }

    private void g() {
        if (!this.f115b) {
            throw new IOException("Session not connected");
        }
        if (this.f102a != null) {
            if (!this.f102a.j()) {
                throw new IOException("Client is already in an operation");
            }
            this.f102a = null;
        }
    }

    @Override // b.b.b
    public b.b.c a() {
        return t.d();
    }

    @Override // b.b.b
    public b.b.c a(b.b.c cVar) {
        return b(cVar, false);
    }

    b.b.c a(b.b.c cVar, boolean z) {
        a(130, (j) cVar);
        byte[] f = f();
        j a2 = j.a(f[0], f, 3);
        a((j) cVar, a2);
        if (z || a2.b() != 193 || !a2.d()) {
            return a2;
        }
        j b2 = j.b(cVar);
        b(a2, b2);
        return a((b.b.c) b2, true);
    }

    @Override // b.b.b
    public b.b.c a(b.b.c cVar, boolean z, boolean z2) {
        f(cVar);
        g();
        return a(cVar, z, z2, false);
    }

    @Override // b.b.b
    public void a(long j) {
        if (j < 0 || j > 4294967295L) {
            throw new IllegalArgumentException("Invalid connectionID " + j);
        }
        this.c = j;
    }

    @Override // b.b.b
    public b.b.c b(b.b.c cVar) {
        f(cVar);
        g();
        if (!this.f115b) {
            throw new IOException("Session not connected");
        }
        a(NbtException.NOT_LISTENING_CALLING, (j) cVar);
        byte[] f = f();
        this.f115b = false;
        if (this.f102a != null) {
            this.f102a.e();
            this.f102a = null;
        }
        return j.a(f[0], f, 3);
    }

    @Override // com.b.a.a.t
    public /* bridge */ /* synthetic */ boolean b() {
        return super.b();
    }

    @Override // b.b.b
    public b.b.d c(b.b.c cVar) {
        f(cVar);
        g();
        this.f102a = new f(this, (j) cVar);
        return this.f102a;
    }

    @Override // b.b.b
    public b.b.d d(b.b.c cVar) {
        f(cVar);
        g();
        this.f102a = new g(this, (j) cVar);
        return this.f102a;
    }

    @Override // b.b.b
    public b.b.c e(b.b.c cVar) {
        f(cVar);
        g();
        return a(cVar, false);
    }

    @Override // com.b.a.a.t, b.a.a.a
    public void e() {
        if (this.f102a != null) {
            this.f102a.e();
            this.f102a = null;
        }
        super.e();
    }
}
