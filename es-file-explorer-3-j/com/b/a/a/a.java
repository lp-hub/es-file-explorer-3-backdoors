package com.b.a.a;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private MessageDigest f93a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        try {
            this.f93a = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr) {
        this.f93a.update(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() {
        return this.f93a.digest();
    }
}
