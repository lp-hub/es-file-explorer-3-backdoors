package com.jcraft.jsch;

/* loaded from: classes.dex */
class UserAuthKeyboardInteractive extends UserAuth {
    UserAuthKeyboardInteractive() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x00dc, code lost:
    
        r13.c.c();
        r13.c.f();
        r13.c.f();
        r2 = r13.c.i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f7, code lost:
    
        if (r13.c.f() == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0103, code lost:
    
        if (r0 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0208, code lost:
    
        if (r7 == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0211, code lost:
    
        throw new com.jcraft.jsch.JSchAuthCancelException("keyboard-interactive");
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0105, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0102, code lost:
    
        throw new com.jcraft.jsch.JSchPartialAuthException(com.jcraft.jsch.Util.b(r2));
     */
    @Override // com.jcraft.jsch.UserAuth
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(Session session) {
        String[] a2;
        super.a(session);
        if (this.f3351a != null && !(this.f3351a instanceof UIKeyboardInteractive)) {
            return false;
        }
        String str = String.valueOf(this.d) + "@" + session.k;
        if (session.l != 22) {
            str = String.valueOf(str) + ":" + session.l;
        }
        byte[] bArr = session.n;
        byte[] b2 = Util.b(this.d);
        boolean z = false;
        byte[] bArr2 = bArr;
        while (true) {
            this.f3352b.a();
            this.c.a((byte) 50);
            this.c.b(b2);
            this.c.b(Util.b("ssh-connection"));
            this.c.b(Util.b("keyboard-interactive"));
            this.c.b(Util.f3353a);
            this.c.b(Util.f3353a);
            session.b(this.f3352b);
            boolean z2 = z;
            byte[] bArr3 = bArr2;
            boolean z3 = true;
            while (true) {
                this.c = session.a(this.c);
                int m = this.c.m() & 255;
                if (m == 52) {
                    return true;
                }
                if (m == 53) {
                    this.c.c();
                    this.c.f();
                    this.c.f();
                    byte[] i = this.c.i();
                    this.c.i();
                    String b3 = Util.b(i);
                    if (this.f3351a != null) {
                        this.f3351a.d(b3);
                    }
                } else {
                    if (m == 51) {
                        break;
                    }
                    if (m != 60) {
                        return false;
                    }
                    this.c.c();
                    this.c.f();
                    this.c.f();
                    String b4 = Util.b(this.c.i());
                    String b5 = Util.b(this.c.i());
                    Util.b(this.c.i());
                    int c = this.c.c();
                    String[] strArr = new String[c];
                    boolean[] zArr = new boolean[c];
                    for (int i2 = 0; i2 < c; i2++) {
                        strArr[i2] = Util.b(this.c.i());
                        zArr[i2] = this.c.f() != 0;
                    }
                    byte[][] bArr4 = (byte[][]) null;
                    if (bArr3 != null && strArr.length == 1 && !zArr[0] && strArr[0].toLowerCase().startsWith("password:")) {
                        bArr4 = new byte[][]{bArr3};
                        bArr3 = (byte[]) null;
                    } else if ((c > 0 || b4.length() > 0 || b5.length() > 0) && this.f3351a != null && (a2 = ((UIKeyboardInteractive) this.f3351a).a(str, b4, b5, strArr, zArr)) != null) {
                        bArr4 = new byte[a2.length];
                        for (int i3 = 0; i3 < a2.length; i3++) {
                            bArr4[i3] = Util.b(a2[i3]);
                        }
                    }
                    this.f3352b.a();
                    this.c.a((byte) 61);
                    if (c <= 0 || (bArr4 != null && c == bArr4.length)) {
                        this.c.a(c);
                        for (int i4 = 0; i4 < c; i4++) {
                            this.c.b(bArr4[i4]);
                        }
                    } else {
                        if (bArr4 == null) {
                            this.c.a(c);
                            for (int i5 = 0; i5 < c; i5++) {
                                this.c.b(Util.f3353a);
                            }
                        } else {
                            this.c.a(0);
                        }
                        if (bArr4 == null) {
                            z2 = true;
                        }
                    }
                    session.b(this.f3352b);
                    z3 = false;
                }
            }
            z = z2;
            bArr2 = bArr3;
        }
    }
}
