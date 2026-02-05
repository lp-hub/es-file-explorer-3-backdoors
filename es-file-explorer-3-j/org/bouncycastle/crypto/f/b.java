package org.bouncycastle.crypto.f;

/* loaded from: classes.dex */
public class b implements org.bouncycastle.crypto.b {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f3466a;

    /* renamed from: b, reason: collision with root package name */
    private org.bouncycastle.crypto.b f3467b;

    public b(org.bouncycastle.crypto.b bVar, byte[] bArr) {
        this(bVar, bArr, 0, bArr.length);
    }

    public b(org.bouncycastle.crypto.b bVar, byte[] bArr, int i, int i2) {
        this.f3466a = new byte[i2];
        this.f3467b = bVar;
        System.arraycopy(bArr, i, this.f3466a, 0, i2);
    }

    public byte[] a() {
        return this.f3466a;
    }

    public org.bouncycastle.crypto.b b() {
        return this.f3467b;
    }
}
