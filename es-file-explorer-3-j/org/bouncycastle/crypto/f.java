package org.bouncycastle.crypto;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    protected byte[] f3463a;

    /* renamed from: b, reason: collision with root package name */
    protected byte[] f3464b;
    protected int c;

    public abstract b a(int i);

    public void a(byte[] bArr, byte[] bArr2, int i) {
        this.f3463a = bArr;
        this.f3464b = bArr2;
        this.c = i;
    }
}
