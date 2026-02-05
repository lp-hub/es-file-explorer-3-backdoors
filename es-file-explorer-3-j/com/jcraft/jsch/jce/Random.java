package com.jcraft.jsch.jce;

import java.security.SecureRandom;

/* loaded from: classes.dex */
public class Random implements com.jcraft.jsch.Random {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f3378a = new byte[16];

    /* renamed from: b, reason: collision with root package name */
    private SecureRandom f3379b;

    public Random() {
        this.f3379b = null;
        this.f3379b = new SecureRandom();
    }

    @Override // com.jcraft.jsch.Random
    public void a(byte[] bArr, int i, int i2) {
        if (i2 > this.f3378a.length) {
            this.f3378a = new byte[i2];
        }
        this.f3379b.nextBytes(this.f3378a);
        System.arraycopy(this.f3378a, 0, bArr, i, i2);
    }
}
