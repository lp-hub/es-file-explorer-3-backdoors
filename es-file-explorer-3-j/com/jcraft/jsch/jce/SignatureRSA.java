package com.jcraft.jsch.jce;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;

/* loaded from: classes.dex */
public class SignatureRSA implements com.jcraft.jsch.SignatureRSA {

    /* renamed from: a, reason: collision with root package name */
    Signature f3383a;

    /* renamed from: b, reason: collision with root package name */
    KeyFactory f3384b;

    @Override // com.jcraft.jsch.SignatureRSA
    public void a() {
        this.f3383a = Signature.getInstance("SHA1withRSA");
        this.f3384b = KeyFactory.getInstance("RSA");
    }

    @Override // com.jcraft.jsch.SignatureRSA
    public void a(byte[] bArr) {
        this.f3383a.update(bArr);
    }

    @Override // com.jcraft.jsch.SignatureRSA
    public void a(byte[] bArr, byte[] bArr2) {
        this.f3383a.initVerify(this.f3384b.generatePublic(new RSAPublicKeySpec(new BigInteger(bArr2), new BigInteger(bArr))));
    }

    @Override // com.jcraft.jsch.SignatureRSA
    public void b(byte[] bArr, byte[] bArr2) {
        this.f3383a.initSign(this.f3384b.generatePrivate(new RSAPrivateKeySpec(new BigInteger(bArr2), new BigInteger(bArr))));
    }

    @Override // com.jcraft.jsch.SignatureRSA
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
        return this.f3383a.verify(bArr);
    }

    @Override // com.jcraft.jsch.SignatureRSA
    public byte[] b() {
        return this.f3383a.sign();
    }
}
