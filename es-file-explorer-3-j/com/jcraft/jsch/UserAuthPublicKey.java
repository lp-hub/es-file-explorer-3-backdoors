package com.jcraft.jsch;

import java.util.Vector;

/* loaded from: classes.dex */
class UserAuthPublicKey extends UserAuth {
    UserAuthPublicKey() {
    }

    @Override // com.jcraft.jsch.UserAuth
    public boolean a(Session session) {
        int m;
        super.a(session);
        Vector vector = session.o.c;
        byte[] bArr = (byte[]) null;
        synchronized (vector) {
            if (vector.size() <= 0) {
                return false;
            }
            byte[] b2 = Util.b(this.d);
            byte[] bArr2 = bArr;
            for (int i = 0; i < vector.size(); i++) {
                Identity identity = (Identity) vector.elementAt(i);
                byte[] a2 = identity.a();
                if (a2 != null) {
                    this.f3352b.a();
                    this.c.a((byte) 50);
                    this.c.b(b2);
                    this.c.b(Util.b("ssh-connection"));
                    this.c.b(Util.b("publickey"));
                    this.c.a((byte) 0);
                    this.c.b(Util.b(identity.b()));
                    this.c.b(a2);
                    session.b(this.f3352b);
                    while (true) {
                        this.c = session.a(this.c);
                        m = this.c.m() & 255;
                        if (m != 60 && m != 51 && m == 53) {
                            this.c.c();
                            this.c.f();
                            this.c.f();
                            byte[] i2 = this.c.i();
                            this.c.i();
                            String b3 = Util.b(i2);
                            if (this.f3351a != null) {
                                this.f3351a.d(b3);
                            }
                        }
                    }
                    if (m != 60) {
                        continue;
                    }
                }
                int i3 = 5;
                do {
                    if (identity.d() && bArr2 == null) {
                        if (this.f3351a == null) {
                            throw new JSchException("USERAUTH fail");
                        }
                        if (identity.d() && !this.f3351a.b("Passphrase for " + identity.c())) {
                            throw new JSchAuthCancelException("publickey");
                        }
                        String b4 = this.f3351a.b();
                        if (b4 != null) {
                            bArr2 = Util.b(b4);
                        }
                    }
                    if (!(identity.d() && bArr2 == null) && identity.a(bArr2)) {
                        break;
                    }
                    Util.c(bArr2);
                    bArr2 = (byte[]) null;
                    i3--;
                } while (i3 != 0);
                Util.c(bArr2);
                bArr2 = (byte[]) null;
                if (identity.d()) {
                    continue;
                } else {
                    if (a2 == null) {
                        a2 = identity.a();
                    }
                    if (a2 != null) {
                        this.f3352b.a();
                        this.c.a((byte) 50);
                        this.c.b(b2);
                        this.c.b(Util.b("ssh-connection"));
                        this.c.b(Util.b("publickey"));
                        this.c.a((byte) 1);
                        this.c.b(Util.b(identity.b()));
                        this.c.b(a2);
                        byte[] a3 = session.a();
                        int length = a3.length;
                        byte[] bArr3 = new byte[((length + 4) + this.c.c) - 5];
                        bArr3[0] = (byte) (length >>> 24);
                        bArr3[1] = (byte) (length >>> 16);
                        bArr3[2] = (byte) (length >>> 8);
                        bArr3[3] = (byte) length;
                        System.arraycopy(a3, 0, bArr3, 4, length);
                        System.arraycopy(this.c.f3290b, 5, bArr3, length + 4, this.c.c - 5);
                        byte[] b5 = identity.b(bArr3);
                        if (b5 == null) {
                            break;
                        }
                        this.c.b(b5);
                        session.b(this.f3352b);
                        while (true) {
                            this.c = session.a(this.c);
                            int m2 = this.c.m() & 255;
                            if (m2 == 52) {
                                return true;
                            }
                            if (m2 == 53) {
                                this.c.c();
                                this.c.f();
                                this.c.f();
                                byte[] i4 = this.c.i();
                                this.c.i();
                                String b6 = Util.b(i4);
                                if (this.f3351a != null) {
                                    this.f3351a.d(b6);
                                }
                            } else if (m2 == 51) {
                                this.c.c();
                                this.c.f();
                                this.c.f();
                                byte[] i5 = this.c.i();
                                if (this.c.f() != 0) {
                                    throw new JSchPartialAuthException(Util.b(i5));
                                }
                            } else {
                                continue;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            return false;
        }
    }
}
