package org.bouncycastle.crypto.d;

import java.util.Hashtable;
import org.bouncycastle.crypto.b;
import org.bouncycastle.crypto.c;
import org.bouncycastle.crypto.d;
import org.bouncycastle.crypto.e;

/* loaded from: classes.dex */
public class a implements e {
    private static Hashtable f = new Hashtable();

    /* renamed from: a, reason: collision with root package name */
    private c f3459a;

    /* renamed from: b, reason: collision with root package name */
    private int f3460b;
    private int c;
    private byte[] d;
    private byte[] e;

    static {
        f.put("GOST3411", new Integer(32));
        f.put("MD2", new Integer(16));
        f.put("MD4", new Integer(64));
        f.put("MD5", new Integer(64));
        f.put("RIPEMD128", new Integer(64));
        f.put("RIPEMD160", new Integer(64));
        f.put("SHA-1", new Integer(64));
        f.put("SHA-224", new Integer(64));
        f.put("SHA-256", new Integer(64));
        f.put("SHA-384", new Integer(128));
        f.put("SHA-512", new Integer(128));
        f.put("Tiger", new Integer(64));
        f.put("Whirlpool", new Integer(64));
    }

    public a(c cVar) {
        this(cVar, a(cVar));
    }

    private a(c cVar, int i) {
        this.f3459a = cVar;
        this.f3460b = cVar.b();
        this.c = i;
        this.d = new byte[this.c];
        this.e = new byte[this.c];
    }

    private static int a(c cVar) {
        if (cVar instanceof d) {
            return ((d) cVar).d();
        }
        Integer num = (Integer) f.get(cVar.a());
        if (num == null) {
            throw new IllegalArgumentException("unknown digest passed: " + cVar.a());
        }
        return num.intValue();
    }

    @Override // org.bouncycastle.crypto.e
    public int a() {
        return this.f3460b;
    }

    @Override // org.bouncycastle.crypto.e
    public int a(byte[] bArr, int i) {
        byte[] bArr2 = new byte[this.f3460b];
        this.f3459a.a(bArr2, 0);
        this.f3459a.a(this.e, 0, this.e.length);
        this.f3459a.a(bArr2, 0, bArr2.length);
        int a2 = this.f3459a.a(bArr, i);
        b();
        return a2;
    }

    @Override // org.bouncycastle.crypto.e
    public void a(b bVar) {
        this.f3459a.c();
        byte[] a2 = ((org.bouncycastle.crypto.f.a) bVar).a();
        if (a2.length > this.c) {
            this.f3459a.a(a2, 0, a2.length);
            this.f3459a.a(this.d, 0);
            for (int i = this.f3460b; i < this.d.length; i++) {
                this.d[i] = 0;
            }
        } else {
            System.arraycopy(a2, 0, this.d, 0, a2.length);
            for (int length = a2.length; length < this.d.length; length++) {
                this.d[length] = 0;
            }
        }
        this.e = new byte[this.d.length];
        System.arraycopy(this.d, 0, this.e, 0, this.d.length);
        for (int i2 = 0; i2 < this.d.length; i2++) {
            byte[] bArr = this.d;
            bArr[i2] = (byte) (bArr[i2] ^ 54);
        }
        for (int i3 = 0; i3 < this.e.length; i3++) {
            byte[] bArr2 = this.e;
            bArr2[i3] = (byte) (bArr2[i3] ^ 92);
        }
        this.f3459a.a(this.d, 0, this.d.length);
    }

    @Override // org.bouncycastle.crypto.e
    public void a(byte[] bArr, int i, int i2) {
        this.f3459a.a(bArr, i, i2);
    }

    public void b() {
        this.f3459a.c();
        this.f3459a.a(this.d, 0, this.d.length);
    }
}
