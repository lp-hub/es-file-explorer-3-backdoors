package com.jcraft.jsch.jce;

import com.jcraft.jsch.HASH;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class SHA1 implements HASH {

    /* renamed from: a, reason: collision with root package name */
    MessageDigest f3380a;

    @Override // com.jcraft.jsch.HASH
    public void a() {
        try {
            this.f3380a = MessageDigest.getInstance("SHA-1");
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    @Override // com.jcraft.jsch.HASH
    public void a(byte[] bArr, int i, int i2) {
        this.f3380a.update(bArr, i, i2);
    }

    @Override // com.jcraft.jsch.HASH
    public int b() {
        return 20;
    }

    @Override // com.jcraft.jsch.HASH
    public byte[] c() {
        return this.f3380a.digest();
    }
}
