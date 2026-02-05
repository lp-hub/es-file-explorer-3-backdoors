package com.jcraft.jsch;

/* loaded from: classes.dex */
public class KeyPairDSA extends KeyPair {
    private static final byte[] c = Util.b("-----BEGIN DSA PRIVATE KEY-----");
    private static final byte[] d = Util.b("-----END DSA PRIVATE KEY-----");
    private static final byte[] e = Util.b("ssh-dss");

    /* renamed from: b, reason: collision with root package name */
    private byte[] f3320b;

    @Override // com.jcraft.jsch.KeyPair
    public void a() {
        super.a();
        Util.c(this.f3320b);
    }
}
