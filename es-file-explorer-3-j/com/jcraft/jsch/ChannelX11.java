package com.jcraft.jsch;

import java.io.IOException;
import java.net.Socket;
import java.util.Hashtable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChannelX11 extends Channel {
    private static String u = "127.0.0.1";
    private static int v = 6000;
    static byte[] t = null;
    private static byte[] x = null;
    private static Hashtable y = new Hashtable();
    private static Hashtable z = new Hashtable();
    private static byte[] A = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    private boolean w = true;
    private Socket B = null;
    private byte[] C = new byte[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelX11() {
        c(131072);
        d(131072);
        e(16384);
        this.d = Util.b("x11");
        this.o = true;
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] c(Session session) {
        byte[] bArr;
        synchronized (z) {
            bArr = (byte[]) z.get(session);
            if (bArr == null) {
                Random random = Session.f;
                byte[] bArr2 = new byte[16];
                synchronized (random) {
                    random.a(bArr2, 0, 16);
                }
                y.put(session, bArr2);
                bArr = new byte[32];
                for (int i = 0; i < 16; i++) {
                    bArr[i * 2] = A[(bArr2[i] >>> 4) & 15];
                    bArr[(i * 2) + 1] = A[bArr2[i] & 15];
                }
                z.put(session, bArr);
            }
        }
        return bArr;
    }

    private byte[] c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[this.C.length + i2];
        System.arraycopy(bArr, i, bArr2, this.C.length, i2);
        if (this.C.length > 0) {
            System.arraycopy(this.C, 0, bArr2, 0, this.C.length);
        }
        this.C = bArr2;
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.jcraft.jsch.Channel
    public void a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte[] bArr2;
        if (!this.w) {
            this.j.a(bArr, i, i2);
            return;
        }
        try {
            Session l = l();
            byte[] c = c(bArr, i, i2);
            int length = c.length;
            if (length < 9) {
                return;
            }
            int i5 = (c[7] & 255) + ((c[6] & 255) * 256);
            int i6 = ((c[8] & 255) * 256) + (c[9] & 255);
            if ((c[0] & 255) == 66 || (c[0] & 255) != 108) {
                i3 = i5;
                i4 = i6;
            } else {
                int i7 = ((i5 << 8) & 65280) | ((i5 >>> 8) & 255);
                int i8 = ((i6 << 8) & 65280) | ((i6 >>> 8) & 255);
                i3 = i7;
                i4 = i8;
            }
            if (length >= i3 + 12 + ((-i3) & 3) + i4) {
                byte[] bArr3 = new byte[i4];
                System.arraycopy(c, i3 + 12 + ((-i3) & 3), bArr3, 0, i4);
                synchronized (y) {
                    bArr2 = (byte[]) y.get(l);
                }
                if (!a(bArr3, bArr2)) {
                    this.k = null;
                    g();
                    this.j.c();
                    j();
                } else if (t != null) {
                    System.arraycopy(t, 0, c, ((-i3) & 3) + i3 + 12, i4);
                }
                this.w = false;
                this.j.a(c, 0, length);
                this.C = null;
            }
        } catch (JSchException e) {
            throw new IOException(e.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0078, code lost:
    
        g();
     */
    @Override // com.jcraft.jsch.Channel, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        try {
            this.B = Util.a(u, v, 10000);
            this.B.setTcpNoDelay(true);
            this.j = new IO();
            this.j.a(this.B.getInputStream());
            this.j.a(this.B.getOutputStream());
            m();
            this.k = Thread.currentThread();
            Buffer buffer = new Buffer(this.i);
            Packet packet = new Packet(buffer);
            while (true) {
                try {
                    if (this.k != null && this.j != null && this.j.f3312a != null) {
                        int read = this.j.f3312a.read(buffer.f3290b, 14, ((buffer.f3290b.length - 14) - 32) - 20);
                        if (read > 0) {
                            if (this.n) {
                                break;
                            }
                            packet.a();
                            buffer.a((byte) 94);
                            buffer.a(this.c);
                            buffer.a(read);
                            buffer.b(read);
                            l().a(packet, this, read);
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (Exception e) {
                }
            }
            j();
        } catch (Exception e2) {
            i(1);
            this.n = true;
            j();
        }
    }
}
