package com.jcraft.jsch;

import com.baidu.sapi2.callback.LoginCallBack;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.Vector;

/* loaded from: classes.dex */
public abstract class Channel implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    static int f3291a = 0;
    private static Vector t = new Vector();

    /* renamed from: b, reason: collision with root package name */
    int f3292b;
    int c = -1;
    byte[] d = Util.b("foo");
    int e = 1048576;
    int f = this.e;
    int g = 16384;
    long h = 0;
    int i = 0;
    IO j = null;
    Thread k = null;
    boolean l = false;
    boolean m = false;
    boolean n = false;
    boolean o = false;
    int p = -1;
    int q = 0;
    int r = 0;
    int s = 0;
    private Session u;

    /* renamed from: com.jcraft.jsch.Channel$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends OutputStream {

        /* renamed from: a, reason: collision with root package name */
        byte[] f3293a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Channel f3294b;
        private int c;
        private Buffer d;
        private Packet e;
        private boolean f;
        private final /* synthetic */ Channel g;

        private synchronized void a() {
            this.d = new Buffer(this.f3294b.i);
            this.e = new Packet(this.d);
            if (((this.d.f3290b.length - 14) - 32) - 20 <= 0) {
                this.d = null;
                this.e = null;
                throw new IOException("failed to initialize the channel.");
            }
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.e == null) {
                try {
                    a();
                } catch (IOException e) {
                    return;
                }
            }
            if (this.f) {
                return;
            }
            if (this.c > 0) {
                flush();
            }
            this.g.g();
            this.f = true;
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
            if (this.f) {
                throw new IOException("Already closed");
            }
            if (this.c == 0) {
                return;
            }
            this.e.a();
            this.d.a((byte) 94);
            this.d.a(this.f3294b.c);
            this.d.a(this.c);
            this.d.b(this.c);
            try {
                int i = this.c;
                this.c = 0;
                this.f3294b.l().a(this.e, this.g, i);
            } catch (Exception e) {
                close();
                throw new IOException(e.toString());
            }
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.f3293a[0] = (byte) i;
            write(this.f3293a, 0, 1);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            if (this.e == null) {
                a();
            }
            if (this.f) {
                throw new IOException("Already closed");
            }
            byte[] bArr2 = this.d.f3290b;
            int length = bArr2.length;
            int i3 = i2;
            while (i3 > 0) {
                int i4 = i3 > ((length - (this.c + 14)) + (-32)) + (-20) ? ((length - (this.c + 14)) - 32) - 20 : i3;
                if (i4 <= 0) {
                    flush();
                } else {
                    System.arraycopy(bArr, i, bArr2, this.c + 14, i4);
                    this.c += i4;
                    i += i4;
                    i3 -= i4;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    class MyPipedInputStream extends PipedInputStream {
        MyPipedInputStream(int i) {
            this.buffer = new byte[i];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public MyPipedInputStream(PipedOutputStream pipedOutputStream, int i) {
            super(pipedOutputStream);
            this.buffer = new byte[i];
        }
    }

    /* loaded from: classes.dex */
    class PassiveInputStream extends MyPipedInputStream {

        /* renamed from: b, reason: collision with root package name */
        PipedOutputStream f3296b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PassiveInputStream(PipedOutputStream pipedOutputStream, int i) {
            super(pipedOutputStream, i);
            this.f3296b = pipedOutputStream;
        }

        @Override // java.io.PipedInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f3296b != null) {
                this.f3296b.close();
            }
            this.f3296b = null;
        }
    }

    /* loaded from: classes.dex */
    class PassiveOutputStream extends PipedOutputStream {
        PassiveOutputStream(PipedInputStream pipedInputStream) {
            super(pipedInputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Channel() {
        synchronized (t) {
            int i = f3291a;
            f3291a = i + 1;
            this.f3292b = i;
            t.addElement(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Channel a(int i, Session session) {
        synchronized (t) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= t.size()) {
                    return null;
                }
                Channel channel = (Channel) t.elementAt(i3);
                if (channel.f3292b == i && channel.u == session) {
                    return channel;
                }
                i2 = i3 + 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Channel a(String str) {
        if (str.equals("session")) {
            return new ChannelSession();
        }
        if (str.equals("shell")) {
            return new ChannelShell();
        }
        if (str.equals("exec")) {
            return new ChannelExec();
        }
        if (str.equals("x11")) {
            return new ChannelX11();
        }
        if (str.equals("auth-agent@openssh.com")) {
            return new ChannelAgentForwarding();
        }
        if (str.equals("direct-tcpip")) {
            return new ChannelDirectTCPIP();
        }
        if (str.equals("forwarded-tcpip")) {
            return new ChannelForwardedTCPIP();
        }
        if (str.equals("sftp")) {
            return new ChannelSftp();
        }
        if (str.equals("subsystem")) {
            return new ChannelSubsystem();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Channel channel) {
        synchronized (t) {
            t.removeElement(channel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Session session) {
        Channel[] channelArr;
        int i;
        int i2;
        synchronized (t) {
            channelArr = new Channel[t.size()];
            int i3 = 0;
            i = 0;
            while (i3 < t.size()) {
                try {
                    Channel channel = (Channel) t.elementAt(i3);
                    if (channel.u == session) {
                        int i4 = i + 1;
                        try {
                            channelArr[i] = channel;
                            i2 = i4;
                        } catch (Exception e) {
                            i2 = i4;
                        }
                    } else {
                        i2 = i;
                    }
                } catch (Exception e2) {
                    i2 = i;
                }
                i3++;
                i = i2;
            }
        }
        for (int i5 = 0; i5 < i; i5++) {
            channelArr[i5].j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(long j) {
        this.h = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Buffer buffer) {
        a(buffer.c());
        a(buffer.d());
        g(buffer.c());
    }

    public void a(InputStream inputStream) {
        this.j.a(inputStream, false);
    }

    public void a(OutputStream outputStream) {
        this.j.a(outputStream, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr, int i, int i2) {
        try {
            this.j.a(bArr, i, i2);
        } catch (NullPointerException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
    }

    public void b(int i) {
        Session l = l();
        if (!l.d()) {
            throw new JSchException("session is down");
        }
        this.r = i;
        try {
            Buffer buffer = new Buffer(100);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.a((byte) 90);
            buffer.b(this.d);
            buffer.a(this.f3292b);
            buffer.a(this.f);
            buffer.a(this.g);
            l.b(packet);
            int i2 = LoginCallBack.REQUEST_LOGINPROTECT;
            long currentTimeMillis = System.currentTimeMillis();
            long j = i;
            while (a() == -1 && l.d() && i2 > 0) {
                if (j <= 0 || System.currentTimeMillis() - currentTimeMillis <= j) {
                    try {
                        Thread.sleep(50L);
                    } catch (Exception e) {
                    }
                    i2--;
                } else {
                    i2 = 0;
                }
            }
            if (!l.d()) {
                throw new JSchException("session is down");
            }
            if (i2 == 0) {
                throw new JSchException("channel is not opened.");
            }
            if (i()) {
                throw new JSchException("channel is not opened.");
            }
            this.o = true;
            d();
        } catch (Exception e2) {
            this.o = false;
            j();
            if (!(e2 instanceof JSchException)) {
                throw new JSchException(e2.toString(), e2);
            }
            throw ((JSchException) e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Session session) {
        this.u = session;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(byte[] bArr, int i, int i2) {
        try {
            this.j.b(bArr, i, i2);
        } catch (NullPointerException e) {
        }
    }

    public void c() {
        b(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        this.e = i;
    }

    public void d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i) {
        this.f = i;
    }

    public InputStream e() {
        MyPipedInputStream myPipedInputStream = new MyPipedInputStream(32768);
        this.j.a((OutputStream) new PassiveOutputStream(myPipedInputStream), false);
        return myPipedInputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i) {
        this.g = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.m = true;
        try {
            this.j.b();
        } catch (NullPointerException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f(int i) {
        this.h += i;
        if (this.s > 0) {
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (this.l) {
            return;
        }
        this.l = true;
        try {
            Buffer buffer = new Buffer(100);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.a((byte) 96);
            buffer.a(a());
            synchronized (this) {
                if (!this.n) {
                    l().b(packet);
                }
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(int i) {
        this.i = i;
    }

    void h() {
        if (this.n) {
            return;
        }
        this.n = true;
        this.m = true;
        this.l = true;
        try {
            Buffer buffer = new Buffer(100);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.a((byte) 97);
            buffer.a(a());
            synchronized (this) {
                l().b(packet);
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(int i) {
        this.p = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i(int i) {
        try {
            Buffer buffer = new Buffer(100);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.a((byte) 92);
            buffer.a(a());
            buffer.a(i);
            buffer.b(Util.b("open failed"));
            buffer.b(Util.f3353a);
            l().b(packet);
        } catch (Exception e) {
        }
    }

    public boolean i() {
        return this.n;
    }

    public void j() {
        try {
            synchronized (this) {
                if (this.o) {
                    this.o = false;
                    h();
                    this.l = true;
                    this.m = true;
                    this.k = null;
                    try {
                        if (this.j != null) {
                            this.j.c();
                        }
                    } catch (Exception e) {
                    }
                }
            }
        } finally {
            a(this);
        }
    }

    public boolean k() {
        Session session = this.u;
        return session != null && session.d() && this.o;
    }

    public Session l() {
        Session session = this.u;
        if (session == null) {
            throw new JSchException("session is not available");
        }
        return session;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m() {
        Buffer buffer = new Buffer(100);
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 91);
        buffer.a(a());
        buffer.a(this.f3292b);
        buffer.a(this.f);
        buffer.a(this.g);
        l().b(packet);
    }

    @Override // java.lang.Runnable
    public void run() {
    }
}
