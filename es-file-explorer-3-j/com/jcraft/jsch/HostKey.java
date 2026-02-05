package com.jcraft.jsch;

/* loaded from: classes.dex */
public class HostKey {
    private static final byte[] d = Util.b("ssh-dss");
    private static final byte[] e = Util.b("ssh-rsa");

    /* renamed from: a, reason: collision with root package name */
    protected String f3310a;

    /* renamed from: b, reason: collision with root package name */
    protected int f3311b;
    protected byte[] c;

    public HostKey(String str, int i, byte[] bArr) {
        this.f3310a = str;
        if (i != 0) {
            this.f3311b = i;
        } else if (bArr[8] == 100) {
            this.f3311b = 1;
        } else {
            if (bArr[8] != 114) {
                throw new JSchException("invalid key type");
            }
            this.f3311b = 2;
        }
        this.c = bArr;
    }

    public HostKey(String str, byte[] bArr) {
        this(str, 0, bArr);
    }

    private boolean b(String str) {
        String str2 = this.f3310a;
        int length = str2.length();
        int length2 = str.length();
        int i = 0;
        while (i < length) {
            int indexOf = str2.indexOf(44, i);
            if (indexOf == -1) {
                if (length2 == length - i) {
                    return str2.regionMatches(true, i, str, 0, length2);
                }
                return false;
            }
            if (length2 == indexOf - i && str2.regionMatches(true, i, str, 0, length2)) {
                return true;
            }
            i = indexOf + 1;
        }
        return false;
    }

    public String a() {
        return this.f3310a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str) {
        return b(str);
    }

    public String b() {
        return this.f3311b == 1 ? Util.b(d) : this.f3311b == 2 ? Util.b(e) : "UNKNOWN";
    }

    public String c() {
        return Util.b(Util.b(this.c, 0, this.c.length));
    }
}
