package com.b.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class t implements b.a.a.a {

    /* renamed from: a, reason: collision with root package name */
    private b.a.a.e f114a;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f115b;
    protected long c;
    protected int d;
    protected b.b.a e;
    protected i f;
    protected int g;
    protected int h;
    protected boolean i;
    private InputStream j;
    private OutputStream k;
    private Vector l;

    public t(b.a.a.e eVar, i iVar) {
        this.d = 16384;
        if (iVar == null) {
            throw new NullPointerException("obexConnectionParams is null");
        }
        this.f115b = false;
        this.f114a = eVar;
        this.f = iVar;
        this.d = iVar.c;
        this.c = -1L;
        this.g = 0;
        this.h = 0;
        try {
            this.k = eVar.c();
            this.j = eVar.a();
        } catch (Exception e) {
            try {
                e();
            } catch (IOException e2) {
                com.b.a.a.b("close error", e2);
            }
        } catch (Throwable th) {
            try {
                e();
            } catch (IOException e3) {
                com.b.a.a.b("close error", e3);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j c() {
        return new j();
    }

    public static b.b.c d() {
        return c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(b.b.c cVar) {
        j.a(cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, j jVar) {
        a(i, null, jVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(int i, byte[] bArr, j jVar) {
        this.i = true;
        int i2 = this.c != -1 ? 8 : 3;
        if (bArr != null) {
            i2 += bArr.length;
        }
        byte[] bArr2 = null;
        if (jVar != null) {
            bArr2 = j.c(jVar);
            i2 += bArr2.length;
        }
        if (i2 > this.d) {
            throw new IOException("Can't sent more data than in MTU, len=" + i2 + ", mtu=" + this.d);
        }
        this.g++;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        j.a((OutputStream) byteArrayOutputStream, i, i2);
        if (bArr != null) {
            byteArrayOutputStream.write(bArr);
        }
        if (this.c != -1) {
            j.a(byteArrayOutputStream, 203, this.c);
        }
        if (bArr2 != null) {
            byteArrayOutputStream.write(bArr2);
        }
        com.b.a.a.a("obex send (" + this.g + ")", v.c(i), i);
        this.k.write(byteArrayOutputStream.toByteArray());
        this.k.flush();
        com.b.a.a.a("obex sent (" + this.g + ") len", i2);
        if (jVar != null && jVar.d()) {
            if (this.l == null) {
                this.l = new Vector();
            }
            Enumeration e = jVar.e();
            while (e.hasMoreElements()) {
                this.l.addElement(new c((byte[]) e.nextElement()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar, j jVar2) {
        if (jVar != null && jVar.d() && !jVar2.f()) {
            throw new IOException("Authentication response is missing");
        }
        a(jVar2, (b.b.f) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(j jVar, b.b.f fVar) {
        if (!jVar.f()) {
            if (this.l == null || this.l.size() <= 0) {
                return true;
            }
            throw new IOException("Authentication response is missing");
        }
        if (this.e == null) {
            throw new IOException("Authenticator required for authentication");
        }
        if (this.l == null || this.l.size() == 0) {
            throw new IOException("Authentication challenges had not been sent");
        }
        boolean a2 = b.a(jVar, this.e, fVar, this.l);
        if (!a2 || this.l == null) {
            return a2;
        }
        this.l.removeAllElements();
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(j jVar, j jVar2) {
        if (jVar.d()) {
            if (this.e == null) {
                throw new IOException("Authenticator required for authentication");
            }
            b.a(jVar, jVar2, this.e);
        }
    }

    public boolean b() {
        return this.f114a == null;
    }

    @Override // b.a.a.a
    public void e() {
        b.a.a.e eVar = this.f114a;
        this.f114a = null;
        try {
            if (this.j != null) {
                this.j.close();
                this.j = null;
            }
            if (this.k != null) {
                this.k.close();
                this.k = null;
            }
        } finally {
            if (eVar != null) {
                eVar.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized byte[] f() {
        byte[] bArr;
        if (!this.i) {
            throw new IOException("Read packet out of order");
        }
        this.i = false;
        bArr = new byte[3];
        v.a(this.j, this.f, bArr);
        this.h++;
        com.b.a.a.a("obex received (" + this.h + ")", v.a(bArr[0]), bArr[0] & 255);
        int a2 = v.a(bArr[1], bArr[2]);
        if (a2 != 3) {
            if (a2 < 3 || a2 > 65535) {
                throw new IOException("Invalid packet length " + a2);
            }
            byte[] bArr2 = new byte[a2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            v.a(this.j, this.f, bArr2, bArr.length, a2 - bArr.length);
            if (this.j.available() > 0) {
                com.b.a.a.a("has more data after read", this.j.available());
            }
            bArr = bArr2;
        }
        return bArr;
    }
}
