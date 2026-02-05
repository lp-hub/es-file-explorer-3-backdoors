package com.jcraft.jsch.jce;

import com.jcraft.jsch.HASH;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class MD5 implements HASH {

    /* renamed from: a, reason: collision with root package name */
    MessageDigest f3377a;

    @Override // com.jcraft.jsch.HASH
    public void a() {
        try {
            this.f3377a = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    @Override // com.jcraft.jsch.HASH
    public void a(byte[] bArr, int i, int i2) {
        this.f3377a.update(bArr, i, i2);
    }

    @Override // com.jcraft.jsch.HASH
    public int b() {
        return 16;
    }

    @Override // com.jcraft.jsch.HASH
    public byte[] c() {
        return this.f3377a.digest();
    }
}
