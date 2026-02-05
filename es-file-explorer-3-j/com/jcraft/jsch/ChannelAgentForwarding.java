package com.jcraft.jsch;

import java.io.IOException;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChannelAgentForwarding extends Channel {
    private Buffer C;
    private Buffer F;
    private final int u = 11;
    private final int v = 12;
    private final int w = 13;
    private final int x = 14;
    private final int y = 17;
    private final int z = 18;
    private final int A = 19;
    private final int B = 30;
    boolean t = true;
    private Buffer D = null;
    private Packet E = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelAgentForwarding() {
        this.C = null;
        this.F = null;
        c(131072);
        d(131072);
        e(16384);
        this.d = Util.b("auth-agent@openssh.com");
        this.C = new Buffer();
        this.C.j();
        this.F = new Buffer();
        this.o = true;
    }

    private void a(byte[] bArr) {
        this.E.a();
        this.D.a((byte) 94);
        this.D.a(this.c);
        this.D.a(bArr.length + 4);
        this.D.b(bArr);
        try {
            l().a(this.E, this, bArr.length + 4);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.jcraft.jsch.Channel
    public void a(byte[] bArr, int i, int i2) {
        Identity identity;
        String b2;
        int i3 = 0;
        if (this.E == null) {
            this.D = new Buffer(this.i);
            this.E = new Packet(this.D);
        }
        this.C.k();
        if (this.C.f3290b.length < this.C.c + i2) {
            byte[] bArr2 = new byte[this.C.d + i2];
            System.arraycopy(this.C.f3290b, 0, bArr2, 0, this.C.f3290b.length);
            this.C.f3290b = bArr2;
        }
        this.C.a(bArr, i, i2);
        if (this.C.c() > this.C.a()) {
            Buffer buffer = this.C;
            buffer.d -= 4;
            return;
        }
        int f = this.C.f();
        try {
            Session l = l();
            Vector vector = l.o.c;
            UserInfo c = l.c();
            if (f == 11) {
                this.F.j();
                this.F.a((byte) 12);
                synchronized (vector) {
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < vector.size()) {
                        int i6 = ((Identity) vector.elementAt(i4)).a() != null ? i5 + 1 : i5;
                        i4++;
                        i5 = i6;
                    }
                    this.F.a(i5);
                    while (i3 < vector.size()) {
                        byte[] a2 = ((Identity) vector.elementAt(i3)).a();
                        if (a2 != null) {
                            this.F.b(a2);
                            this.F.b(Util.f3353a);
                        }
                        i3++;
                    }
                }
                byte[] bArr3 = new byte[this.F.a()];
                this.F.d(bArr3);
                a(bArr3);
                return;
            }
            if (f == 13) {
                byte[] i7 = this.C.i();
                byte[] i8 = this.C.i();
                this.C.c();
                synchronized (vector) {
                    while (true) {
                        if (i3 >= vector.size()) {
                            identity = null;
                            break;
                        }
                        Identity identity2 = (Identity) vector.elementAt(i3);
                        if (identity2.a() != null && Util.b(i7, identity2.a())) {
                            if (identity2.d()) {
                                if (c == null) {
                                    continue;
                                }
                                while (identity2.d() && c.b("Passphrase for " + identity2.c()) && (b2 = c.b()) != null) {
                                    try {
                                        if (identity2.a(Util.b(b2))) {
                                            break;
                                        }
                                    } catch (JSchException e) {
                                    }
                                }
                            }
                            if (!identity2.d()) {
                                identity = identity2;
                                break;
                            }
                        }
                        i3++;
                    }
                }
                byte[] bArr4 = (byte[]) null;
                if (identity != null) {
                    bArr4 = identity.b(i8);
                }
                this.F.j();
                if (bArr4 == null) {
                    this.F.a((byte) 30);
                } else {
                    this.F.a((byte) 14);
                    this.F.b(bArr4);
                }
                byte[] bArr5 = new byte[this.F.a()];
                this.F.d(bArr5);
                a(bArr5);
            }
        } catch (JSchException e2) {
            throw new IOException(e2.toString());
        }
    }

    @Override // com.jcraft.jsch.Channel, java.lang.Runnable
    public void run() {
        try {
            m();
        } catch (Exception e) {
            this.n = true;
            j();
        }
    }
}
