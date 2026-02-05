package com.jcraft.jsch.jce;

import com.jcraft.jsch.MAC;
import javax.crypto.Mac;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class HMACSHA1 implements MAC {

    /* renamed from: a, reason: collision with root package name */
    private Mac f3373a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f3374b = new byte[4];

    @Override // com.jcraft.jsch.MAC
    public int a() {
        return 20;
    }

    @Override // com.jcraft.jsch.MAC
    public void a(int i) {
        this.f3374b[0] = (byte) (i >>> 24);
        this.f3374b[1] = (byte) (i >>> 16);
        this.f3374b[2] = (byte) (i >>> 8);
        this.f3374b[3] = (byte) i;
        a(this.f3374b, 0, 4);
    }

    @Override // com.jcraft.jsch.MAC
    public void a(byte[] bArr) {
        if (bArr.length > 20) {
            byte[] bArr2 = new byte[20];
            System.arraycopy(bArr, 0, bArr2, 0, 20);
            bArr = bArr2;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "HmacSHA1");
        this.f3373a = Mac.getInstance("HmacSHA1");
        this.f3373a.init(secretKeySpec);
    }

    @Override // com.jcraft.jsch.MAC
    public void a(byte[] bArr, int i) {
        try {
            this.f3373a.doFinal(bArr, i);
        } catch (ShortBufferException e) {
        }
    }

    @Override // com.jcraft.jsch.MAC
    public void a(byte[] bArr, int i, int i2) {
        this.f3373a.update(bArr, i, i2);
    }
}
