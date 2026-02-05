package com.jcraft.jsch.jce;

import com.jcraft.jsch.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class AES192CTR implements Cipher {

    /* renamed from: a, reason: collision with root package name */
    private javax.crypto.Cipher f3360a;

    @Override // com.jcraft.jsch.Cipher
    public int a() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public void a(int i, byte[] bArr, byte[] bArr2) {
        if (bArr2.length > 16) {
            byte[] bArr3 = new byte[16];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr3.length);
            bArr2 = bArr3;
        }
        if (bArr.length > 24) {
            byte[] bArr4 = new byte[24];
            System.arraycopy(bArr, 0, bArr4, 0, bArr4.length);
            bArr = bArr4;
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.f3360a = javax.crypto.Cipher.getInstance("AES/CTR/NoPadding");
            this.f3360a.init(i == 0 ? 1 : 2, secretKeySpec, new IvParameterSpec(bArr2));
        } catch (Exception e) {
            this.f3360a = null;
            throw e;
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public void a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.f3360a.update(bArr, i, i2, bArr2, i3);
    }

    @Override // com.jcraft.jsch.Cipher
    public int b() {
        return 24;
    }

    @Override // com.jcraft.jsch.Cipher
    public boolean c() {
        return false;
    }
}
