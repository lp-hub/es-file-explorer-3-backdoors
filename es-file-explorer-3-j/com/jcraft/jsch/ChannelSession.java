package com.jcraft.jsch;

import java.util.Enumeration;
import java.util.Hashtable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChannelSession extends Channel {
    private static byte[] t = Util.b("session");
    protected boolean u = false;
    protected boolean v = false;
    protected Hashtable w = null;
    protected boolean x = false;
    protected String y = "vt100";
    protected int z = 80;
    protected int A = 24;
    protected int B = 640;
    protected int C = 480;
    protected byte[] D = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelSession() {
        this.d = t;
        this.j = new IO();
    }

    private byte[] a(Object obj) {
        return obj instanceof String ? Util.b((String) obj) : (byte[]) obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n() {
        Session l = l();
        if (this.u) {
            new RequestAgentForwarding().a(l, this);
        }
        if (this.v) {
            new RequestX11().a(l, this);
        }
        if (this.x) {
            RequestPtyReq requestPtyReq = new RequestPtyReq();
            requestPtyReq.a(this.y);
            requestPtyReq.a(this.z, this.A, this.B, this.C);
            if (this.D != null) {
                requestPtyReq.a(this.D);
            }
            requestPtyReq.a(l, this);
        }
        if (this.w != null) {
            Enumeration keys = this.w.keys();
            while (keys.hasMoreElements()) {
                Object nextElement = keys.nextElement();
                Object obj = this.w.get(nextElement);
                RequestEnv requestEnv = new RequestEnv();
                requestEnv.a(a(nextElement), a(obj));
                requestEnv.a(l, this);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0047, code lost:
    
        g();
     */
    @Override // com.jcraft.jsch.Channel, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Buffer buffer = new Buffer(this.i);
        Packet packet = new Packet(buffer);
        while (true) {
            try {
                if (k() && this.k != null && this.j != null && this.j.f3312a != null) {
                    int read = this.j.f3312a.read(buffer.f3290b, 14, ((buffer.f3290b.length - 14) - 32) - 20);
                    if (read != 0) {
                        if (read != -1) {
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
                    }
                } else {
                    break;
                }
            } catch (Exception e) {
            }
        }
        Thread thread = this.k;
        if (thread != null) {
            synchronized (thread) {
                thread.notifyAll();
            }
        }
        this.k = null;
    }
}
