package com.b.a.a;

import java.io.EOFException;
import java.io.IOException;
import jcifs.netbios.NbtException;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class s extends t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    static int f113a = 0;
    private static int p;
    private b.b.f j;
    private p k;
    private boolean l;
    private volatile boolean m;
    private Object n;
    private Thread o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(b.a.a.e eVar, b.b.f fVar, b.b.a aVar, i iVar) {
        super(eVar, iVar);
        this.l = false;
        this.m = false;
        this.n = new Object();
        this.i = true;
        this.j = fVar;
        this.e = aVar;
        this.o = new Thread(this, "OBEXServerSessionThread-" + g());
        this.o.setDaemon(true);
    }

    private void a(byte[] bArr) {
        int i;
        com.b.a.a.a("Connect operation");
        if (bArr[3] != 16) {
            throw new IOException("Unsupported client OBEX version " + ((int) bArr[3]));
        }
        if (bArr.length < 7) {
            throw new IOException("Corrupted OBEX data");
        }
        int a2 = v.a(bArr[5], bArr[6]);
        if (a2 < 255) {
            throw new IOException("Invalid MTU " + a2);
        }
        this.d = a2;
        com.b.a.a.a("mtu selected", this.d);
        j c = c();
        j b2 = j.b(bArr, 7);
        if (a(b2)) {
            b(b2, c);
            i = 208;
            try {
                i = this.j.a(b2, c);
            } catch (Throwable th) {
                com.b.a.a.b("onConnect", th);
            }
        } else {
            i = 193;
        }
        a(i, new byte[]{16, 0, v.a(this.f.c), v.b(this.f.c)}, c);
        if (i == 160) {
            this.f115b = true;
        }
    }

    private void a(byte[] bArr, boolean z) {
        int i;
        com.b.a.a.a("Put/Delete operation");
        if (i()) {
            j b2 = j.b(bArr, 3);
            if (!a(b2, this.j)) {
                a(193, (j) null);
                return;
            }
            if (z && !b2.c()) {
                b(b2);
                return;
            }
            com.b.a.a.a("Put operation");
            this.k = new r(this, b2, z);
            try {
                try {
                    i = this.j.a(this.k);
                } catch (Throwable th) {
                    com.b.a.a.b("onPut", th);
                    i = 211;
                }
                if (!this.k.e) {
                    this.k.a(i);
                }
            } finally {
                this.k.e();
                this.k = null;
            }
        }
    }

    private void b(j jVar) {
        int i;
        com.b.a.a.a("Delete operation");
        j c = c();
        b(jVar, c);
        try {
            i = this.j.c(jVar, c);
        } catch (Throwable th) {
            i = FTPReply.SYSTEM_STATUS;
            com.b.a.a.b("onDelete", th);
        }
        a(i, c);
    }

    private void b(byte[] bArr) {
        com.b.a.a.a("Disconnect operation");
        if (i()) {
            j b2 = j.b(bArr, 3);
            j c = c();
            int i = 160;
            try {
                this.j.b(b2, c);
            } catch (Throwable th) {
                i = FTPReply.SYSTEM_STATUS;
                com.b.a.a.b("onDisconnect", th);
            }
            this.f115b = false;
            a(i, c);
        }
    }

    private void b(byte[] bArr, boolean z) {
        int i;
        com.b.a.a.a("Get operation");
        if (i()) {
            j b2 = j.b(bArr, 3);
            if (!a(b2, this.j)) {
                a(193, (j) null);
                return;
            }
            this.k = new q(this, b2, z);
            try {
                try {
                    i = this.j.b(this.k);
                } catch (Throwable th) {
                    com.b.a.a.b("onGet", th);
                    i = 211;
                }
                if (!this.k.e) {
                    this.k.a(i);
                }
            } finally {
                this.k.e();
                this.k = null;
            }
        }
    }

    private void c(byte[] bArr, boolean z) {
        int i;
        com.b.a.a.a("SetPath operation");
        if (i()) {
            if (bArr.length < 5) {
                throw new IOException("Corrupted OBEX data");
            }
            j b2 = j.b(bArr, 5);
            boolean z2 = (bArr[3] & 1) != 0;
            boolean z3 = (bArr[3] & 2) == 0;
            com.b.a.a.a("setPath backup", z2);
            com.b.a.a.a("setPath create", z3);
            if (!a(b2, this.j)) {
                a(193, (j) null);
                return;
            }
            j c = c();
            b(b2, c);
            try {
                i = this.j.a(b2, c, z2, z3);
            } catch (Throwable th) {
                i = FTPReply.SYSTEM_STATUS;
                com.b.a.a.b("onSetPath", th);
            }
            a(i, c);
        }
    }

    private static synchronized int g() {
        int i;
        synchronized (s.class) {
            i = p;
            p = i + 1;
        }
        return i;
    }

    private boolean h() {
        com.b.a.a.a("OBEXServerSession handleRequest");
        try {
            byte[] f = f();
            this.m = true;
            try {
                int i = f[0] & 255;
                boolean z = (i & 128) != 0;
                if (z) {
                    com.b.a.a.a("OBEXServerSession got operation finalPacket");
                }
                switch (i) {
                    case 2:
                    case 130:
                        a(f, z);
                        break;
                    case 3:
                    case 131:
                        b(f, z);
                        break;
                    case 5:
                    case 133:
                        c(f, z);
                        break;
                    case 128:
                        a(f);
                        break;
                    case NbtException.NOT_LISTENING_CALLING /* 129 */:
                        b(f);
                        break;
                    case 255:
                        j();
                        break;
                    default:
                        a(209, (j) null);
                        break;
                }
                this.m = false;
                synchronized (this.n) {
                    this.n.notifyAll();
                }
                return true;
            } finally {
                this.m = false;
            }
        } catch (EOFException e) {
            if (this.f115b) {
                throw e;
            }
            com.b.a.a.a("OBEXServerSession got EOF");
            e();
            return false;
        }
    }

    private boolean i() {
        if (this.f115b) {
            return true;
        }
        a(192, (j) null);
        return false;
    }

    private void j() {
        com.b.a.a.a("Abort operation");
        if (i()) {
            if (this.k == null) {
                a(192, (j) null);
                return;
            }
            this.k.e = true;
            this.k.e();
            this.k = null;
            a(160, (j) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.o.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(j jVar) {
        return a(jVar, this.j);
    }

    @Override // com.b.a.a.t
    public /* bridge */ /* synthetic */ boolean b() {
        return super.b();
    }

    @Override // com.b.a.a.t, b.a.a.a
    public void e() {
        this.l = true;
        while (this.m) {
            synchronized (this.n) {
                try {
                    if (this.m) {
                        this.n.wait(700L);
                    }
                } catch (InterruptedException e) {
                }
                this.m = false;
            }
        }
        if (!b()) {
            com.b.a.a.a("OBEXServerSession close");
            if (this.k != null) {
                this.k.e();
                this.k = null;
            }
        }
        super.e();
    }

    @Override // java.lang.Runnable
    public void run() {
        Thread.yield();
        do {
            try {
                try {
                    if (b() || this.l) {
                        com.b.a.a.a("OBEXServerSession ends");
                        try {
                            super.e();
                            return;
                        } catch (IOException e) {
                            com.b.a.a.a("OBEXServerSession close error", e);
                            return;
                        }
                    }
                } catch (Throwable th) {
                    synchronized (s.class) {
                        f113a++;
                        if (this.f115b) {
                            com.b.a.a.b("OBEXServerSession error", th);
                        } else {
                            com.b.a.a.a("OBEXServerSession error", th);
                        }
                        com.b.a.a.a("OBEXServerSession ends");
                        try {
                            super.e();
                            return;
                        } catch (IOException e2) {
                            com.b.a.a.a("OBEXServerSession close error", e2);
                            return;
                        }
                    }
                }
            } finally {
                com.b.a.a.a("OBEXServerSession ends");
                try {
                    super.e();
                } catch (IOException e3) {
                    com.b.a.a.a("OBEXServerSession close error", e3);
                }
            }
        } while (h());
    }
}
