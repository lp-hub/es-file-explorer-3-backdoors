package com.jcraft.jsch;

import com.jcraft.jsch.Channel;
import java.io.InputStream;
import java.io.PipedOutputStream;
import java.net.Socket;
import java.util.Vector;

/* loaded from: classes.dex */
public class ChannelForwardedTCPIP extends Channel {
    static Vector t = new Vector();
    String v;
    int w;
    int x;
    SocketFactory u = null;
    private Socket y = null;
    private ForwardedTCPIPDaemon z = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelForwardedTCPIP() {
        c(131072);
        d(131072);
        e(16384);
        this.j = new IO();
        this.o = true;
    }

    static void a(Session session, String str, int i) {
        Object[] objArr;
        synchronized (t) {
            Object[] objArr2 = (Object[]) null;
            int i2 = 0;
            while (true) {
                if (i2 >= t.size()) {
                    objArr = objArr2;
                    break;
                }
                objArr = (Object[]) t.elementAt(i2);
                if (objArr[0] == session && ((Integer) objArr[1]).intValue() == i) {
                    break;
                }
                i2++;
            }
            if (objArr == null) {
                return;
            }
            t.removeElement(objArr);
            String str2 = str == null ? (String) objArr[4] : str;
            if (str2 == null) {
                str2 = "0.0.0.0";
            }
            Buffer buffer = new Buffer(100);
            Packet packet = new Packet(buffer);
            try {
                packet.a();
                buffer.a((byte) 80);
                buffer.b(Util.b("cancel-tcpip-forward"));
                buffer.a((byte) 0);
                buffer.b(Util.b(str2));
                buffer.a(i);
                session.b(packet);
            } catch (Exception e) {
            }
        }
    }

    static Object[] a(Session session, int i) {
        synchronized (t) {
            for (int i2 = 0; i2 < t.size(); i2++) {
                Object[] objArr = (Object[]) t.elementAt(i2);
                if (objArr[0] == session && ((Integer) objArr[1]).intValue() == i) {
                    return objArr;
                }
            }
            return null;
        }
    }

    static void b(Session session, int i) {
        a(session, (String) null, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Session session) {
        int[] iArr;
        int i;
        int i2;
        synchronized (t) {
            iArr = new int[t.size()];
            int i3 = 0;
            i = 0;
            while (i3 < t.size()) {
                Object[] objArr = (Object[]) t.elementAt(i3);
                if (objArr[0] == session) {
                    iArr[i] = ((Integer) objArr[1]).intValue();
                    i2 = i + 1;
                } else {
                    i2 = i;
                }
                i3++;
                i = i2;
            }
        }
        for (int i4 = 0; i4 < i; i4++) {
            b(session, iArr[i4]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.jcraft.jsch.Channel
    public void a(Buffer buffer) {
        Session session;
        a(buffer.c());
        a(buffer.d());
        g(buffer.c());
        buffer.i();
        int c = buffer.c();
        buffer.i();
        buffer.c();
        try {
            session = l();
        } catch (JSchException e) {
            session = null;
        }
        synchronized (t) {
            int i = 0;
            while (true) {
                if (i >= t.size()) {
                    break;
                }
                Object[] objArr = (Object[]) t.elementAt(i);
                if (objArr[0] == session && ((Integer) objArr[1]).intValue() == c) {
                    this.x = c;
                    this.v = (String) objArr[2];
                    if (objArr[3] == null || (objArr[3] instanceof Object[])) {
                        this.w = -1;
                    } else {
                        this.w = ((Integer) objArr[3]).intValue();
                    }
                    if (objArr.length >= 6) {
                        this.u = (SocketFactory) objArr[5];
                    }
                } else {
                    i++;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ce, code lost:
    
        g();
     */
    @Override // com.jcraft.jsch.Channel, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        try {
            if (this.w == -1) {
                this.z = (ForwardedTCPIPDaemon) Class.forName(this.v).newInstance();
                PipedOutputStream pipedOutputStream = new PipedOutputStream();
                this.j.a((InputStream) new Channel.PassiveInputStream(pipedOutputStream, 32768), false);
                this.z.a(this, e(), pipedOutputStream);
                this.z.a((Object[]) a(l(), this.x)[3]);
                new Thread(this.z).start();
            } else {
                this.y = this.u == null ? Util.a(this.v, this.w, 10000) : this.u.a(this.v, this.w);
                this.y.setTcpNoDelay(true);
                this.j.a(this.y.getInputStream());
                this.j.a(this.y.getOutputStream());
            }
            m();
            this.k = Thread.currentThread();
            Buffer buffer = new Buffer(this.i);
            Packet packet = new Packet(buffer);
            while (true) {
                try {
                    if (this.k != null && this.j != null && this.j.f3312a != null) {
                        int read = this.j.f3312a.read(buffer.f3290b, 14, ((buffer.f3290b.length - 14) - 32) - 20);
                        if (read > 0) {
                            packet.a();
                            if (this.n) {
                                break;
                            }
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
