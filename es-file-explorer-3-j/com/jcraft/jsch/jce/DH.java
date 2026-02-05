package com.jcraft.jsch.jce;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import javax.crypto.KeyAgreement;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;

/* loaded from: classes.dex */
public class DH implements com.jcraft.jsch.DH {

    /* renamed from: a, reason: collision with root package name */
    BigInteger f3367a;

    /* renamed from: b, reason: collision with root package name */
    BigInteger f3368b;
    BigInteger c;
    byte[] d;
    BigInteger e;
    BigInteger f;
    byte[] g;
    private KeyPairGenerator h;
    private KeyAgreement i;

    @Override // com.jcraft.jsch.DH
    public void a() {
        this.h = KeyPairGenerator.getInstance("DH");
        this.i = KeyAgreement.getInstance("DH");
    }

    void a(BigInteger bigInteger) {
        this.f3367a = bigInteger;
    }

    @Override // com.jcraft.jsch.DH
    public void a(byte[] bArr) {
        a(new BigInteger(bArr));
    }

    void b(BigInteger bigInteger) {
        this.f3368b = bigInteger;
    }

    @Override // com.jcraft.jsch.DH
    public void b(byte[] bArr) {
        b(new BigInteger(bArr));
    }

    @Override // com.jcraft.jsch.DH
    public byte[] b() {
        if (this.c == null) {
            this.h.initialize(new DHParameterSpec(this.f3367a, this.f3368b));
            KeyPair generateKeyPair = this.h.generateKeyPair();
            this.i.init(generateKeyPair.getPrivate());
            generateKeyPair.getPublic().getEncoded();
            this.c = ((DHPublicKey) generateKeyPair.getPublic()).getY();
            this.d = this.c.toByteArray();
        }
        return this.d;
    }

    void c(BigInteger bigInteger) {
        this.e = bigInteger;
    }

    @Override // com.jcraft.jsch.DH
    public void c(byte[] bArr) {
        c(new BigInteger(bArr));
    }

    @Override // com.jcraft.jsch.DH
    public byte[] c() {
        if (this.f == null) {
            this.i.doPhase(KeyFactory.getInstance("DH").generatePublic(new DHPublicKeySpec(this.e, this.f3367a, this.f3368b)), true);
            byte[] generateSecret = this.i.generateSecret();
            this.f = new BigInteger(generateSecret);
            this.g = this.f.toByteArray();
            this.g = generateSecret;
        }
        return this.g;
    }
}
