package com.jcraft.jsch;

/* loaded from: classes.dex */
public interface SignatureDSA {
    void a();

    void a(byte[] bArr);

    void a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    void b(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    boolean b(byte[] bArr);

    byte[] b();
}
