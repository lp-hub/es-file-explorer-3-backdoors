package com.jcraft.jsch.jce;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;

/* loaded from: classes.dex */
public class SignatureDSA implements com.jcraft.jsch.SignatureDSA {

    /* renamed from: a, reason: collision with root package name */
    Signature f3381a;

    /* renamed from: b, reason: collision with root package name */
    KeyFactory f3382b;

    @Override // com.jcraft.jsch.SignatureDSA
    public void a() {
        this.f3381a = Signature.getInstance("SHA1withDSA");
        this.f3382b = KeyFactory.getInstance("DSA");
    }

    @Override // com.jcraft.jsch.SignatureDSA
    public void a(byte[] bArr) {
        this.f3381a.update(bArr);
    }

    @Override // com.jcraft.jsch.SignatureDSA
    public void a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        this.f3381a.initVerify(this.f3382b.generatePublic(new DSAPublicKeySpec(new BigInteger(bArr), new BigInteger(bArr2), new BigInteger(bArr3), new BigInteger(bArr4))));
    }

    @Override // com.jcraft.jsch.SignatureDSA
    public void b(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        this.f3381a.initSign(this.f3382b.generatePrivate(new DSAPrivateKeySpec(new BigInteger(bArr), new BigInteger(bArr2), new BigInteger(bArr3), new BigInteger(bArr4))));
    }

    @Override // com.jcraft.jsch.SignatureDSA
    public boolean b(byte[] bArr) {
        if (bArr[0] == 0 && bArr[1] == 0 && bArr[2] == 0) {
            int i = (((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & 255)) + 4;
            int i2 = i + 1;
            int i3 = i2 + 1;
            int i4 = ((bArr[i] << 24) & (-16777216)) | ((bArr[i2] << 16) & 16711680);
            int i5 = i3 + 1;
            int i6 = i4 | ((bArr[i3] << 8) & 65280);
            int i7 = i5 + 1;
            int i8 = (bArr[i5] & 255) | i6;
            byte[] bArr2 = new byte[i8];
            System.arraycopy(bArr, i7, bArr2, 0, i8);
            bArr = bArr2;
        }
        byte b2 = (bArr[0] & 128) != 0 ? (byte) 1 : (byte) 0;
        byte b3 = (bArr[20] & 128) != 0 ? (byte) 1 : (byte) 0;
        byte[] bArr3 = new byte[bArr.length + 6 + b2 + b3];
        bArr3[0] = 48;
        bArr3[1] = 44;
        bArr3[1] = (byte) (bArr3[1] + b2);
        bArr3[1] = (byte) (bArr3[1] + b3);
        bArr3[2] = 2;
        bArr3[3] = 20;
        bArr3[3] = (byte) (bArr3[3] + b2);
        System.arraycopy(bArr, 0, bArr3, b2 + 4, 20);
        bArr3[bArr3[3] + 4] = 2;
        bArr3[bArr3[3] + 5] = 20;
        int i9 = bArr3[3] + 5;
        bArr3[i9] = (byte) (bArr3[i9] + b3);
        System.arraycopy(bArr, 20, bArr3, bArr3[3] + 6 + b3, 20);
        return this.f3381a.verify(bArr3);
    }

    @Override // com.jcraft.jsch.SignatureDSA
    public byte[] b() {
        byte[] sign = this.f3381a.sign();
        int i = sign[3] & 255;
        byte[] bArr = new byte[i];
        System.arraycopy(sign, 4, bArr, 0, bArr.length);
        int i2 = i + 4 + 1;
        byte[] bArr2 = new byte[sign[i2] & 255];
        System.arraycopy(sign, i2 + 1, bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[40];
        System.arraycopy(bArr, bArr.length > 20 ? 1 : 0, bArr3, bArr.length > 20 ? 0 : 20 - bArr.length, bArr.length > 20 ? 20 : bArr.length);
        System.arraycopy(bArr2, bArr2.length <= 20 ? 0 : 1, bArr3, bArr2.length > 20 ? 20 : 40 - bArr2.length, bArr2.length <= 20 ? bArr2.length : 20);
        return bArr3;
    }
}
