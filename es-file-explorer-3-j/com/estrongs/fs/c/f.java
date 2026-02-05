package com.estrongs.fs.c;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public class f implements e {

    /* renamed from: a, reason: collision with root package name */
    MessageDigest f3041a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f3042b;

    public f(String str) {
        this.f3041a = null;
        this.f3041a = MessageDigest.getInstance(str);
    }

    @Override // com.estrongs.fs.c.e
    public void a(byte[] bArr, int i, int i2) {
        this.f3041a.update(bArr, i, i2);
    }

    public byte[] a() {
        if (this.f3042b != null) {
            return this.f3042b;
        }
        byte[] digest = this.f3041a.digest();
        this.f3042b = digest;
        return digest;
    }

    public String toString() {
        return d.a(a());
    }
}
