package com.jcraft.jsch;

/* loaded from: classes.dex */
public class UserAuthGSSAPIWithMIC extends UserAuth {
    private static final byte[][] e = {new byte[]{6, 9, 42, -122, 72, -122, -9, 18, 1, 2, 2}};
    private static final String[] f = {"gssapi-with-mic.krb5"};

    @Override // com.jcraft.jsch.UserAuth
    public boolean a(Session session) {
        String str;
        super.a(session);
        byte[] b2 = Util.b(this.d);
        this.f3352b.a();
        this.c.a((byte) 50);
        this.c.b(b2);
        this.c.b(Util.b("ssh-connection"));
        this.c.b(Util.b("gssapi-with-mic"));
        this.c.a(e.length);
        for (int i = 0; i < e.length; i++) {
            this.c.b(e[i]);
        }
        session.b(this.f3352b);
        while (true) {
            this.c = session.a(this.c);
            int m = this.c.m() & 255;
            if (m == 51) {
                return false;
            }
            if (m == 60) {
                this.c.c();
                this.c.f();
                this.c.f();
                byte[] i2 = this.c.i();
                int i3 = 0;
                while (true) {
                    if (i3 >= e.length) {
                        str = null;
                        break;
                    }
                    if (Util.b(i2, e[i3])) {
                        str = f[i3];
                        break;
                    }
                    i3++;
                }
                if (str == null) {
                    return false;
                }
                try {
                    GSSContext gSSContext = (GSSContext) Class.forName(session.d(str)).newInstance();
                    try {
                        gSSContext.a(this.d, session.k);
                        byte[] bArr = new byte[0];
                        while (!gSSContext.a()) {
                            try {
                                bArr = gSSContext.a(bArr, 0, bArr.length);
                                if (bArr != null) {
                                    this.f3352b.a();
                                    this.c.a((byte) 61);
                                    this.c.b(bArr);
                                    session.b(this.f3352b);
                                }
                                if (!gSSContext.a()) {
                                    this.c = session.a(this.c);
                                    int m2 = this.c.m() & 255;
                                    if (m2 == 64) {
                                        this.c = session.a(this.c);
                                        m2 = this.c.m() & 255;
                                    } else if (m2 == 65) {
                                        this.c = session.a(this.c);
                                        m2 = this.c.m() & 255;
                                    }
                                    if (m2 == 51) {
                                        return false;
                                    }
                                    this.c.c();
                                    this.c.f();
                                    this.c.f();
                                    bArr = this.c.i();
                                }
                            } catch (JSchException e2) {
                                return false;
                            }
                        }
                        Buffer buffer = new Buffer();
                        buffer.b(session.a());
                        buffer.a((byte) 50);
                        buffer.b(b2);
                        buffer.b(Util.b("ssh-connection"));
                        buffer.b(Util.b("gssapi-with-mic"));
                        byte[] b3 = gSSContext.b(buffer.f3290b, 0, buffer.a());
                        if (b3 == null) {
                            return false;
                        }
                        this.f3352b.a();
                        this.c.a((byte) 66);
                        this.c.b(b3);
                        session.b(this.f3352b);
                        gSSContext.b();
                        this.c = session.a(this.c);
                        int m3 = this.c.m() & 255;
                        if (m3 == 52) {
                            return true;
                        }
                        if (m3 != 51) {
                            return false;
                        }
                        this.c.c();
                        this.c.f();
                        this.c.f();
                        byte[] i4 = this.c.i();
                        if (this.c.f() != 0) {
                            throw new JSchPartialAuthException(Util.b(i4));
                        }
                        return false;
                    } catch (JSchException e3) {
                        return false;
                    }
                } catch (Exception e4) {
                    return false;
                }
            }
            if (m != 53) {
                return false;
            }
            this.c.c();
            this.c.f();
            this.c.f();
            byte[] i5 = this.c.i();
            this.c.i();
            String b4 = Util.b(i5);
            if (this.f3351a != null) {
                this.f3351a.d(b4);
            }
        }
    }
}
