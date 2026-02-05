package com.jcraft.jsch;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Vector;

/* loaded from: classes.dex */
public class KnownHosts implements HostKeyRepository {
    private static final byte[] e = {32};
    private static final byte[] f = Util.b("\n");

    /* renamed from: a, reason: collision with root package name */
    private JSch f3322a;
    private Vector c;

    /* renamed from: b, reason: collision with root package name */
    private String f3323b = null;
    private MAC d = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class HashedHostKey extends HostKey {
        byte[] d;
        byte[] e;
        private boolean g;

        HashedHostKey(String str, int i, byte[] bArr) {
            super(str, i, bArr);
            this.g = false;
            this.d = null;
            this.e = null;
            if (!this.f3310a.startsWith("|1|") || this.f3310a.substring("|1|".length()).indexOf("|") <= 0) {
                return;
            }
            String substring = this.f3310a.substring("|1|".length());
            String substring2 = substring.substring(0, substring.indexOf("|"));
            String substring3 = substring.substring(substring.indexOf("|") + 1);
            this.d = Util.a(Util.b(substring2), 0, substring2.length());
            this.e = Util.a(Util.b(substring3), 0, substring3.length());
            if (this.d.length == 20 && this.e.length == 20) {
                this.g = true;
            } else {
                this.d = null;
                this.e = null;
            }
        }

        HashedHostKey(KnownHosts knownHosts, String str, byte[] bArr) {
            this(str, 0, bArr);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.jcraft.jsch.HostKey
        public boolean a(String str) {
            boolean b2;
            if (!this.g) {
                return super.a(str);
            }
            MAC c = KnownHosts.this.c();
            try {
                synchronized (c) {
                    c.a(this.d);
                    byte[] b3 = Util.b(str);
                    c.a(b3, 0, b3.length);
                    byte[] bArr = new byte[c.a()];
                    c.a(bArr, 0);
                    b2 = Util.b(this.e, bArr);
                }
                return b2;
            } catch (Exception e) {
                System.out.println(e);
                return false;
            }
        }

        boolean d() {
            return this.g;
        }

        void e() {
            if (this.g) {
                return;
            }
            MAC c = KnownHosts.this.c();
            if (this.d == null) {
                Random random = Session.f;
                synchronized (random) {
                    this.d = new byte[c.a()];
                    random.a(this.d, 0, this.d.length);
                }
            }
            try {
                synchronized (c) {
                    c.a(this.d);
                    byte[] b2 = Util.b(this.f3310a);
                    c.a(b2, 0, b2.length);
                    this.e = new byte[c.a()];
                    c.a(this.e, 0);
                }
            } catch (Exception e) {
            }
            this.f3310a = "|1|" + Util.b(Util.b(this.d, 0, this.d.length)) + "|" + Util.b(Util.b(this.e, 0, this.e.length));
            this.g = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KnownHosts(JSch jSch) {
        this.f3322a = null;
        this.c = null;
        this.f3322a = jSch;
        this.c = new Vector();
    }

    private int a(byte[] bArr) {
        if (bArr[8] == 100) {
            return 1;
        }
        return bArr[8] == 114 ? 2 : 3;
    }

    private String a(String str, String str2) {
        int length = str2.length();
        int length2 = str.length();
        int i = 0;
        while (i < length2) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                break;
            }
            if (str2.equals(str.substring(i, indexOf))) {
                return String.valueOf(str.substring(0, i)) + str.substring(indexOf + 1);
            }
            i = indexOf + 1;
        }
        if (str.endsWith(str2) && length2 - i == length) {
            return str.substring(0, length == length2 ? 0 : (length2 - length) - 1);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized MAC c() {
        if (this.d == null) {
            try {
                this.d = (MAC) Class.forName(JSch.a("hmac-sha1")).newInstance();
            } catch (Exception e2) {
                System.err.println("hmacsha1: " + e2);
            }
        }
        return this.d;
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public int a(String str, byte[] bArr) {
        int i;
        if (str == null) {
            return 1;
        }
        int a2 = a(bArr);
        synchronized (this.c) {
            int i2 = 0;
            int i3 = 1;
            while (i2 < this.c.size()) {
                HostKey hostKey = (HostKey) this.c.elementAt(i2);
                if (!hostKey.a(str) || hostKey.f3311b != a2) {
                    i = i3;
                } else {
                    if (Util.b(hostKey.c, bArr)) {
                        return 0;
                    }
                    i = 2;
                }
                i2++;
                i3 = i;
            }
            return (i3 == 1 && str.startsWith("[") && str.indexOf("]:") > 1) ? a(str.substring(1, str.indexOf("]:")), bArr) : i3;
        }
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public String a() {
        return this.f3323b;
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public void a(HostKey hostKey, UserInfo userInfo) {
        int i = hostKey.f3311b;
        String a2 = hostKey.a();
        byte[] bArr = hostKey.c;
        synchronized (this.c) {
            for (int i2 = 0; i2 < this.c.size(); i2++) {
                HostKey hostKey2 = (HostKey) this.c.elementAt(i2);
                if (hostKey2.a(a2)) {
                    int i3 = hostKey2.f3311b;
                }
            }
        }
        this.c.addElement(hostKey);
        String a3 = a();
        if (a3 != null) {
            boolean z = true;
            File file = new File(a3);
            if (!file.exists()) {
                if (userInfo != null) {
                    z = userInfo.a(String.valueOf(a3) + " does not exist.\nAre you sure you want to create it?");
                    File parentFile = file.getParentFile();
                    if (z && parentFile != null && !parentFile.exists() && (z = userInfo.a("The parent directory " + parentFile + " does not exist.\nAre you sure you want to create it?"))) {
                        if (parentFile.mkdirs()) {
                            userInfo.d(parentFile + " has been succesfully created.\nPlease check its access permission.");
                        } else {
                            userInfo.d(parentFile + " has not been created.");
                            z = false;
                        }
                    }
                    if (parentFile == null) {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
            if (z) {
                try {
                    a(a3);
                } catch (Exception e2) {
                    System.err.println("sync known_hosts: " + e2);
                }
            }
        }
    }

    void a(OutputStream outputStream) {
        try {
            synchronized (this.c) {
                for (int i = 0; i < this.c.size(); i++) {
                    HostKey hostKey = (HostKey) this.c.elementAt(i);
                    String a2 = hostKey.a();
                    String b2 = hostKey.b();
                    if (b2.equals("UNKNOWN")) {
                        outputStream.write(Util.b(a2));
                        outputStream.write(f);
                    } else {
                        outputStream.write(Util.b(a2));
                        outputStream.write(e);
                        outputStream.write(Util.b(b2));
                        outputStream.write(e);
                        outputStream.write(Util.b(hostKey.c()));
                        outputStream.write(f);
                    }
                }
            }
        } catch (Exception e2) {
            System.err.println(e2);
        }
    }

    protected synchronized void a(String str) {
        if (str != null) {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            a(fileOutputStream);
            fileOutputStream.close();
        }
    }

    @Override // com.jcraft.jsch.HostKeyRepository
    public void a(String str, String str2, byte[] bArr) {
        boolean z;
        boolean z2;
        synchronized (this.c) {
            int i = 0;
            z = false;
            while (i < this.c.size()) {
                HostKey hostKey = (HostKey) this.c.elementAt(i);
                if (str == null || (hostKey.a(str) && (str2 == null || (hostKey.b().equals(str2) && (bArr == null || Util.b(bArr, hostKey.c)))))) {
                    String a2 = hostKey.a();
                    if (a2.equals(str) || ((hostKey instanceof HashedHostKey) && ((HashedHostKey) hostKey).d())) {
                        this.c.removeElement(hostKey);
                    } else {
                        hostKey.f3310a = a(a2, str);
                    }
                    z2 = true;
                } else {
                    z2 = z;
                }
                i++;
                z = z2;
            }
        }
        if (z) {
            try {
                b();
            } catch (Exception e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HostKey b(String str, byte[] bArr) {
        HashedHostKey hashedHostKey = new HashedHostKey(this, str, bArr);
        hashedHostKey.e();
        return hashedHostKey;
    }

    protected void b() {
        if (this.f3323b != null) {
            a(this.f3323b);
        }
    }
}
