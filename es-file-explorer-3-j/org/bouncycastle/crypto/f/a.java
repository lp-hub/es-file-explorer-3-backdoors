package org.bouncycastle.crypto.f;

/* loaded from: classes.dex */
public class a implements org.bouncycastle.crypto.b {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f3465a;

    public a(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public a(byte[] bArr, int i, int i2) {
        this.f3465a = new byte[i2];
        System.arraycopy(bArr, i, this.f3465a, 0, i2);
    }

    public byte[] a() {
        return this.f3465a;
    }
}
