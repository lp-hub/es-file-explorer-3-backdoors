package com.jcraft.jsch;

/* loaded from: classes.dex */
public abstract class KeyPair {
    private byte[] c;

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f3319b = Util.b("\n");

    /* renamed from: a, reason: collision with root package name */
    static byte[][] f3318a = {Util.b("Proc-Type: 4,ENCRYPTED"), Util.b("DEK-Info: DES-EDE3-CBC,")};
    private static byte[] d = Util.b(" ");

    public void a() {
        Util.c(this.c);
    }

    public void finalize() {
        a();
    }
}
