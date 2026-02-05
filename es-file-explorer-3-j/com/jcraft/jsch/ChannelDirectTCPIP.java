package com.jcraft.jsch;

import com.baidu.sapi2.callback.LoginCallBack;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class ChannelDirectTCPIP extends Channel {
    String t;
    int u;
    String v = "127.0.0.1";
    int w = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelDirectTCPIP() {
        c(131072);
        d(131072);
        e(16384);
    }

    @Override // com.jcraft.jsch.Channel
    public void a(InputStream inputStream) {
        this.j.a(inputStream);
    }

    @Override // com.jcraft.jsch.Channel
    public void a(OutputStream outputStream) {
        this.j.a(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.jcraft.jsch.Channel
    public void b() {
        try {
            this.j = new IO();
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    public void b(String str) {
        this.t = str;
    }

    @Override // com.jcraft.jsch.Channel
    public void c() {
        try {
            Session l = l();
            if (!l.d()) {
                throw new JSchException("session is down");
            }
            Buffer buffer = new Buffer(FTPReply.FILE_STATUS_OK);
            Packet packet = new Packet(buffer);
            packet.a();
            buffer.a((byte) 90);
            buffer.b(Util.b("direct-tcpip"));
            buffer.a(this.f3292b);
            buffer.a(this.f);
            buffer.a(this.g);
            buffer.b(Util.b(this.t));
            buffer.a(this.u);
            buffer.b(Util.b(this.v));
            buffer.a(this.w);
            l.b(packet);
            int i = LoginCallBack.REQUEST_LOGINPROTECT;
            while (a() == -1 && l.d() && i > 0 && !this.m) {
                try {
                    Thread.sleep(50L);
                    i--;
                } catch (Exception e) {
                }
            }
            if (!l.d()) {
                throw new JSchException("session is down");
            }
            if (i == 0 || this.m) {
                throw new JSchException("channel is not opened.");
            }
            this.o = true;
            if (this.j.f3312a != null) {
                this.k = new Thread(this);
                this.k.setName("DirectTCPIP thread " + l.g());
                if (l.j) {
                    this.k.setDaemon(l.j);
                }
                this.k.start();
            }
        } catch (Exception e2) {
            this.j.c();
            this.j = null;
            Channel.a(this);
            if (e2 instanceof JSchException) {
                throw ((JSchException) e2);
            }
        }
    }

    public void c(String str) {
        this.v = str;
    }

    public void j(int i) {
        this.u = i;
    }

    public void k(int i) {
        this.w = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        g();
     */
    @Override // com.jcraft.jsch.Channel, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Buffer buffer = new Buffer(this.i);
        Packet packet = new Packet(buffer);
        try {
            Session l = l();
            while (true) {
                if (k() && this.k != null && this.j != null && this.j.f3312a != null) {
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
                        l.a(packet, this, read);
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
        } catch (Exception e) {
        }
        j();
    }
}
