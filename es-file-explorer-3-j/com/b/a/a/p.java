package com.b.a.a;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
abstract class p implements b.b.d, k {

    /* renamed from: a, reason: collision with root package name */
    protected s f111a;

    /* renamed from: b, reason: collision with root package name */
    protected b.b.c f112b;
    protected j c;
    protected n j;
    protected m l;
    protected boolean d = false;
    protected boolean e = false;
    protected boolean f = false;
    protected boolean g = false;
    protected boolean h = false;
    protected boolean i = false;
    protected boolean k = false;
    protected boolean m = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public p(s sVar, j jVar) {
        this.f111a = sVar;
        this.f112b = jVar;
        if (jVar.d()) {
            this.c = t.c();
            this.f111a.b(jVar, this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        com.b.a.a.b("server operation reply final", i);
        this.f111a.a(i, this.c);
        this.c = null;
        if (i != 160) {
            com.b.a.a.a("sent final reply");
            return;
        }
        while (!this.f && !this.f111a.b()) {
            com.b.a.a.a("server waits to receive final packet");
            f();
            if (!this.h) {
                this.f111a.a(i, (j) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(b.b.c cVar, boolean z) {
        if (this.l == null) {
            return;
        }
        byte[] bArr = (byte[]) cVar.a(72);
        if (bArr == null && (bArr = (byte[]) cVar.a(73)) != null) {
            z = true;
        }
        if (bArr != null) {
            this.i = true;
            com.b.a.a.a("server received Data eof: " + z + " len:", bArr.length);
            this.l.a(bArr, z);
        } else if (z) {
            this.l.a(null, z);
        }
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
        if (this.d) {
            throw new IOException("operation closed");
        }
        if (this.c != null) {
            j.a(this.c, cVar);
        } else {
            this.c = (j) cVar;
        }
    }

    @Override // b.a.a.d
    public DataOutputStream d() {
        return new DataOutputStream(c());
    }

    @Override // b.a.a.a
    public void e() {
        this.d = true;
    }

    protected abstract boolean f();

    @Override // b.b.d
    public b.b.c h() {
        return j.b(this.f112b);
    }

    @Override // b.b.d
    public int i() {
        throw new IOException("Operation object was created by an OBEX server");
    }

    @Override // com.b.a.a.k
    public boolean j() {
        return this.d;
    }
}
