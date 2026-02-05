package com.jcraft.jsch;

/* loaded from: classes.dex */
class UserAuthPassword extends UserAuth {
    private final int e = 60;

    UserAuthPassword() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0147, code lost:
    
        if (r12.f3351a == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0149, code lost:
    
        r12.f3351a.d("Password must be changed.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0150, code lost:
    
        if (r9 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0152, code lost:
    
        com.jcraft.jsch.Util.c(r9);
        r6 = (byte[]) null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01ca, code lost:
    
        if (r0 != 51) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01cc, code lost:
    
        r12.c.c();
        r12.c.f();
        r12.c.f();
        r0 = r12.c.i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01e7, code lost:
    
        if (r12.c.f() == 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01fd, code lost:
    
        if (r9 == null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0208, code lost:
    
        r2 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ff, code lost:
    
        com.jcraft.jsch.Util.c(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0205, code lost:
    
        r2 = (byte[]) null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01f2, code lost:
    
        throw new com.jcraft.jsch.JSchPartialAuthException(com.jcraft.jsch.Util.b(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01f3, code lost:
    
        if (r9 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01f5, code lost:
    
        com.jcraft.jsch.Util.c(r9);
        r6 = (byte[]) null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return false;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0075  */
    @Override // com.jcraft.jsch.UserAuth
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(Session session) {
        byte[] bArr;
        byte[] b2;
        super.a(session);
        byte[] bArr2 = session.n;
        String str = String.valueOf(this.d) + "@" + session.k;
        if (session.l != 22) {
            str = String.valueOf(str) + ":" + session.l;
        }
        loop0: while (true) {
            if (bArr2 == null) {
                try {
                    if (this.f3351a == null) {
                        if (bArr2 != null) {
                            Util.c(bArr2);
                        }
                        return false;
                    }
                    if (!this.f3351a.c("Password for " + str)) {
                        throw new JSchAuthCancelException("password");
                    }
                    String a2 = this.f3351a.a();
                    if (a2 == null) {
                        throw new JSchAuthCancelException("password");
                    }
                    b2 = Util.b(a2);
                } catch (Throwable th) {
                    th = th;
                    bArr = bArr2;
                    if (bArr != null) {
                        Util.c(bArr);
                    }
                    throw th;
                }
            } else {
                b2 = bArr2;
            }
            try {
                byte[] b3 = Util.b(this.d);
                this.f3352b.a();
                this.c.a((byte) 50);
                this.c.b(b3);
                this.c.b(Util.b("ssh-connection"));
                this.c.b(Util.b("password"));
                this.c.a((byte) 0);
                this.c.b(b2);
                session.b(this.f3352b);
                while (true) {
                    this.c = session.a(this.c);
                    int m = this.c.m() & 255;
                    if (m != 52) {
                        if (m != 53) {
                            if (m != 60) {
                                break;
                            }
                            this.c.c();
                            this.c.f();
                            this.c.f();
                            byte[] i = this.c.i();
                            this.c.i();
                            if (this.f3351a == null || !(this.f3351a instanceof UIKeyboardInteractive)) {
                                break loop0;
                            }
                            String[] a3 = ((UIKeyboardInteractive) this.f3351a).a(str, "Password Change Required", Util.b(i), new String[]{"New Password: "}, new boolean[1]);
                            if (a3 == null) {
                                throw new JSchAuthCancelException("password");
                            }
                            byte[] b4 = Util.b(a3[0]);
                            this.f3352b.a();
                            this.c.a((byte) 50);
                            this.c.b(b3);
                            this.c.b(Util.b("ssh-connection"));
                            this.c.b(Util.b("password"));
                            this.c.a((byte) 1);
                            this.c.b(b2);
                            this.c.b(b4);
                            Util.c(b4);
                            session.b(this.f3352b);
                        } else {
                            this.c.c();
                            this.c.f();
                            this.c.f();
                            byte[] i2 = this.c.i();
                            this.c.i();
                            String b5 = Util.b(i2);
                            if (this.f3351a != null) {
                                this.f3351a.d(b5);
                            }
                        }
                    } else {
                        if (b2 != null) {
                            Util.c(b2);
                        }
                        return true;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bArr = b2;
                if (bArr != null) {
                }
                throw th;
            }
        }
    }
}
