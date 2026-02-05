package com.jcraft.jsch;

/* loaded from: classes.dex */
public class KeyPairRSA extends KeyPair {
    private static final byte[] c = Util.b("-----BEGIN RSA PRIVATE KEY-----");
    private static final byte[] d = Util.b("-----END RSA PRIVATE KEY-----");
    private static final byte[] e = Util.b("ssh-rsa");

    /* renamed from: b, reason: collision with root package name */
    private byte[] f3321b;

    @Override // com.jcraft.jsch.KeyPair
    public void a() {
        super.a();
        Util.c(this.f3321b);
    }
}
