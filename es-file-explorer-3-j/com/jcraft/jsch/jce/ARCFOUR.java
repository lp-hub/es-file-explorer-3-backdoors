package com.jcraft.jsch.jce;

import com.jcraft.jsch.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class ARCFOUR implements Cipher {

    /* renamed from: a, reason: collision with root package name */
    private javax.crypto.Cipher f3363a;

    @Override // com.jcraft.jsch.Cipher
    public int a() {
        return 8;
    }

    @Override // com.jcraft.jsch.Cipher
    public void a(int i, byte[] bArr, byte[] bArr2) {
        if (bArr.length > 16) {
            byte[] bArr3 = new byte[16];
            System.arraycopy(bArr, 0, bArr3, 0, bArr3.length);
            bArr = bArr3;
        }
        try {
            this.f3363a = javax.crypto.Cipher.getInstance("RC4");
            this.f3363a.init(i == 0 ? 1 : 2, new SecretKeySpec(bArr, "RC4"));
        } catch (Exception e) {
            this.f3363a = null;
            throw e;
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public void a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.f3363a.update(bArr, i, i2, bArr2, i3);
    }

    @Override // com.jcraft.jsch.Cipher
    public int b() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public boolean c() {
        return false;
    }
}
