package com.jcraft.jsch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UserAuthNone extends UserAuth {
    private String e = null;

    UserAuthNone() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.e;
    }

    @Override // com.jcraft.jsch.UserAuth
    public boolean a(Session session) {
        super.a(session);
        this.f3352b.a();
        this.c.a((byte) 5);
        this.c.b(Util.b("ssh-userauth"));
        session.b(this.f3352b);
        if (JSch.b().a(1)) {
            JSch.b().a(1, "SSH_MSG_SERVICE_REQUEST sent");
        }
        this.c = session.a(this.c);
        boolean z = this.c.m() == 6;
        if (JSch.b().a(1)) {
            JSch.b().a(1, "SSH_MSG_SERVICE_ACCEPT received");
        }
        if (!z) {
            return false;
        }
        byte[] b2 = Util.b(this.d);
        this.f3352b.a();
        this.c.a((byte) 50);
        this.c.b(b2);
        this.c.b(Util.b("ssh-connection"));
        this.c.b(Util.b("none"));
        session.b(this.f3352b);
        while (true) {
            this.c = session.a(this.c);
            int m = this.c.m() & 255;
            if (m == 52) {
                return true;
            }
            if (m != 53) {
                if (m != 51) {
                    throw new JSchException("USERAUTH fail (" + m + ")");
                }
                this.c.c();
                this.c.f();
                this.c.f();
                byte[] i = this.c.i();
                this.c.f();
                this.e = Util.b(i);
                return false;
            }
            this.c.c();
            this.c.f();
            this.c.f();
            byte[] i2 = this.c.i();
            this.c.i();
            String b3 = Util.b(i2);
            if (this.f3351a != null) {
                try {
                    this.f3351a.d(b3);
                } catch (RuntimeException e) {
                }
            }
        }
    }
}
