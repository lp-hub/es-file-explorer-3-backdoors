package com.jcraft.jsch.jce;

import com.jcraft.jsch.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class ARCFOUR256 implements Cipher {

    /* renamed from: a, reason: collision with root package name */
    private javax.crypto.Cipher f3365a;

    @Override // com.jcraft.jsch.Cipher
    public int a() {
        return 8;
    }

    @Override // com.jcraft.jsch.Cipher
    public void a(int i, byte[] bArr, byte[] bArr2) {
        int i2 = 0;
        if (bArr.length > 32) {
            byte[] bArr3 = new byte[32];
            System.arraycopy(bArr, 0, bArr3, 0, bArr3.length);
            bArr = bArr3;
        }
        try {
            this.f3365a = javax.crypto.Cipher.getInstance("RC4");
            this.f3365a.init(i != 0 ? 2 : 1, new SecretKeySpec(bArr, "RC4"));
            byte[] bArr4 = new byte[1];
            while (true) {
                int i3 = i2;
                if (i3 >= 1536) {
                    return;
                }
                this.f3365a.update(bArr4, 0, 1, bArr4, 0);
                i2 = i3 + 1;
            }
        } catch (Exception e) {
            this.f3365a = null;
            throw e;
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public void a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.f3365a.update(bArr, i, i2, bArr2, i3);
    }

    @Override // com.jcraft.jsch.Cipher
    public int b() {
        return 32;
    }

    @Override // com.jcraft.jsch.Cipher
    public boolean c() {
        return false;
    }
}
