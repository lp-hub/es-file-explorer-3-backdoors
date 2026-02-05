package org.bouncycastle.crypto.e;

import org.bouncycastle.crypto.b;

/* loaded from: classes.dex */
public class a implements org.bouncycastle.crypto.a {

    /* renamed from: a, reason: collision with root package name */
    private final org.bouncycastle.crypto.a f3461a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3462b;
    private byte[] c;
    private byte[] d;
    private byte[] e;

    public a(org.bouncycastle.crypto.a aVar) {
        this.f3461a = aVar;
        this.f3462b = this.f3461a.a();
        this.c = new byte[this.f3462b];
        this.d = new byte[this.f3462b];
        this.e = new byte[this.f3462b];
    }

    @Override // org.bouncycastle.crypto.a
    public int a() {
        return this.f3461a.a();
    }

    @Override // org.bouncycastle.crypto.a
    public int a(byte[] bArr, int i, byte[] bArr2, int i2) {
        this.f3461a.a(this.d, 0, this.e, 0);
        for (int i3 = 0; i3 < this.e.length; i3++) {
            bArr2[i2 + i3] = (byte) (this.e[i3] ^ bArr[i + i3]);
        }
        int i4 = 1;
        for (int length = this.d.length - 1; length >= 0; length--) {
            int i5 = (this.d[length] & 255) + i4;
            i4 = i5 > 255 ? 1 : 0;
            this.d[length] = (byte) i5;
        }
        return this.d.length;
    }

    @Override // org.bouncycastle.crypto.a
    public void a(boolean z, b bVar) {
        if (!(bVar instanceof org.bouncycastle.crypto.f.b)) {
            throw new IllegalArgumentException("SIC mode requires ParametersWithIV");
        }
        org.bouncycastle.crypto.f.b bVar2 = (org.bouncycastle.crypto.f.b) bVar;
        System.arraycopy(bVar2.a(), 0, this.c, 0, this.c.length);
        b();
        this.f3461a.a(true, bVar2.b());
    }

    @Override // org.bouncycastle.crypto.a
    public void b() {
        System.arraycopy(this.c, 0, this.d, 0, this.d.length);
        this.f3461a.b();
    }
}
