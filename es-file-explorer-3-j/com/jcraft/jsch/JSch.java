package com.jcraft.jsch;

import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes.dex */
public class JSch {

    /* renamed from: a, reason: collision with root package name */
    static Hashtable f3316a = new Hashtable();
    static Logger d;
    private static final Logger f;

    /* renamed from: b, reason: collision with root package name */
    Vector f3317b = new Vector();
    Vector c = new Vector();
    private HostKeyRepository e = null;

    static {
        f3316a.put("kex", "diffie-hellman-group1-sha1,diffie-hellman-group-exchange-sha1");
        f3316a.put("server_host_key", "ssh-rsa,ssh-dss");
        f3316a.put("cipher.s2c", "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-cbc,aes256-cbc");
        f3316a.put("cipher.c2s", "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-cbc,aes256-cbc");
        f3316a.put("mac.s2c", "hmac-md5,hmac-sha1,hmac-sha1-96,hmac-md5-96");
        f3316a.put("mac.c2s", "hmac-md5,hmac-sha1,hmac-sha1-96,hmac-md5-96");
        f3316a.put("compression.s2c", "none");
        f3316a.put("compression.c2s", "none");
        f3316a.put("lang.s2c", "");
        f3316a.put("lang.c2s", "");
        f3316a.put("compression_level", "6");
        f3316a.put("diffie-hellman-group-exchange-sha1", "com.jcraft.jsch.DHGEX");
        f3316a.put("diffie-hellman-group1-sha1", "com.jcraft.jsch.DHG1");
        f3316a.put("dh", "com.jcraft.jsch.jce.DH");
        f3316a.put("3des-cbc", "com.jcraft.jsch.jce.TripleDESCBC");
        f3316a.put("blowfish-cbc", "com.jcraft.jsch.jce.BlowfishCBC");
        f3316a.put("hmac-sha1", "com.jcraft.jsch.jce.HMACSHA1");
        f3316a.put("hmac-sha1-96", "com.jcraft.jsch.jce.HMACSHA196");
        f3316a.put("hmac-md5", "com.jcraft.jsch.jce.HMACMD5");
        f3316a.put("hmac-md5-96", "com.jcraft.jsch.jce.HMACMD596");
        f3316a.put("sha-1", "com.jcraft.jsch.jce.SHA1");
        f3316a.put("md5", "com.jcraft.jsch.jce.MD5");
        f3316a.put("signature.dss", "com.jcraft.jsch.jce.SignatureDSA");
        f3316a.put("signature.rsa", "com.jcraft.jsch.jce.SignatureRSA");
        f3316a.put("keypairgen.dsa", "com.jcraft.jsch.jce.KeyPairGenDSA");
        f3316a.put("keypairgen.rsa", "com.jcraft.jsch.jce.KeyPairGenRSA");
        f3316a.put("random", "com.jcraft.jsch.jce.Random");
        f3316a.put("none", "com.jcraft.jsch.CipherNone");
        f3316a.put("aes128-cbc", "com.jcraft.jsch.jce.AES128CBC");
        f3316a.put("aes192-cbc", "com.jcraft.jsch.jce.AES192CBC");
        f3316a.put("aes256-cbc", "com.jcraft.jsch.jce.AES256CBC");
        f3316a.put("aes128-ctr", "com.jcraft.jsch.jce.AES128CTR");
        f3316a.put("aes192-ctr", "com.jcraft.jsch.jce.AES192CTR");
        f3316a.put("aes256-ctr", "com.jcraft.jsch.jce.AES256CTR");
        f3316a.put("3des-ctr", "com.jcraft.jsch.jce.TripleDESCTR");
        f3316a.put("arcfour", "com.jcraft.jsch.jce.ARCFOUR");
        f3316a.put("arcfour128", "com.jcraft.jsch.jce.ARCFOUR128");
        f3316a.put("arcfour256", "com.jcraft.jsch.jce.ARCFOUR256");
        f3316a.put("userauth.none", "com.jcraft.jsch.UserAuthNone");
        f3316a.put("userauth.password", "com.jcraft.jsch.UserAuthPassword");
        f3316a.put("userauth.keyboard-interactive", "com.jcraft.jsch.UserAuthKeyboardInteractive");
        f3316a.put("userauth.publickey", "com.jcraft.jsch.UserAuthPublicKey");
        f3316a.put("userauth.gssapi-with-mic", "com.jcraft.jsch.UserAuthGSSAPIWithMIC");
        f3316a.put("gssapi-with-mic.krb5", "com.jcraft.jsch.jgss.GSSContextKrb5");
        f3316a.put("zlib", "com.jcraft.jsch.jcraft.Compression");
        f3316a.put("zlib@openssh.com", "com.jcraft.jsch.jcraft.Compression");
        f3316a.put("StrictHostKeyChecking", "ask");
        f3316a.put("HashKnownHosts", "no");
        f3316a.put("PreferredAuthentications", "gssapi-with-mic,publickey,keyboard-interactive,password");
        f3316a.put("CheckCiphers", "aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cbc,3des-ctr,arcfour,arcfour128,arcfour256");
        f = new Logger() { // from class: com.jcraft.jsch.JSch.1
            @Override // com.jcraft.jsch.Logger
            public void a(int i, String str) {
            }

            @Override // com.jcraft.jsch.Logger
            public boolean a(int i) {
                return false;
            }
        };
        d = f;
    }

    public JSch() {
        try {
            String str = (String) System.getProperties().get("os.name");
            if (str == null || !str.equals("Mac OS X")) {
                return;
            }
            f3316a.put("hmac-sha1", "com.jcraft.jsch.jcraft.HMACSHA1");
            f3316a.put("hmac-md5", "com.jcraft.jsch.jcraft.HMACMD5");
            f3316a.put("hmac-md5-96", "com.jcraft.jsch.jcraft.HMACMD596");
            f3316a.put("hmac-sha1-96", "com.jcraft.jsch.jcraft.HMACSHA196");
        } catch (Exception e) {
        }
    }

    public static String a(String str) {
        String str2;
        synchronized (f3316a) {
            str2 = (String) f3316a.get(str);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Logger b() {
        return d;
    }

    public HostKeyRepository a() {
        if (this.e == null) {
            this.e = new KnownHosts(this);
        }
        return this.e;
    }

    public Session a(String str, String str2, int i) {
        if (str == null) {
            throw new JSchException("username must not be null.");
        }
        if (str2 == null) {
            throw new JSchException("host must not be null.");
        }
        Session session = new Session(this);
        session.c(str);
        session.b(str2);
        session.b(i);
        return session;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Session session) {
        synchronized (this.f3317b) {
            this.f3317b.addElement(session);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(Session session) {
        boolean remove;
        synchronized (this.f3317b) {
            remove = this.f3317b.remove(session);
        }
        return remove;
    }
}
