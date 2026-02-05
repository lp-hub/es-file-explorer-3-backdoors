package com.jcraft.jsch.jce;

import com.jcraft.jsch.MAC;
import javax.crypto.Mac;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class HMACMD596 implements MAC {

    /* renamed from: a, reason: collision with root package name */
    private Mac f3371a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f3372b = new byte[4];
    private final byte[] c = new byte[16];

    @Override // com.jcraft.jsch.MAC
    public int a() {
        return 12;
    }

    @Override // com.jcraft.jsch.MAC
    public void a(int i) {
        this.f3372b[0] = (byte) (i >>> 24);
        this.f3372b[1] = (byte) (i >>> 16);
        this.f3372b[2] = (byte) (i >>> 8);
        this.f3372b[3] = (byte) i;
        a(this.f3372b, 0, 4);
    }

    @Override // com.jcraft.jsch.MAC
    public void a(byte[] bArr) {
        if (bArr.length > 16) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 0, 16);
            bArr = bArr2;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "HmacMD5");
        this.f3371a = Mac.getInstance("HmacMD5");
        this.f3371a.init(secretKeySpec);
    }

    @Override // com.jcraft.jsch.MAC
    public void a(byte[] bArr, int i) {
        try {
            this.f3371a.doFinal(this.c, 0);
        } catch (ShortBufferException e) {
        }
        System.arraycopy(this.c, 0, bArr, i, 12);
    }

    @Override // com.jcraft.jsch.MAC
    public void a(byte[] bArr, int i, int i2) {
        this.f3371a.update(bArr, i, i2);
    }
}
